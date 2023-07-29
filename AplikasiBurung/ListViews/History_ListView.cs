using System;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using System.Collections.Generic;
using Android.Widget;
using AplikasiBurung.Activities;
using AplikasiBurung.Data;
using AplikasiBurung.Models;
using AplikasiBurung.SD;

namespace AplikasiBurung.ListViews
{
    public class History_ListView: BaseAdapter<Penjadwalan>
    {
        TextView txtId, txtNama, txtTanggal, txtWaktu, txtStatus;
        
        public History_ListView(Activity activity, int listViewRow)
        {

        }

        public List<Penjadwalan> listJadwal;
        private Context mContext;
        private Activity activity;

        public History_ListView(Context context, List<Penjadwalan> items)
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
                row = LayoutInflater.From(mContext).Inflate(Resource.Layout.HistoryListView_Layout, null, false);
            }

            txtId = row.FindViewById<TextView>(Resource.Id.txtId);
            txtNama = row.FindViewById<TextView>(Resource.Id.txtNama);
            txtTanggal = row.FindViewById<TextView>(Resource.Id.txtTanggal);
            txtWaktu = row.FindViewById<TextView>(Resource.Id.txtWaktu);
            txtStatus = row.FindViewById<TextView>(Resource.Id.txtStatus);

            txtId.Text = listJadwal[position].Id.ToString();
            txtNama.Text = listJadwal[position].NamaJadwal;
            txtTanggal.Text = (listJadwal[position].Tanggal).ToString("yyyy-MM-dd");
            txtWaktu.Text = (listJadwal[position].Waktu).ToString("HH:mm");
            txtStatus.Text = listJadwal[position].Status;

            return row;
        }
    }
}

