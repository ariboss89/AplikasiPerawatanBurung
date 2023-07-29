
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace AplikasiBurung.Activities
{
    [Activity(Label = "MainInformasiActivity")]
    public class MainInformasiActivity : Activity
    {
        ImageView imgBack;
        RelativeLayout relPerawatan, relPakan, relJenis;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.MenuInformasi);

            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
            relJenis = FindViewById<RelativeLayout>(Resource.Id.relJenis);
            relPakan = FindViewById<RelativeLayout>(Resource.Id.relPakan);
            relPerawatan = FindViewById<RelativeLayout>(Resource.Id.relPerawatan);

            imgBack.Click += ImgBack_Click;
            relJenis.Click += RelJenis_Click;
            relPakan.Click += RelPakan_Click;
            relPerawatan.Click += RelPerawatan_Click;

            imgBack.Click += ImgBack_Click1;
        }

        private void ImgBack_Click1(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void RelPerawatan_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(PerawatanInformasiActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void RelPakan_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(PakanBurungActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void RelJenis_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(InfromasiBurungActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        public override void OnBackPressed()
        {

        }
    }
}

