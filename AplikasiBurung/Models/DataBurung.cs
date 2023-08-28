using System;
using SQLite;

namespace AplikasiBurung.Models
{
	public class DataBurung
	{
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
		public string Nama { get; set; }
		public DateTime TanggalMasuk { get; set; }
		public int UsiaAwal { get; set; }
		//public int UsiaAkhir { get; set; }
		public string Vitamin { get; set; }

	}
}

