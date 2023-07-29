; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 3
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 33
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 57
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 58
	i64 316157742385208084, ; 4: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 36
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 48
	i64 687654259221141486, ; 6: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 87
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 102
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 44
	i64 870603111519317375, ; 9: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 9
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 41
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 108
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 111
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 84
	i64 1301485588176585670, ; 14: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 8
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 28
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 106
	i64 1465843056802068477, ; 17: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 70
	i64 1518315023656898250, ; 18: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 10
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 26
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 50
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 45
	i64 1672383392659050004, ; 22: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 2
	i64 1743969030606105336, ; 23: System.Memory.dll => 0x1833d297e88f2af8 => 15
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 27
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 57
	i64 1837131419302612636, ; 26: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 82
	i64 1875917498431009007, ; 27: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 23
	i64 1981742497975770890, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 49
	i64 2064708342624596306, ; 29: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 96
	i64 2066957671667529916, ; 30: AplikasiBurung => 0x1caf4f0d1982f8bc => 0
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 53
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 31
	i64 2262844636196693701, ; 33: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 41
	i64 2284400282711631002, ; 34: System.Web.Services => 0x1fb3d1f42fd4249a => 109
	i64 2329709569556905518, ; 35: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 47
	i64 2337758774805907496, ; 36: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 19
	i64 2470498323731680442, ; 37: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 35
	i64 2479423007379663237, ; 38: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 63
	i64 2497223385847772520, ; 39: System.Runtime => 0x22a7eb7046413568 => 20
	i64 2547086958574651984, ; 40: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 22
	i64 2592350477072141967, ; 41: System.Xml.dll => 0x23f9e10627330e8f => 21
	i64 2624866290265602282, ; 42: mscorlib.dll => 0x246d65fbde2db8ea => 4
	i64 2783046991838674048, ; 43: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 19
	i64 2787234703088983483, ; 44: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 59
	i64 2950045609555153781, ; 45: Refractored.Controls.CircleImageView => 0x28f0aada14bc5375 => 5
	i64 3017704767998173186, ; 46: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 84
	i64 3143515969535650208, ; 47: Xamarin.Firebase.Encoders => 0x2ba0031e85f0a9a0 => 72
	i64 3289520064315143713, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 46
	i64 3303437397778967116, ; 49: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 24
	i64 3311221304742556517, ; 50: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 18
	i64 3344514922410554693, ; 51: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 99
	i64 3364695309916733813, ; 52: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 69
	i64 3411255996856937470, ; 53: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 88
	i64 3493805808809882663, ; 54: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 61
	i64 3522470458906976663, ; 55: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 60
	i64 3531994851595924923, ; 56: System.Numerics => 0x31042a9aade235bb => 17
	i64 3571415421602489686, ; 57: System.Runtime.dll => 0x319037675df7e556 => 20
	i64 3716579019761409177, ; 58: netstandard.dll => 0x3393f0ed5c8c5c99 => 100
	i64 3727469159507183293, ; 59: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 56
	i64 3966267475168208030, ; 60: System.Memory => 0x370b03412596249e => 15
	i64 4201423742386704971, ; 61: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 36
	i64 4239882675311405204, ; 62: Xamarin.Firebase.Encoders.JSON => 0x3ad716d44f44e894 => 73
	i64 4247996603072512073, ; 63: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 91
	i64 4335356748765836238, ; 64: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 82
	i64 4337444564132831293, ; 65: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 7
	i64 4525561845656915374, ; 66: System.ServiceModel.Internals => 0x3ece06856b710dae => 107
	i64 4636684751163556186, ; 67: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 65
	i64 4702770163853758138, ; 68: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 70
	i64 4782108999019072045, ; 69: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 30
	i64 4794310189461587505, ; 70: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 22
	i64 4795410492532947900, ; 71: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 60
	i64 5129462924058778861, ; 72: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 2
	i64 5203618020066742981, ; 73: Xamarin.Essentials => 0x4836f704f0e652c5 => 67
	i64 5205316157927637098, ; 74: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 52
	i64 5376510917114486089, ; 75: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 63
	i64 5408338804355907810, ; 76: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 62
	i64 5507995362134886206, ; 77: System.Core.dll => 0x4c705499688c873e => 12
	i64 5574231584441077149, ; 78: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 25
	i64 5757522595884336624, ; 79: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 34
	i64 6092862891035488599, ; 80: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 79
	i64 6183170893902868313, ; 81: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 7
	i64 6300241346327543539, ; 82: Xamarin.Firebase.Iid => 0x576ef41fd714fef3 => 75
	i64 6319713645133255417, ; 83: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 48
	i64 6401687960814735282, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 47
	i64 6504860066809920875, ; 85: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 31
	i64 6548213210057960872, ; 86: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 39
	i64 6554405243736097249, ; 87: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 90
	i64 6589202984700901502, ; 88: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 85
	i64 6591024623626361694, ; 89: System.Web.Services.dll => 0x5b7805f9751a1b5e => 109
	i64 6659513131007730089, ; 90: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 44
	i64 6876862101832370452, ; 91: System.Xml.Linq => 0x5f6f85a57d108914 => 110
	i64 6878582369430612696, ; 92: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 83
	i64 6894844156784520562, ; 93: System.Numerics.Vectors => 0x5faf683aead1ad72 => 18
	i64 6975328107116786489, ; 94: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 68
	i64 7026573318513401069, ; 95: Xamarin.Firebase.Encoders.Proto.dll => 0x618367346e3a9ced => 74
	i64 7103753931438454322, ; 96: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 43
	i64 7385250113861300937, ; 97: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 76
	i64 7476537270401454554, ; 98: Xamarin.Firebase.Encoders.JSON.dll => 0x67c1ff08f83f51da => 73
	i64 7488575175965059935, ; 99: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 110
	i64 7637365915383206639, ; 100: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 67
	i64 7654504624184590948, ; 101: System.Net.Http => 0x6a3a4366801b8264 => 16
	i64 7735352534559001595, ; 102: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 95
	i64 7820441508502274321, ; 103: System.Data => 0x6c87ca1e14ff8111 => 13
	i64 7836164640616011524, ; 104: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 26
	i64 7904570928025870493, ; 105: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 77
	i64 7940488133782528123, ; 106: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 89
	i64 7969431548154767168, ; 107: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 77
	i64 8044118961405839122, ; 108: System.ComponentModel.Composition => 0x6fa2739369944712 => 105
	i64 8083354569033831015, ; 109: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 46
	i64 8103644804370223335, ; 110: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 101
	i64 8167236081217502503, ; 111: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8187640529827139739, ; 112: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 98
	i64 8428678171113854126, ; 113: Xamarin.Firebase.Iid.dll => 0x74f8ae23bb5494ae => 75
	i64 8465511506719290632, ; 114: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 80
	i64 8601935802264776013, ; 115: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 62
	i64 8626175481042262068, ; 116: Java.Interop => 0x77b654e585b55834 => 1
	i64 8684531736582871431, ; 117: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 104
	i64 8853378295825400934, ; 118: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 94
	i64 8951477988056063522, ; 119: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 55
	i64 9324707631942237306, ; 120: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 27
	i64 9662334977499516867, ; 121: System.Numerics.dll => 0x8617827802b0cfc3 => 17
	i64 9678050649315576968, ; 122: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 35
	i64 9735414641753518179, ; 123: Xamarin.Firebase.Encoders.Proto => 0x871b240946daf063 => 74
	i64 9774216967140627647, ; 124: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 71
	i64 9796610708422913120, ; 125: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 76
	i64 9808709177481450983, ; 126: Mono.Android.dll => 0x881f890734e555e7 => 3
	i64 9825649861376906464, ; 127: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 34
	i64 9834056768316610435, ; 128: System.Transactions.dll => 0x8879968718899783 => 108
	i64 9875200773399460291, ; 129: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 87
	i64 9998632235833408227, ; 130: Mono.Security => 0x8ac2470b209ebae3 => 111
	i64 10038780035334861115, ; 131: System.Net.Http.dll => 0x8b50e941206af13b => 16
	i64 10226222362177979215, ; 132: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 96
	i64 10229024438826829339, ; 133: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 39
	i64 10321854143672141184, ; 134: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 93
	i64 10352330178246763130, ; 135: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 79
	i64 10376576884623852283, ; 136: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 61
	i64 10406448008575299332, ; 137: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 99
	i64 10430153318873392755, ; 138: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 37
	i64 10847732767863316357, ; 139: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 28
	i64 11019817191295005410, ; 140: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 25
	i64 11023048688141570732, ; 141: System.Core => 0x98f9bc61168392ac => 12
	i64 11037814507248023548, ; 142: System.Xml => 0x992e31d0412bf7fc => 21
	i64 11071824625609515081, ; 143: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 85
	i64 11162124722117608902, ; 144: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 66
	i64 11171845786728836392, ; 145: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 89
	i64 11336891506707244397, ; 146: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 71
	i64 11340910727871153756, ; 147: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 38
	i64 11376351552967644903, ; 148: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 68
	i64 11392833485892708388, ; 149: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 54
	i64 11529969570048099689, ; 150: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 66
	i64 11580057168383206117, ; 151: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 23
	i64 11591352189662810718, ; 152: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 59
	i64 11597940890313164233, ; 153: netstandard => 0xa0f429ca8d1805c9 => 100
	i64 11672361001936329215, ; 154: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 43
	i64 11739066727115742305, ; 155: SQLite-net.dll => 0xa2e98afdf8575c61 => 6
	i64 11806260347154423189, ; 156: SQLite-net => 0xa3d8433bc5eb5d95 => 6
	i64 12102847907131387746, ; 157: System.Buffers => 0xa7f5f40c43256f62 => 11
	i64 12137774235383566651, ; 158: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 64
	i64 12279246230491828964, ; 159: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 10
	i64 12346958216201575315, ; 160: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 92
	i64 12451044538927396471, ; 161: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 42
	i64 12466513435562512481, ; 162: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 51
	i64 12487638416075308985, ; 163: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 40
	i64 12538491095302438457, ; 164: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 32
	i64 12550732019250633519, ; 165: System.IO.Compression => 0xae2d28465e8e1b2f => 103
	i64 12700543734426720211, ; 166: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 33
	i64 12828192437253469131, ; 167: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 97
	i64 12854524964145442905, ; 168: Xamarin.Firebase.Encoders.dll => 0xb26472594447b059 => 72
	i64 12963446364377008305, ; 169: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 102
	i64 13010172215566198050, ; 170: Refractored.Controls.CircleImageView.dll => 0xb48d6ab2ff7ae522 => 5
	i64 13370592475155966277, ; 171: System.Runtime.Serialization => 0xb98de304062ea945 => 106
	i64 13401370062847626945, ; 172: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 64
	i64 13454009404024712428, ; 173: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 86
	i64 13465488254036897740, ; 174: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 95
	i64 13491513212026656886, ; 175: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 29
	i64 13572454107664307259, ; 176: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 56
	i64 13647894001087880694, ; 177: System.Data.dll => 0xbd670f48cb071df6 => 13
	i64 13828521679616088467, ; 178: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 94
	i64 13829530607229561650, ; 179: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 78
	i64 13959074834287824816, ; 180: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 42
	i64 14124974489674258913, ; 181: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 32
	i64 14172845254133543601, ; 182: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 53
	i64 14261073672896646636, ; 183: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 54
	i64 14524915121004231475, ; 184: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 92
	i64 14644440854989303794, ; 185: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 52
	i64 14789919016435397935, ; 186: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 69
	i64 14792063746108907174, ; 187: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 86
	i64 14809388726477333247, ; 188: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 90
	i64 14852515768018889994, ; 189: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 38
	i64 14987728460634540364, ; 190: System.IO.Compression.dll => 0xcfff1ba06622494c => 103
	i64 14988210264188246988, ; 191: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 40
	i64 15150743910298169673, ; 192: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 55
	i64 15279429628684179188, ; 193: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 98
	i64 15370334346939861994, ; 194: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 37
	i64 15582737692548360875, ; 195: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 50
	i64 15609085926864131306, ; 196: System.dll => 0xd89e9cf3334914ea => 14
	i64 15777549416145007739, ; 197: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 58
	i64 15930129725311349754, ; 198: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 91
	i64 16063876509102331784, ; 199: AplikasiBurung.dll => 0xdeee5a9330c95788 => 0
	i64 16154507427712707110, ; 200: System => 0xe03056ea4e39aa26 => 14
	i64 16423015068819898779, ; 201: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 97
	i64 16467346005009053642, ; 202: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 81
	i64 16565028646146589191, ; 203: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 105
	i64 16755018182064898362, ; 204: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 8
	i64 16822611501064131242, ; 205: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 101
	i64 16833383113903931215, ; 206: mscorlib => 0xe99c30c1484d7f4f => 4
	i64 17024911836938395553, ; 207: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 24
	i64 17037200463775726619, ; 208: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 45
	i64 17434242208926550937, ; 209: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 83
	i64 17544493274320527064, ; 210: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 30
	i64 17677828421478984182, ; 211: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 78
	i64 17704177640604968747, ; 212: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 51
	i64 17710060891934109755, ; 213: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 49
	i64 17838668724098252521, ; 214: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 11
	i64 17891337867145587222, ; 215: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 93
	i64 17928294245072900555, ; 216: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 104
	i64 17945795017270165205, ; 217: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 81
	i64 17986907704309214542, ; 218: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 88
	i64 18116111925905154859, ; 219: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 29
	i64 18129453464017766560, ; 220: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 107
	i64 18337470502355292274, ; 221: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 80
	i64 18370042311372477656, ; 222: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 9
	i64 18380184030268848184 ; 223: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 65
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 3, i32 33, i32 57, i32 58, i32 36, i32 48, i32 87, i32 102, ; 0..7
	i32 44, i32 9, i32 41, i32 108, i32 111, i32 84, i32 8, i32 28, ; 8..15
	i32 106, i32 70, i32 10, i32 26, i32 50, i32 45, i32 2, i32 15, ; 16..23
	i32 27, i32 57, i32 82, i32 23, i32 49, i32 96, i32 0, i32 53, ; 24..31
	i32 31, i32 41, i32 109, i32 47, i32 19, i32 35, i32 63, i32 20, ; 32..39
	i32 22, i32 21, i32 4, i32 19, i32 59, i32 5, i32 84, i32 72, ; 40..47
	i32 46, i32 24, i32 18, i32 99, i32 69, i32 88, i32 61, i32 60, ; 48..55
	i32 17, i32 20, i32 100, i32 56, i32 15, i32 36, i32 73, i32 91, ; 56..63
	i32 82, i32 7, i32 107, i32 65, i32 70, i32 30, i32 22, i32 60, ; 64..71
	i32 2, i32 67, i32 52, i32 63, i32 62, i32 12, i32 25, i32 34, ; 72..79
	i32 79, i32 7, i32 75, i32 48, i32 47, i32 31, i32 39, i32 90, ; 80..87
	i32 85, i32 109, i32 44, i32 110, i32 83, i32 18, i32 68, i32 74, ; 88..95
	i32 43, i32 76, i32 73, i32 110, i32 67, i32 16, i32 95, i32 13, ; 96..103
	i32 26, i32 77, i32 89, i32 77, i32 105, i32 46, i32 101, i32 1, ; 104..111
	i32 98, i32 75, i32 80, i32 62, i32 1, i32 104, i32 94, i32 55, ; 112..119
	i32 27, i32 17, i32 35, i32 74, i32 71, i32 76, i32 3, i32 34, ; 120..127
	i32 108, i32 87, i32 111, i32 16, i32 96, i32 39, i32 93, i32 79, ; 128..135
	i32 61, i32 99, i32 37, i32 28, i32 25, i32 12, i32 21, i32 85, ; 136..143
	i32 66, i32 89, i32 71, i32 38, i32 68, i32 54, i32 66, i32 23, ; 144..151
	i32 59, i32 100, i32 43, i32 6, i32 6, i32 11, i32 64, i32 10, ; 152..159
	i32 92, i32 42, i32 51, i32 40, i32 32, i32 103, i32 33, i32 97, ; 160..167
	i32 72, i32 102, i32 5, i32 106, i32 64, i32 86, i32 95, i32 29, ; 168..175
	i32 56, i32 13, i32 94, i32 78, i32 42, i32 32, i32 53, i32 54, ; 176..183
	i32 92, i32 52, i32 69, i32 86, i32 90, i32 38, i32 103, i32 40, ; 184..191
	i32 55, i32 98, i32 37, i32 50, i32 14, i32 58, i32 91, i32 0, ; 192..199
	i32 14, i32 97, i32 81, i32 105, i32 8, i32 101, i32 4, i32 24, ; 200..207
	i32 45, i32 83, i32 30, i32 78, i32 51, i32 49, i32 11, i32 93, ; 208..215
	i32 104, i32 81, i32 88, i32 29, i32 107, i32 80, i32 9, i32 65 ; 224..223
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
