
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AplikasiBurung.Data;
using AplikasiBurung.Fragments;
using AplikasiBurung.Models;
using Java.Lang;
using static Android.Net.Http.SslCertificate;

namespace AplikasiBurung.Activities
{
    [Activity(Label = "TambahJadwalActivity")]
    public class TambahJadwalActivity : Activity
    {
        Button btnDatePicker, btnTimePicker, btnTambah;
        EditText edtDate, edtTime, edtNamaJadwal;
        private int mYear, mMonth, mDay, mHour, mMinute;
        Database db = new Database();
        ImageView imgBack;

        [Obsolete]
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.TambahJadwal_Layout);

            edtDate = FindViewById<EditText>(Resource.Id.edtTanggal);
            edtTime = FindViewById<EditText>(Resource.Id.edtWaktu);
            edtNamaJadwal = FindViewById<EditText>(Resource.Id.edtNamaJadwal);
            btnDatePicker = FindViewById<Button>(Resource.Id.btnSetTanggal);
            btnTimePicker = FindViewById<Button>(Resource.Id.btnSetWaktu);
            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
            btnTambah = FindViewById<Button>(Resource.Id.btnTambah);
            btnDatePicker.Click += BtnDatePicker_Click;
            btnTimePicker.Click += BtnTimePicker_Click;
            btnTambah.Click += BtnTambah_Click;
            imgBack.Click += ImgBack_Click;

            db.createDatabase();

            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
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

        private void BtnTambah_Click(object sender, EventArgs e)
        {
            if (edtNamaJadwal.Text == "")
            {
                Toast.MakeText(this, "Silahkan input nama jadwal", ToastLength.Short).Show();
            }
            else if (edtDate.Text == "")
            {
                Toast.MakeText(this, "Silahkan input tanggal", ToastLength.Short).Show();
            }
            else if (edtTime.Text == "")
            {
                Toast.MakeText(this, "Silahkan input jam", ToastLength.Short).Show();
            }
            else
            {
                btnTambah.Enabled = false;

                Penjadwalan jadwal = new Penjadwalan()
                {
                    NamaJadwal = edtNamaJadwal.Text,
                    Tanggal = Convert.ToDateTime(edtDate.Text),
                    Waktu = Convert.ToDateTime(edtTime.Text),
                    Status = "SET"
                };

                db.insertIntoTable(jadwal);

                Toast.MakeText(this, "Penjadwalan berhasil ditambahkan !", ToastLength.Long).Show();

                Intent intent = new Intent(Application.Context, typeof(MainActivity));
                intent.SetFlags(ActivityFlags.NewTask);
                StartActivity(intent);
            }
        }

        [Obsolete]
        private void BtnTimePicker_Click(object sender, EventArgs e)
        {
            TimePickerFragment frag = TimePickerFragment.NewInstance(
            delegate (DateTime time)
        {
            edtTime.Text = time.ToShortTimeString();
        });

            frag.Show(FragmentManager, TimePickerFragment.TAG);
        }

        [Obsolete]
        private void BtnDatePicker_Click(object sender, EventArgs e)
        {
            Fragments.DatePicker frag = Fragments.DatePicker.NewInstance(delegate (DateTime time)
            {
                edtDate.Text = time.ToString("yyyy-MM-dd");
            });

            frag.Show(base.FragmentManager, Fragments.DatePicker.TAG);
        }
    }
}

