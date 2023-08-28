using System;
using Java.Sql;

namespace AplikasiBurung.SD
{
	public class StaticDetails
	{
		public static string NamaBurung { get; set; }
		public static string Informasi { get; set; }
        public static byte[] Image { get; set; }

        public static int IdJadwal { get; set; }
        public static string NamaJadwal { get; set; }
        public static Date Tanggal { get; set; }
        public static Time Waktu { get; set; }

        public static string BodyNotification { get; set; }

        //

        public static int IdBurung { get; set; }
        public static string Nama { get; set; }
        public static DateTime TanggalMasuk { get; set; }
        public static int Usia { get; set; }
    }
}

