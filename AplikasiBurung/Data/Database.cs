using System;
using System.Collections.Generic;
using System.Linq;
using Android.Database.Sqlite;
using Android.Util;
using AplikasiBurung.Models;
using SQLite;
using SQLiteException = SQLite.SQLiteException;

namespace AplikasiBurung.Data
{
	public class Database
	{
		string folder = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal);

        public bool createDatabase()
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    connection.CreateTable<Penjadwalan>();
                    return true;
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return false;
            }
        }
        //Add or Insert Operation  

        public bool insertIntoTable(Penjadwalan penjadwalan)
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    connection.Insert(penjadwalan);
                    return true;
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return false;
            }
        }
        public List<Penjadwalan> selectTable()
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    return connection.Table<Penjadwalan>().ToList();
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return null;
            }
        }
        //Edit Operation  

        public bool updateTable(Penjadwalan jadwal)
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    connection.Query<Penjadwalan>("UPDATE Penjadwalan set Status=? Where Id=?", jadwal.Status, jadwal.Id);
                    return true;
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return false;
            }
        }
        //Delete Data Operation  

        public bool removeTable(Penjadwalan jadwal)
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    connection.Delete(jadwal);
                    return true;
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return false;
            }
        }
        //Select Operation  

        public bool selectTable(int Id)
        {
            try
            {
                using (var connection = new SQLiteConnection(System.IO.Path.Combine(folder, "Penjadwalan.db")))
                {
                    connection.Query<Penjadwalan>("SELECT * FROM Jadwal Where Id=?", Id);
                    return true;
                }
            }
            catch (SQLiteException ex)
            {
                Log.Info("SQLiteEx", ex.Message);
                return false;
            }
        }
    }
}

