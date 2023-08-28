
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using AplikasiBurung.Data;
using AplikasiBurung.Models;
using AplikasiBurung.SD;
using SQLite;
using static Android.Renderscripts.Sampler;
using static Java.Util.Jar.Attributes;

namespace AplikasiBurung.Activities
{
    [Activity(Label = "DataBurungDetail_Activity")]
    public class DataBurungDetail_Activity : Activity
    {
        TextView txtNama, txtUsiaAwal, txtUsiaSaatIni, txtJumlahProgress, txtTanggal, txtVitamin;
        ProgressBar progressJadwal;
        Button btnDelete, btnVitamin;
        Db_Burung db = new Db_Burung();
        Database dbJadwal = new Database();
        List<Penjadwalan> listJadwal = new List<Penjadwalan>();
        ImageView imgBack;
        List<DataBurung> listBurung = new List<DataBurung>();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.DataBurungDetail_Layout);

            txtNama = FindViewById<TextView>(Resource.Id.txtNamaBurung);
            txtUsiaAwal = FindViewById<TextView>(Resource.Id.txtUsiaAwal);
            txtUsiaSaatIni = FindViewById<TextView>(Resource.Id.txtUsiaSaatIni);
            txtJumlahProgress = FindViewById<TextView>(Resource.Id.txtJumlahProgress);
            progressJadwal = FindViewById<ProgressBar>(Resource.Id.progress);
            btnDelete = FindViewById<Button>(Resource.Id.btnDelete);
            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);
            txtTanggal = FindViewById<TextView>(Resource.Id.txtTanggal);
            txtVitamin = FindViewById<TextView>(Resource.Id.txtVitamin);
            btnVitamin = FindViewById<Button>(Resource.Id.btnVitamin);

            txtNama.Text = StaticDetails.NamaBurung;
            txtUsiaAwal.Text = StaticDetails.Usia.ToString() + " HARI";
            txtTanggal.Text = StaticDetails.TanggalMasuk.ToString("yyyy-MM-dd");

            DateTime tglMasuk = StaticDetails.TanggalMasuk;
            DateTime tglSaatIni = DateTime.Now;

            try
            {
                listJadwal = dbJadwal.selectTable().Where(x => x.Burung == StaticDetails.NamaBurung).ToList();

                listBurung = db.selectTable().Where(x => x.Nama == StaticDetails.NamaBurung).ToList();

                var tgl = DateTime.Now.ToString("yyyy-MM-dd");

                imgBack.Click += ImgBack_Click;

                string vitamin = listBurung[0].Vitamin;

                if (vitamin != null)
                {

                    txtVitamin.Text = vitamin;

                }
                else
                {
                    txtVitamin.Text = "Belum";
                }

                btnDelete.Click += BtnDelete_Click;

                btnVitamin.Click += BtnVitamin_Click;

                if (listJadwal.Count() != 0)
                {

                    var dataAll = listJadwal.Where(x => x.Tanggal.ToString("yyyy-MM-dd").Equals(tgl) && x.Burung == txtNama.Text).ToList();

                    var dataFilter = dataAll.Where(x => x.Status == "SELESAI");

                    var jmlSemua = dataAll.Count();
                    var jmlSelesai = dataFilter.Count();

                    txtJumlahProgress.Text = jmlSelesai + " / " + jmlSemua;

                    if (tglMasuk.ToString("yyyy-MM-dd") != tglSaatIni.ToString("yyyy-MM-dd"))
                    {
                        var tot = (tglSaatIni - tglMasuk).TotalDays;

                        double awal = Convert.ToDouble(StaticDetails.Usia);

                        double curr = Math.Round(tot) + awal;

                        double saatIni = awal + curr-1;

                        txtUsiaSaatIni.Text = curr.ToString() + " HARI";
                    }

                    else
                    {
                        txtUsiaSaatIni.Text = StaticDetails.Usia.ToString() + " HARI";
                    }

                    double progress = (Convert.ToDouble(jmlSelesai) / Convert.ToDouble(jmlSemua)) * 100;

                    progressJadwal.Progress = Convert.ToInt16(Math.Round(progress));

                }
                else
                {
                    progressJadwal.Progress = 0;

                    var tot = (tglSaatIni - tglMasuk).TotalDays;

                    double awal = Convert.ToDouble(StaticDetails.Usia);

                    double curr = Math.Round(tot) + awal;

                    double saatIni = awal + curr-1;

                        txtUsiaSaatIni.Text = curr.ToString() + " HARI";
                }
            }
            catch (Exception x)
            {
                Toast.MakeText(this, "Database jadwal belum ada !!", ToastLength.Short).Show();
            }

        }

        private async void BtnVitamin_Click(object sender, EventArgs e)
        {
            DataBurung dbr = new DataBurung()
            {
                Id = StaticDetails.IdBurung,
                Vitamin = "Sudah "+ (DateTime.Now).ToString("yyyy-MM-dd")
            };

            var dbpath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.MyDocuments), "Burung.db");
            var dbx = new SQLiteConnection(dbpath);

            var connection = new SQLiteAsyncConnection(dbpath);
            await connection.CreateTableAsync<DataBurung>();

            var setting = await connection.Table<DataBurung>().Where(v => v.Id == StaticDetails.IdBurung).FirstOrDefaultAsync();
            if (setting != null)
            {
                // change and update...
                setting.Vitamin = "Sudah " + (DateTime.Now).ToString("yyyy-MM-dd");
                await connection.UpdateAsync(setting);
            }

            //var loginquery = db.Table<DataBurung>().Where(u => u.Username.Equals(EntryLoginUsername.Text) && u.Password.Equals(EntryLoginPassword.Text)).FirstOrDefault();

            Intent intent = new Intent(Application.Context, typeof(DataBurungDetail_Activity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {

            DataBurung dbr = new DataBurung()
            {

                Id = StaticDetails.IdBurung
            };

            db.removeTable(dbr);

            Intent intent = new Intent(Application.Context, typeof(BurungActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }
    }
}

