using System;
using Android.App;
using Android.Graphics;
using Android.Views;
using Android.Widget;
using AplikasiBurung.Models;
using System.Collections.Generic;
using Android.Content;

namespace AplikasiBurung.ListViews
{
    public class DataBurung_ListView : BaseAdapter<DataBurung>
    {
        TextView txtId, txtNamaBurung, txtTanggal, txtUsia;

        public DataBurung_ListView(Activity activity, int listViewRow)
        {

        }

        public List<DataBurung> listBurung;
        private Context mContext;
        private Activity activity;



        public DataBurung_ListView(Context context, List<DataBurung> items)
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

        public override DataBurung this[int position]
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
                row = LayoutInflater.From(mContext).Inflate(Resource.Layout.DataBurungListView_Layout, null, false);
            }

            txtId = row.FindViewById<TextView>(Resource.Id.txtId);
            txtNamaBurung = row.FindViewById<TextView>(Resource.Id.txtNama);
            txtTanggal = row.FindViewById<TextView>(Resource.Id.txtTanggal);
            txtUsia = row.FindViewById<TextView>(Resource.Id.txtUsiaAwal);

            txtId.Text = listBurung[position].Id.ToString();
            txtNamaBurung.Text = listBurung[position].Nama;
            txtTanggal.Text = (listBurung[position].TanggalMasuk).ToString("yyyy-MM-dd");
            txtUsia.Text = listBurung[position].UsiaAwal.ToString();

            return row;
        }
    }
}

