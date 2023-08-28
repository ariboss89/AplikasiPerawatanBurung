
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
using AplikasiBurung.SD;

namespace AplikasiBurung.Activities
{
    [Activity(Label = "BurungActivity")]
    public class BurungActivity : Activity
    {
        ListView lvBurung;
        EditText edtNamaBurung, edtUsiaBurung, edtTanggal;
        Button btnSetTanggal, btnTambah;
        Db_Burung db = new Db_Burung();
        List<DataBurung> listBurung = new List<DataBurung>();
        DataBurung_ListView dataListView;
        ImageView imgBack;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.BurungLayout);

            lvBurung = FindViewById<ListView>(Resource.Id.lvBurung);
            edtNamaBurung = FindViewById<EditText>(Resource.Id.edtNamaBurung);
            edtTanggal = FindViewById<EditText>(Resource.Id.edtTanggal);
            edtUsiaBurung = FindViewById<EditText>(Resource.Id.edtUsiaBurung);
            btnSetTanggal = FindViewById<Button>(Resource.Id.btnSetTanggal);
            btnTambah = FindViewById<Button>(Resource.Id.btnTambah);
            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);

            db.createDatabase();

            btnTambah.Click += BtnTambah_Click;

            listBurung = db.selectTable();

            btnSetTanggal.Click += BtnSetTanggal_Click;

            dataListView = new DataBurung_ListView(this, listBurung);
            lvBurung.Adapter = dataListView;

            imgBack.Click += ImgBack_Click;

            lvBurung.ItemClick += LvBurung_ItemClick;
        }

        private void LvBurung_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            var data = dataListView[e.Position];

            StaticDetails.IdBurung = data.Id;
            StaticDetails.NamaBurung = data.Nama;
            StaticDetails.TanggalMasuk = data.TanggalMasuk;
            StaticDetails.Usia = data.UsiaAwal;

            Intent intent = new Intent(this, typeof(DataBurungDetail_Activity));
            StartActivity(intent);
        }

        public override void OnBackPressed()
        {

        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void BtnSetTanggal_Click(object sender, EventArgs e)
        {
            Fragments.DatePicker frag = Fragments.DatePicker.NewInstance(delegate (DateTime time)
            {
                edtTanggal.Text = time.ToString("yyyy-MM-dd");
            });

            frag.Show(base.FragmentManager, Fragments.DatePicker.TAG);
        }

        private void BtnTambah_Click(object sender, EventArgs e)
        {
            if (edtNamaBurung.Text == "")
            {
                Toast.MakeText(this, "Silahkan input nama burung", ToastLength.Short).Show();
            }
            else if (edtTanggal.Text == "")
            {
                Toast.MakeText(this, "Silahkan input tanggal", ToastLength.Short).Show();
            }
            else if (edtUsiaBurung.Text == "")
            {
                Toast.MakeText(this, "Silahkan input usia", ToastLength.Short).Show();
            }
            else
            {
                btnTambah.Enabled = false;

                DataBurung burung = new DataBurung()
                {
                    Nama = edtNamaBurung.Text,
                    TanggalMasuk = Convert.ToDateTime(edtTanggal.Text),
                    UsiaAwal = Convert.ToInt16(edtUsiaBurung.Text)
                };

                db.insertIntoTable(burung);

                Toast.MakeText(this, "Data Burung berhasil ditambahkan !", ToastLength.Long).Show();

                Intent intent = new Intent(Application.Context, typeof(BurungActivity));
                intent.SetFlags(ActivityFlags.NewTask);
                StartActivity(intent);
            }
        }
    }
}

