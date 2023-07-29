using System;
using Android.App;
using Android.Graphics;
using Android.Views;
using Android.Widget;
using AplikasiBurung.Models;
using System.Collections.Generic;
using Android.Content;
using Android.Net;
using Android.OS;
using static Android.Net.Http.SslCertificate;
using AplikasiBurung.SD;
using AplikasiBurung.Data;
using AplikasiBurung.Activities;

namespace AplikasiBurung.ListViews
{
    public class Jadwal_ListView : BaseAdapter<Penjadwalan>
    {
        TextView txtId, txtNama, txtTanggal, txtWaktu, txtStatus;
        ImageView imgDelete;

        public Jadwal_ListView(Activity activity, int listViewRow)
        {

        }

        public List<Penjadwalan> listJadwal;
        private Context mContext;
        private Activity activity;



        public Jadwal_ListView(Context context, List<Penjadwalan> items)
        {
            listJadwal = items;
            mContext = context;
        }

        public override int Count
        {
            get
            {
                try
                {
                    return listJadwal.Count;
                }
                catch (Exception)
                {
                    Toast.MakeText(Application.Context, "Can't connect to server !", ToastLength.Long).Show();

                    return 0;
                }
            }
        }

        public override Penjadwalan this[int position]
        {
            get
            {
                return listJadwal[position];
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
                row = LayoutInflater.From(mContext).Inflate(Resource.Layout.JadwalListView_Layout, null, false);
            }

            txtId = row.FindViewById<TextView>(Resource.Id.txtId);
            txtNama = row.FindViewById<TextView>(Resource.Id.txtNama);
            txtTanggal = row.FindViewById<TextView>(Resource.Id.txtTanggal);
            txtWaktu = row.FindViewById<TextView>(Resource.Id.txtWaktu);
            imgDelete = row.FindViewById<ImageView>(Resource.Id.imgDelete);
            txtStatus = row.FindViewById<TextView>(Resource.Id.txtStatus);

            StaticDetails.IdJadwal = listJadwal[position].Id;
            txtId.Text = listJadwal[position].Id.ToString();
            txtNama.Text = listJadwal[position].NamaJadwal;
            txtTanggal.Text = (listJadwal[position].Tanggal).ToString("yyyy-MM-dd");
            txtWaktu.Text = (listJadwal[position].Waktu).ToString("HH:mm");
            txtStatus.Text = listJadwal[position].Status;

            imgDelete.SetOnClickListener(new ButtonClickListener(this.activity));

            return row;
        }

        private class ButtonClickListener : Java.Lang.Object, View.IOnClickListener
        {
            private Context context;
            private Activity activity;
            TextView txtId, txtNama, txtTanggal, txtWaktu;
            ImageView imgDelete;
            
            private long LastButtonClickTime;
            Penjadwalan jadwal = new Penjadwalan();
            
            Context mContext = Android.App.Application.Context;
            Database db = new Database();

            public ButtonClickListener(Activity activity)
            {
                if (SystemClock.ElapsedRealtime() - LastButtonClickTime < 1000) return;
                LastButtonClickTime = SystemClock.ElapsedRealtime();

                this.activity = activity;
            }

            public async void OnClick(View v)
            {
                txtId = v.FindViewById<TextView>(Resource.Id.txtId);
                txtNama = v.FindViewById<TextView>(Resource.Id.edtNamaJadwal);
                txtTanggal = v.FindViewById<EditText>(Resource.Id.edtTanggal);
                txtWaktu = v.FindViewById<EditText>(Resource.Id.edtWaktu);
                this.context = v.Context;

                try
                {
                    if (v == null)
                    {
                        v = LayoutInflater.From(Application.Context).Inflate(Resource.Layout.JadwalListView_Layout, null, false);

                    }


                    try
                    {
                       
                        jadwal = new Penjadwalan();

                        jadwal.Id = StaticDetails.IdJadwal;

                        db.removeTable(jadwal);

                        Intent intent = new Intent(Application.Context, typeof(MainActivity));
                        //intent.RemoveExtra("DataId");
                        intent.SetFlags(ActivityFlags.NewTask);
                        //intent.PutExtra("DataId", "2131230901");
                        Application.Context.StartActivity(intent);



                    }
                    catch (Exception x)
                    {

                        Toast.MakeText(Application.Context, "Remove Data Failed !", ToastLength.Short).Show();
                    }

                }
                catch (Exception x)
                {
                    Toast.MakeText(Application.Context, x.ToString(), ToastLength.Long).Show();
                }
            }
        }
    }
}

