using System;
using Android.App;
using Android.Runtime;
using Android.Views;
using Android.Webkit;
using Android.Widget;
using Java.Util.Concurrent.Atomic;

namespace AplikasiBurung.Activities
{
    public class HybridWebview:WebViewClient
    {
        private GestureDetector gestureDetector;
        private AtomicBoolean mPreventAction = new AtomicBoolean(false);
        private AtomicLong mPreventActionTime = new AtomicLong(0);

        [Obsolete]
        public override bool ShouldOverrideUrlLoading(WebView view, string url)
        {
            view.LoadUrl(url);
            return true;
        }
        public override void OnPageStarted(WebView view, string url, Android.Graphics.Bitmap favicon)
        {
            base.OnPageStarted(view, url, favicon);
        }
        public override void OnPageFinished(WebView view, string url)
        {
            base.OnPageFinished(view, url);
        }

        [Obsolete]
        public override void OnReceivedError(WebView view, [GeneratedEnum] ClientError errorCode, string description, string failingUrl)
        {
            base.OnReceivedError(view, errorCode, description, failingUrl);
        }

        private void Control_Download(object sender, Android.Webkit.DownloadEventArgs e)
        {
            var url = e.Url;
            DownloadManager.Request request = new DownloadManager.Request(Android.Net.Uri.Parse(url));
            request.AllowScanningByMediaScanner();
            request.SetNotificationVisibility(DownloadVisibility.VisibleNotifyCompleted);
            request.SetDestinationInExternalPublicDir(Android.OS.Environment.DirectoryDownloads, "CPPPrimer");
            DownloadManager dm = (DownloadManager)Android.App.Application.Context.GetSystemService("download");
            dm.Enqueue(request);

            Toast.MakeText(Android.App.Application.Context, "Downloading File", ToastLength.Long).Show();
        }
    }
}

