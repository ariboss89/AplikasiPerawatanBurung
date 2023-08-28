using System;
using System.Collections.Generic;
using System.Linq;
using Android.App;
using Android.Content;
using Android.Media;
using Android.OS;
using Android.Widget;
using AndroidX.Core.App;
using AplikasiBurung.Activities;
using AplikasiBurung.Data;
using AplikasiBurung.Helper;
using AplikasiBurung.Models;
using AplikasiBurung.SD;

namespace AplikasiBurung.Services
{
	[BroadcastReceiver]
	public class MyAlarmReceiver:BroadcastReceiver
	{
        internal static readonly string CHANNEL_ID = "my_notification_channel";
        internal static readonly int NOTIFICATION_ID = 100;

        List<Penjadwalan> listJadwal = new List<Penjadwalan>();
        Database db = new Database();

        AppPreferences apps = new AppPreferences(Application.Context);

        public override void OnReceive(Context context, Intent intent)
        {
            var requestCode = intent.GetIntExtra("REQUEST_CODE", -1);
            //Toast.MakeText(context, "Alarm fired with code !!", ToastLength.Short).Show();

            ISharedPreferences prefs = Application.Context.GetSharedPreferences("USER_DATA", FileCreationMode.Private);
            ISharedPreferencesEditor editor = prefs.Edit();

            listJadwal = db.selectTable();

            var d = DateTime.Now;

            var startDate = new DateTime(d.Year, d.Month, d.Day, d.Hour, d.Minute, 0);

            var manise = listJadwal.Where(x => x.Status == "TRIGGERED" && x.Waktu== startDate).ToList();
            //setelah di simpan datanya di dalam shared, kemudian harus di looping dlu

            //foreach(var a in listJadwal)
            //{
            //var dataBody = prefs.GetString(a.Id.ToString(), null);

            foreach (var a in manise)
            {
                var dataBody = prefs.GetString(a.Id.ToString(), null);
                //var dataBody = prefs.GetString(manise[0].Id.ToString(), null);
                if (dataBody != "" || dataBody != null)
                {
                    CreateNotificationChannel(manise[0].Id.ToString());
                    SendNotification(manise[0].Id.ToString(), dataBody, manise[0].Burung);

                    dataBody = null;

                    Penjadwalan pnj = new Penjadwalan()
                    {
                        Id = manise[0].Id,
                        Status = "SELESAI"
                    };

                    db.updateTable(pnj);
                }

                Intent intentx = new Intent(Application.Context, typeof(HistoryActivity));
                intentx.SetFlags(ActivityFlags.NewTask);
                Application.Context.StartActivity(intentx);

            }
        }

        void CreateNotificationChannel(string channelId)
        {
            if (Build.VERSION.SdkInt < BuildVersionCodes.O)
            {
                return;
            }

            var channel = new NotificationChannel(channelId, "FCM Notifications", NotificationImportance.Default)
            {
                Description = "Firebase Cloud Messages appear in this channel"
            };

            var notificationManager = (NotificationManager)Application.Context.GetSystemService(Android.Content.Context.NotificationService);
            notificationManager.CreateNotificationChannel(channel);
        }

        private void SendNotification(string Id, string body, string burung)
        {
            var intent = new Intent(Application.Context, typeof(MainActivity));
            intent.PutExtra("Id", Id);
            intent.AddFlags(ActivityFlags.ClearTop);
            var pendingIntent = PendingIntent.GetActivity(Application.Context, 0, intent, PendingIntentFlags.Mutable);

            var defaultSoundUri = RingtoneManager.GetDefaultUri(RingtoneType.Notification);
            var notificationBuilder = new NotificationCompat.Builder(Application.Context, Id)
                .SetSmallIcon(Resource.Drawable.calendar)
                .SetContentTitle("JADWAL BURUNG "+ burung.ToUpper()+" !!!")
                .SetContentText(body)
                .SetAutoCancel(true)
                .SetSound(defaultSoundUri)
                .SetContentIntent(pendingIntent);

            //var notificationManager = NotificationManager.FromContext(this);
            //notificationManager.Notify(0, notificationBuilder.Build());

            StaticDetails.BodyNotification = null;

            Notification notification = notificationBuilder.Build();

            apps.deleteAccessKey();

            // Get the notification manager:
            NotificationManager notificationManager =
                Application.Context.GetSystemService(Context.NotificationService) as NotificationManager;

            notificationManager.Notify(NOTIFICATION_ID, notification);
        }
    }
}

