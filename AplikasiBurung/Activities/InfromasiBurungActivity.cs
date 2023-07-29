
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
using AplikasiBurung.Adapters;
using AplikasiBurung.Models;
using AplikasiBurung.SD;

namespace AplikasiBurung.Activities
{
	[Activity (Label = "InfromasiBurungActivity")]			
	public class InfromasiBurungActivity : Activity
	{
		private List<Burung> listBurung = new List<Burung>();
		private Burung_ListView burungListView;
		private Burung burung = new Burung();
		private ListView lvBurung;
        private ImageView imgBack;
		private ImageBurung img = new ImageBurung();

        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			SetContentView(Resource.Layout.IBurungLayout);

			lvBurung = FindViewById<ListView>(Resource.Id.lvBurung);
            imgBack = FindViewById<ImageView>(Resource.Id.imgBack);

            lvBurung.ItemClick += LvBurung_ItemClick;

            var aceh = System.Convert.FromBase64String(img.imageMuraiAceh());
            var banjar = System.Convert.FromBase64String(img.imageMuraiBanjar());
            var jambi = System.Convert.FromBase64String(img.imageMuraiJambi());
            var jawa = System.Convert.FromBase64String(img.imageMuraiJawa());
            var lampung = System.Convert.FromBase64String(img.imageMuraiLampung());
            var medan = System.Convert.FromBase64String(img.imageMuraiMedan());
            var nias = System.Convert.FromBase64String(img.imageMuraiNias());
            var palangka = System.Convert.FromBase64String(img.imageMuraiPalangka());

            listBurung = new List<Burung>();

            burung = new Burung();
            burung.Id = 1;
            burung.NamaBurung = "Murai Batu Aceh";
			burung.Informasi = "Penyebaran di kaki Gunung Leuser Wilayah Aceh dengan panjang ekor 25 - 30 cm.";
            burung.Image = aceh;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 2;
            burung.NamaBurung = "Murai Batu Banjar";
            burung.Informasi = "Penyebaran di Kalimantan Timur dan Kalimantan Selatan dengan panjang ekor 10 - 12 cm";
            burung.Image = banjar;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 3;
            burung.NamaBurung = "Murai Batu Jambi";
            burung.Informasi = "Penyebaran di wilayah Bengkulu, Sumatra Selatan dan Jambi";
            burung.Image = jambi;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 4;
            burung.NamaBurung = "Murai Batu Jawa";
            burung.Informasi = "Penyebaran di Jawa Barat, Jawa Tengah dan Jawa Timur, ikuran tubuh jauh lebih kecil dari murai medan. Panjang ekor 8 - 10 cm. Jenis ini sudah sangat langka ditemukan. " +
                "Dari beberapa pemberitaan dikatakan bahwa burung dinyatakan nyaris punah.";
            burung.Image = jawa;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 5;
            burung.NamaBurung = "Murai Batu Lampung";
            burung.Informasi = "Penyebaran di Krakatau, Lampung. Ukuran tubuh lebih besar dari Murai Medan. Panjang ekor 15 - 20 cm";
            burung.Image = lampung;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 6;
            burung.NamaBurung = "Murai Batu Medan";
            burung.Informasi = "Penyebaran di bukit Lawang, Bohorok, kaki gunung Leuser wilayah Sumatra Utara. Panjang ekor 27 - 30 cm";
            burung.Image = medan;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 7;
            burung.NamaBurung = "Murai Batu Nias";
            burung.Informasi = "Penyebaran di pulau Nias. Panjang ekor 20 - 25 cm. Ekor keseluruhan berwarna hitam";
            burung.Image = nias;

            listBurung.Add(burung);

            burung = new Burung();
            burung.Id = 8;
            burung.NamaBurung = "Murai Batu Palangka";
            burung.Informasi = "Penyebaran di Kalimantan Tengah dan Barat. Panjang ekor 15 - 18 cm";
            burung.Image = palangka;

            listBurung.Add(burung);

            var dataKu = listBurung;
            burungListView = new Burung_ListView(this, dataKu);
            lvBurung.Adapter = burungListView;

            imgBack.Click += ImgBack_Click;

        }

        private void ImgBack_Click(object sender, EventArgs e)
        {
            Intent intent = new Intent(Application.Context, typeof(MainInformasiActivity));
            intent.SetFlags(ActivityFlags.NewTask);
            StartActivity(intent);
        }

        public override void OnBackPressed()
        {

        }

        private void LvBurung_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            var data = burungListView[e.Position];

            StaticDetails.NamaBurung = data.NamaBurung;
            StaticDetails.Informasi = data.Informasi;
            StaticDetails.Image = data.Image;
            
            Intent intent = new Intent(this, typeof(DetailBurungActivity));
            StartActivity(intent);
        }
    }
}

