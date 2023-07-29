using System;
using Android.App;
using Android.Nfc;
using Android.Util;
using Firebase.Iid;

namespace AplikasiBurung.Services
{
    [Obsolete]
    [Service(Exported =true)]
    [IntentFilter(new String[] { "com.google.firebase.INSTANCE_ID_EVENT" })]
    public class FCMService:FirebaseInstanceIdService
	{
        [Obsolete]
        public override void OnTokenRefresh()
        {
            base.OnTokenRefresh();
            var refreshedToken = FirebaseInstanceId.Instance.Token;
            SendRegistrationToServer(refreshedToken);
            Android.Util.Log.Debug("Refreshed Token:", FirebaseInstanceId.Instance.Token);

            SendRegistrationToServer(refreshedToken);
        }

        void SendRegistrationToServer(string token) { }
    }
}

