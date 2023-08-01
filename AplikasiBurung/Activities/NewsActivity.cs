
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Webkit;
using Android.Widget;

namespace AplikasiBurung.Activities
{
	[Activity (Label = "NewsActivity")]			
	public class NewsActivity : Activity
	{
		WebView webView;
        ImageView imgBack;

        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			SetContentView(Resource.Layout.NewsLayout);

            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
			webView = FindViewById<WebView>(Resource.Id.webView1);

            webView = (WebView)FindViewById(Resource.Id.webView1);
            webView.Settings.JavaScriptEnabled = true;
            //webView.Settings.BuiltInZoomControls = true;
            webView.SetWebViewClient(new HybridWebview());
            webView.Settings.UseWideViewPort = false;

            string url = "https://burungnews.com/";

            webView.LoadUrl(url);

            imgBack.Click += ImgBack_Click;


        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intentx = new Intent(Application.Context, typeof(MainActivity));
            intentx.SetFlags(ActivityFlags.NewTask);
            StartActivity(intentx);
        }
    }
}

