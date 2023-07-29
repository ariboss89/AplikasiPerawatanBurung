using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AplikasiBurung.SD;

namespace AplikasiBurung.Activities
{
	[Activity (Label = "DetailBurungActivity")]			
	public class DetailBurungActivity : Activity
	{
		private TextView txtNamaBurung, txtInformasi;
		private ImageView imgBack, imgDetailBurung;

		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			SetContentView(Resource.Layout.DetailBurungLayout);

			txtNamaBurung = FindViewById<TextView>(Resource.Id.txtNamaBurung);
			txtInformasi = FindViewById<TextView>(Resource.Id.txtInformasi);
			imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
            imgDetailBurung = FindViewById<ImageView>(Resource.Id.imgDetailBurung);

            if (StaticDetails.Image != null)
            {
                byte[] imageArray = StaticDetails.Image;
                Android.Graphics.Bitmap bitmap = BitmapFactory.DecodeByteArray(imageArray, 0, imageArray.Length);
                //Android.Graphics.Bitmap bMapScaled = Android.Graphics.Bitmap.CreateScaledBitmap(bitmap, 80, 80, true);
                imgDetailBurung.SetImageBitmap(bitmap);
            }

            txtNamaBurung.Text = StaticDetails.NamaBurung;
            txtInformasi.Text = StaticDetails.Informasi;

            imgBack.Click += ImgBack_Click;
        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(this, typeof(InfromasiBurungActivity));
            //intent.PutExtra("Id", StaticInformation.type);
            StartActivity(intent);
        }

        public override void OnBackPressed()
        {

        }

    }
}

