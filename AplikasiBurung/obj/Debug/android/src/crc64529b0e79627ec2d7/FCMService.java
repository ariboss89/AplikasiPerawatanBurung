package crc64529b0e79627ec2d7;


public class FCMService
	extends com.google.firebase.iid.FirebaseInstanceIdService
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTokenRefresh:()V:GetOnTokenRefreshHandler\n" +
			"";
		mono.android.Runtime.register ("AplikasiBurung.Services.FCMService, AplikasiBurung", FCMService.class, __md_methods);
	}


	public FCMService ()
	{
		super ();
		if (getClass () == FCMService.class) {
			mono.android.TypeManager.Activate ("AplikasiBurung.Services.FCMService, AplikasiBurung", "", this, new java.lang.Object[] {  });
		}
	}


	public void onTokenRefresh ()
	{
		n_onTokenRefresh ();
	}

	private native void n_onTokenRefresh ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
