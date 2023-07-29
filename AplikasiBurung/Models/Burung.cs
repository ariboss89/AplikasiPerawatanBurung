using System;
namespace AplikasiBurung.Models
{
	public class Burung
	{
		public int Id { get; set; }
		public string NamaBurung { get; set; }
		public byte[] Image { get; set; }
		public string Informasi { get; set; }
	}
}

