using System;
using Android.App;
using Android.Graphics;
using Android.Views;
using Android.Widget;
using System.Collections.Generic;
using AplikasiBurung.Models;
using Android.Content;

namespace AplikasiBurung.Adapters
{
    public class Burung_ListView : BaseAdapter<Burung>
    {
        TextView txtId, txtNamaBurung, txtInformasi;
        ImageView imgBurung;

        public Burung_ListView(Activity activity, int listViewRow)
        {

        }

        public List<Burung> listBurung;
        private Context mContext;
        private Activity activity;



        public Burung_ListView(Context context, List<Burung> items)
        {
            listBurung = items;
            mContext = context;
        }

        public override int Count
        {
            get
            {
                try
                {
                    return listBurung.Count;
                }
                catch (Exception)
                {
                    Toast.MakeText(Application.Context, "Can't connect to server !", ToastLength.Long).Show();

                    return 0;
                }
            }
        }

        public override Burung this[int position]
        {
            get
            {
                return listBurung[position];
            }
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            View row = convertView;
            if (row == null)
            {
                row = LayoutInflater.From(mContext).Inflate(Resource.Layout.BurungListView_Layout, null, false);
            }

            txtId = row.FindViewById<TextView>(Resource.Id.txtId);
            txtNamaBurung = row.FindViewById<TextView>(Resource.Id.txtNama);
            txtInformasi = row.FindViewById<TextView>(Resource.Id.txtInformasi);
            imgBurung = row.FindViewById<ImageView>(Resource.Id.imgBurung);

            txtId.Text = listBurung[position].Id.ToString();
            txtNamaBurung.Text = listBurung[position].NamaBurung;
            txtInformasi.Text = Convert.ToString(listBurung[position].Informasi);
           
            var img = listBurung[position].Image;

            if (img != null)
            {
                byte[] imageArray = listBurung[position].Image;
                Android.Graphics.Bitmap bitmap = BitmapFactory.DecodeByteArray(imageArray, 0, imageArray.Length);
                //Android.Graphics.Bitmap bMapScaled = Android.Graphics.Bitmap.CreateScaledBitmap(bitmap, 80, 80, true);
                imgBurung.SetImageBitmap(bitmap);
            }

            return row;
        }
    }
}

