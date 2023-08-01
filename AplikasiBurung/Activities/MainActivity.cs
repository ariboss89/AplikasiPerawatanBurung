
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.Icu.Text;
using Android.Icu.Util;
using Android.Media;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AplikasiBurung.Adapters;
using AplikasiBurung.Data;
using AplikasiBurung.Helper;
using AplikasiBurung.ListViews;
using AplikasiBurung.Models;
using AplikasiBurung.SD;
using AplikasiBurung.Services;
using Firebase;
using Firebase.Iid;
using Firebase.Messaging;
using Google.Android.Material.FloatingActionButton;
using Java.Sql;
using Java.Util;

namespace AplikasiBurung.Activities
{
    [Activity(Label = "Perawatan Burung", MainLauncher = true)]
    public class MainActivity : Activity
    {

        Jadwal_ListView jadwalListView;
        List<Penjadwalan> listJadwal = new List<Penjadwalan>();
        ListView lvJadwal;
        Database db = new Database();
        FloatingActionButton btnJadwal, btnInfo, btnHistory, btnNews;
        [Obsolete]
        AppPreferences apps = new AppPreferences(Application.Context);

        [Obsolete]
        protected override void OnCreate(Bundle savedInstanceState)
        {

            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.MainLayout);

            lvJadwal = FindViewById<ListView>(Resource.Id.lvJadwal);

            lvJadwal.ItemClick += LvJadwal_ItemClick;

            btnJadwal = FindViewById<FloatingActionButton>(Resource.Id.fabJadwal);
            btnInfo = FindViewById<FloatingActionButton>(Resource.Id.fabInfo);
            btnHistory = FindViewById<FloatingActionButton>(Resource.Id.fabHistory);
            btnNews = FindViewById<FloatingActionButton>(Resource.Id.fabNews);

            btnJadwal.Click += BtnJadwal_Click;
            btnInfo.Click += BtnInfo_Click;
            btnHistory.Click += BtnHistory_Click;
            btnNews.Click += BtnNews_Click;

            try
            {
                listJadwal = db.selectTable();

                var list = listJadwal.Where(x => x.Status != "SELESAI").ToList();

                jadwalListView = new Jadwal_ListView(this, list);
                lvJadwal.Adapter = jadwalListView;

            }
            catch (Exception e)
            {
                //Toast.MakeText(this, e.ToString(), ToastLength.Long).Show();
            }

            //if (!GetString(Resource.String.google_app_id).Equals("1:93133798662:android:3f48a919e6fa4a8c70f287"))
            //{
            //    throw new System.Exception("Invalid Json File");
            //}

            try
            {
                var countAlarm = listJadwal.Where(x => x.Status == "SET").ToList();

                if (countAlarm.Count != 0)
                {
                    try
                    {
                        SetAlarm(countAlarm);

                        //SetAlarmOy(5);

                        //Task.Run(() =>
                        //{
                        //    try
                        //    {
                        //        var instanceId = FirebaseInstanceId.Instance;
                        //        instanceId.DeleteInstanceId();
                        //        Android.Util.Log.Debug("TAG", "{0}  {1}", instanceId.Token, instanceId.GetToken(GetString(Resource.String.gcm_defaultSenderId), FirebaseMessaging.InstanceIdScope));

                        //        Intent intent = new Intent();
                        //        var aaa = intent.GetStringExtra("Id");

                        //        //while(true)
                        //        //{
                        //        //    listJadwal = db.selectTable().Where(x => x.Status != "SELESAI").ToList();
                        //        //    jadwalListView = new Jadwal_ListView(this, listJadwal);
                        //        //    jadwalListView.NotifyDataSetChanged();
                        //        //    lvJadwal.Adapter = jadwalListView;
                        //        //    continue;
                        //        //}

                        //    }
                        //    catch (Exception e)
                        //    {
                        //        Toast.MakeText(this, e.ToString(), ToastLength.Long).Show();
                        //    }
                        //});
                    }
                    catch (Exception x)
                    {
                        Toast.MakeText(this, x.ToString(), ToastLength.Long).Show();
                    }
                }
            }
            catch (Exception e)
            {
            }

           // Thread ctThread = new Thread(LoadData);

        }

        private void BtnNews_Click(object sender, EventArgs e)
        {
            Intent intentx = new Intent(Application.Context, typeof(NewsActivity));
            intentx.SetFlags(ActivityFlags.NewTask);
            StartActivity(intentx);
        }

        //private void LoadData()
        //{
        //    listJadwal = db.selectTable().Where(x => x.Status != "SELESAI").ToList();

        //    while ()
        //    {
        //        listJadwal = db.selectTable().Where(x => x.Status != "SELESAI").ToList();
        //        jadwalListView = new Jadwal_ListView(this, listJadwal);
        //        jadwalListView.NotifyDataSetChanged();
        //        lvJadwal.Adapter = jadwalListView;
        //        continue;
        //    }
        //}

