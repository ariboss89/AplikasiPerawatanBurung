
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
using AplikasiBurung.Data;
using AplikasiBurung.ListViews;
using AplikasiBurung.Models;

namespace AplikasiBurung.Activities
{
	[Activity (Label = "HistoryActivity")]			
	public class HistoryActivity : Activity
	{
		ImageView imgBack;

        History_ListView jadwalListView;
        List<Penjadwalan> listJadwal = new List<Penjadwalan>();
        Database db = new Database();

        ListView lvHistory;

        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			SetContentView(Resource.Layout.HistoryLayout);

            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
            lvHistory = FindViewById<ListView>(Resource.Id.lvHistory);

            imgBack.Click += ImgBack_Click1;

            listJadwal = db.selectTable();

            var d = DateTime.Now;

            var startDate = new DateTime(d.Year, d.Month, d.Day, 0, 0, 0);

            var list = listJadwal.Where(x => x.Status == "SELESAI").ToList();

            if (list != null)
            {
                jadwalListView = new History_ListView(this, list);
                lvHistory.Adapter = jadwalListView;
            }

        }

        private void ImgBack_Click1(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }
    }
}

