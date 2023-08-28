using System;
using Java.Sql;
using SQLite;

namespace AplikasiBurung.Models
{
	public class Penjadwalan
	{
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string NamaJadwal { get; set; }
        public DateTime Tanggal { get; set; }
        public DateTime Waktu { get; set; }
        public string Status { get; set; }
        public string Burung { get; set; }
    }
}

