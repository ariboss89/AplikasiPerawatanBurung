using System;
using Android.App;
using Android.Content;
using Android.Media;
using Android.OS;
using Android.Widget;
using AndroidX.Core.App;
using AplikasiBurung.Activities;
using Firebase.Messaging;

namespace AplikasiBurung.Services
{
    [Obsolete]
    [Service(Exported =true)]
    [IntentFilter(new String[] { "com.google.firebase.MESSAGING_EVENT" })]
    public class MyFirebaseMessagingService:FirebaseMessagingService
	{
        internal static readonly string CHANNEL_ID = "my_notification_channel";
        internal static readonly int NOTIFICATION_ID = 100;

        public override void OnMessageReceived(RemoteMessage message)
        {
            base.OnMessageReceived(message);
            CreateNotificationChannel();
            SendNotification(message.GetNotification().Body);
        }

        void CreateNotificationChannel()
        {
            if (Build.VERSION.SdkInt < BuildVersionCodes.O)
            {
                return;
            }

            var channel = new NotificationChannel(CHANNEL_ID, "FCM Notifications", NotificationImportance.Default)
            {
                Description = "Firebase Cloud Messages appear in this channel"
            };

            var notificationManager = (NotificationManager)GetSystemService(Android.Content.Context.NotificationService);
            notificationManager.CreateNotificationChannel(channel);
        }

        private void SendNotification(string body)
        {

            var intent = new Intent(this, typeof(MainActivity));
            intent.AddFlags(ActivityFlags.ClearTop);
            var pendingIntent = PendingIntent.GetActivity(this, 0, intent, PendingIntentFlags.Mutable);

            var defaultSoundUri = RingtoneManager.GetDefaultUri(RingtoneType.Notification);
            var notificationBuilder = new NotificationCompat.Builder(this, CHANNEL_ID)
                .SetSmallIcon(Resource.Drawable.calendar)
                .SetContentTitle("WAKTUNYA MELAKSANAKAN JADWAL !!!")
                .SetContentText(body)
                .SetAutoCancel(true)
                .SetSound(defaultSoundUri)
                .SetContentIntent(pendingIntent);

            //var notificationManager = NotificationManager.FromContext(this);
            //notificationManager.Notify(0, notificationBuilder.Build());

            Notification notification = notificationBuilder.Build();

            // Get the notification manager:
            NotificationManager notificationManager =
                GetSystemService(Context.NotificationService) as NotificationManager;

            notificationManager.Notify(NOTIFICATION_ID, notification);
        }
    }
}