        private void BtnHistory_Click(object sender, EventArgs e)
        {
            Intent intentx = new Intent(Application.Context, typeof(HistoryActivity));
            intentx.SetFlags(ActivityFlags.NewTask);
            StartActivity(intentx);
        }

        public override void OnBackPressed()
        {

        }

        private void SetAlarmOy(int number)
        {
            var simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
            var am = GetSystemService(Context.AlarmService) as AlarmManager;
            var calendar = Android.Icu.Util.Calendar.Instance;
            var calendarList = new List<Android.Icu.Util.Calendar>();
            for (var i = 0; i < number; i++)
                calendarList.Add(calendar);

            var textTimer = new StringBuilder();
            foreach (var calendarItem in calendarList)
            {
                calendarItem.Add(Android.Icu.Util.CalendarField.Second, 10);

                var man = calendarItem.TimeInMillis;

                var requestCode = (int)calendarItem.TimeInMillis / 1000;
                var intent = new Intent(this, typeof(MyAlarmReceiver));
                intent.PutExtra("REQUEST_CODE", requestCode);
                intent.AddFlags(ActivityFlags.IncludeStoppedPackages);
                intent.AddFlags(ActivityFlags.ReceiverForeground);
                var pi = PendingIntent.GetBroadcast(this, requestCode, intent, PendingIntentFlags.Mutable);

                if (Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.M)
                    am.SetExactAndAllowWhileIdle(AlarmType.RtcWakeup, calendarItem.TimeInMillis, pi);
                else
                    am.SetExact(AlarmType.RtcWakeup, calendarItem.TimeInMillis, pi);

                textTimer.Append(simpleDateFormat.Format(calendarItem.TimeInMillis))
                    .Append("\n");

                Toast.MakeText(this, "Alarm has been set", ToastLength.Short).Show();
            }

        }

        [Obsolete]
        private void SetAlarm(List<Penjadwalan> listJadwal)
        {
            try
            {
                var simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                var am = GetSystemService(Context.AlarmService) as AlarmManager;
                var cal = Java.Util.Calendar.Instance;
                var textTimer = new StringBuilder();

                var list = listJadwal.Where(x => x.Status == "SET").ToList();

                var count = list.Count();

                if (count != 0)
                {
                    for (int a = 0; a < list.Count; a++)
                    {
                        var waktu = list[a].Waktu;
                        var body = list[a].NamaJadwal;
                        var Id = list[a].Id;

                        //StaticDetails.BodyNotification = body;

                        var hasilConvert = Convert.ToDateTime(waktu);

                        var currentTime = DateTime.Now;

                        TimeSpan duration = DateTime.Parse(waktu.ToString()).Subtract(DateTime.Parse(currentTime.ToString()));
                        var hasilAkhir = duration.TotalMilliseconds;
                        var foo = DateTime.Now.Add(TimeSpan.FromMilliseconds(hasilAkhir));

                        long miliSecon = new DateTimeOffset(foo).ToUnixTimeMilliseconds();

                        ISharedPreferences prefs = Application.Context.GetSharedPreferences("USER_DATA", FileCreationMode.Private);
                        ISharedPreferencesEditor editor = prefs.Edit();

                        //key value pairs go here
                        editor.PutString(Id.ToString(), body);

                        //apply the edit
                        editor.Apply();

                        var requestCode = (int)hasilAkhir;
                        var intent = new Intent(this, typeof(MyAlarmReceiver));
                        intent.PutExtra("REQUEST_CODE", miliSecon);
                        intent.AddFlags(ActivityFlags.IncludeStoppedPackages);
                        intent.AddFlags(ActivityFlags.ReceiverForeground);
                        var pi = PendingIntent.GetBroadcast(this, requestCode, intent, PendingIntentFlags.Mutable);

                        if (Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.M)
                            am.SetExactAndAllowWhileIdle(AlarmType.RtcWakeup, miliSecon, pi);
                        else
                            am.SetExact(AlarmType.RtcWakeup, miliSecon, pi);

                        textTimer.Append(simpleDateFormat.Format(miliSecon))
                            .Append("\n");

                        Toast.MakeText(this, "Schedule has been set", ToastLength.Short).Show();

                        Penjadwalan pnj = new Penjadwalan()
                        {
                            Id = list[a].Id,
                            Status = "TRIGGERED"
                        };

                        db.updateTable(pnj);

                    }

                    Intent intentx = new Intent(Application.Context, typeof(MainActivity));
                    intentx.SetFlags(ActivityFlags.NewTask);
                    StartActivity(intentx);
                }
                else
                {

                }
            }catch(Exception x)
            {

            }

        }

        private void BtnInfo_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainInformasiActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void BtnJadwal_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(TambahJadwalActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void LvJadwal_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            listJadwal = db.selectTable();

            var data = listJadwal[e.Position];

            StaticDetails.IdJadwal = data.Id;

        }

    }
}

