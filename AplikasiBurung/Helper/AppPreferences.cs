using System;
using System.Collections.Generic;
using System.Data;
using Android.Content;
using Android.Preferences;

namespace AplikasiBurung.Helper
{
	public class AppPreferences
	{
        private ISharedPreferences nameSharedPrefs;
        private ISharedPreferencesEditor namePrefsEditor; //Declare Context,Prefrences name and Editor name  
        private Context mContext;

        [Obsolete]
        public AppPreferences(Context context)
        {
            this.mContext = context;
            nameSharedPrefs = PreferenceManager.GetDefaultSharedPreferences(mContext);
            namePrefsEditor = nameSharedPrefs.Edit();
        }

        public void saveBodyAccessKey(string key, string body)  
        {
            namePrefsEditor.PutString(key, body);
            namePrefsEditor.Commit();
        }

        public void saveIdAccessKey(string Id)  
        {
            namePrefsEditor.PutString("Id", Id);
            namePrefsEditor.Commit();
        }

        public string getAccessKey(string key)
        {
            return nameSharedPrefs.GetString(key, "");
        }

        public void deleteAccessKey()
        {
            namePrefsEditor.Clear();
            namePrefsEditor.Commit();
        }

    }
}

