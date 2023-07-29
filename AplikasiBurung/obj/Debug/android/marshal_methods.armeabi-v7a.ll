; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 48
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 86
	i32 99966887, ; 2: Xamarin.Firebase.Iid.dll => 0x5f55fa7 => 75
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 58
	i32 103834273, ; 4: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 68
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 58
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 96
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 33
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 60
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 31
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 45
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 109
	i32 280482487, ; 12: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 43
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 22
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 17
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 46
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 9
	i32 385762202, ; 17: System.Memory.dll => 0x16fe439a => 15
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 67
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 42
	i32 465846621, ; 20: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 21: System.dll => 0x1bff388e => 14
	i32 476646585, ; 22: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 43
	i32 485140951, ; 23: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 83
	i32 486930444, ; 24: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 52
	i32 495452658, ; 25: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 83
	i32 507148113, ; 26: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 81
	i32 526420162, ; 27: System.Transactions.dll => 0x1f6088c2 => 108
	i32 527452488, ; 28: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 96
	i32 542030372, ; 29: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 90
	i32 605376203, ; 30: System.IO.Compression.FileSystem => 0x24154ecb => 104
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 39
	i32 663517072, ; 32: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 65
	i32 666292255, ; 33: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 28
	i32 690569205, ; 34: System.Xml.Linq.dll => 0x29293ff5 => 110
	i32 691348768, ; 35: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 98
	i32 700284507, ; 36: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 93
	i32 720511267, ; 37: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 97
	i32 748832960, ; 38: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 7
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 103
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 102
	i32 843511501, ; 41: Xamarin.AndroidX.Print => 0x3246f6cd => 54
	i32 846667644, ; 42: Xamarin.Firebase.Installations.dll => 0x32771f7c => 77
	i32 882434999, ; 43: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 78
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 86
	i32 956575887, ; 45: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 97
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 46
	i32 996733531, ; 47: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 82
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 57
	i32 1031528504, ; 49: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 85
	i32 1034577869, ; 50: Refractored.Controls.CircleImageView => 0x3daa67cd => 5
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 27
	i32 1036359102, ; 52: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 89
	i32 1052210849, ; 53: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 49
	i32 1084122840, ; 54: Xamarin.Kotlin.StdLib => 0x409e66d8 => 95
	i32 1098259244, ; 55: System => 0x41761b2c => 14
	i32 1141947663, ; 56: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 79
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 63
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 28
	i32 1264511973, ; 59: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 59
	i32 1267360935, ; 60: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 64
	i32 1275534314, ; 61: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 98
	i32 1278448581, ; 62: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 25
	i32 1292207520, ; 63: SQLitePCLRaw.core.dll => 0x4d0585a0 => 8
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 41
	i32 1333047053, ; 65: Xamarin.Firebase.Common => 0x4f74af0d => 69
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 107
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 57
	i32 1379897097, ; 68: Xamarin.JavaX.Inject => 0x523f8f09 => 92
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 35
	i32 1411638395, ; 70: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 19
	i32 1462112819, ; 71: System.IO.Compression.dll => 0x57261233 => 103
	i32 1469204771, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 26
	i32 1490351284, ; 73: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 2
	i32 1531040989, ; 74: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 76
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 40
	i32 1592978981, ; 76: System.Runtime.Serialization.dll => 0x5ef2ee25 => 106
	i32 1597949149, ; 77: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 85
	i32 1622152042, ; 78: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 51
	i32 1636350590, ; 79: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 38
	i32 1639515021, ; 80: System.Net.Http.dll => 0x61b9038d => 16
	i32 1657153582, ; 81: System.Runtime => 0x62c6282e => 20
	i32 1658241508, ; 82: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 61
	i32 1658251792, ; 83: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 84
	i32 1688112883, ; 84: Microsoft.Data.Sqlite => 0x649e8ef3 => 2
	i32 1698840827, ; 85: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 94
	i32 1711441057, ; 86: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 9
	i32 1729485958, ; 87: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 32
	i32 1766324549, ; 88: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 60
	i32 1776026572, ; 89: System.Core.dll => 0x69dc03cc => 12
	i32 1788241197, ; 90: Xamarin.AndroidX.Fragment => 0x6a96652d => 42
	i32 1808609942, ; 91: Xamarin.AndroidX.Loader => 0x6bcd3296 => 51
	i32 1813058853, ; 92: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 95
	i32 1813201214, ; 93: Xamarin.Google.Android.Material => 0x6c13413e => 84
	i32 1867746548, ; 94: Xamarin.Essentials.dll => 0x6f538cf4 => 67
	i32 1876173635, ; 95: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 74
	i32 1885316902, ; 96: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 29
	i32 1908813208, ; 97: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 88
	i32 1919157823, ; 98: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 53
	i32 1933215285, ; 99: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 80
	i32 1983156543, ; 100: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 94
	i32 2011961780, ; 101: System.Buffers.dll => 0x77ec19b4 => 11
	i32 2019465201, ; 102: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 49
	i32 2055257422, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 47
	i32 2079903147, ; 104: System.Runtime.dll => 0x7bf8cdab => 20
	i32 2090596640, ; 105: System.Numerics.Vectors => 0x7c9bf920 => 18
	i32 2097448633, ; 106: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 44
	i32 2103459038, ; 107: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 10
	i32 2124230737, ; 108: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 82
	i32 2129483829, ; 109: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 87
	i32 2156766828, ; 110: Refractored.Controls.CircleImageView.dll => 0x808da66c => 5
	i32 2174878672, ; 111: Xamarin.Firebase.Annotations => 0x81a203d0 => 68
	i32 2201107256, ; 112: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 99
	i32 2201231467, ; 113: System.Net.Http => 0x8334206b => 16
	i32 2217644978, ; 114: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 63
	i32 2244775296, ; 115: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 52
	i32 2256548716, ; 116: Xamarin.AndroidX.MultiDex => 0x8680336c => 53
	i32 2279755925, ; 117: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 56
	i32 2315684594, ; 118: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 23
	i32 2465273461, ; 119: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 7
	i32 2471841756, ; 120: netstandard.dll => 0x93554fdc => 100
	i32 2475788418, ; 121: Java.Interop.dll => 0x93918882 => 1
	i32 2483661569, ; 122: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 79
	i32 2483742551, ; 123: Xamarin.Firebase.Messaging => 0x940ae757 => 80
	i32 2486410006, ; 124: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 89
	i32 2501346920, ; 125: System.Data.DataSetExtensions => 0x95178668 => 101
	i32 2505896520, ; 126: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 48
	i32 2581819634, ; 127: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 64
	i32 2605712449, ; 128: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 99
	i32 2620111890, ; 129: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 72
	i32 2620871830, ; 130: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 38
	i32 2623491480, ; 131: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 78
	i32 2639764100, ; 132: Xamarin.Firebase.Encoders => 0x9d579a84 => 72
	i32 2701096212, ; 133: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 61
	i32 2732626843, ; 134: Xamarin.AndroidX.Activity => 0xa2e0939b => 22
	i32 2737747696, ; 135: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 26
	i32 2770495804, ; 136: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 93
	i32 2778768386, ; 137: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 66
	i32 2804607052, ; 138: Xamarin.Firebase.Components.dll => 0xa72ae84c => 70
	i32 2810250172, ; 139: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 35
	i32 2819470561, ; 140: System.Xml.dll => 0xa80db4e1 => 21
	i32 2847418871, ; 141: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 87
	i32 2853208004, ; 142: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 66
	i32 2855708567, ; 143: Xamarin.AndroidX.Transition => 0xaa36a797 => 62
	i32 2870995654, ; 144: Xamarin.Firebase.Iid => 0xab1feac6 => 75
	i32 2883826422, ; 145: Xamarin.Firebase.Installations => 0xabe3b2f6 => 77
	i32 2903344695, ; 146: System.ComponentModel.Composition => 0xad0d8637 => 105
	i32 2905242038, ; 147: mscorlib.dll => 0xad2a79b6 => 4
	i32 2914202368, ; 148: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 76
	i32 2919462931, ; 149: System.Numerics.Vectors.dll => 0xae037813 => 18
	i32 2921128767, ; 150: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 24
	i32 2978675010, ; 151: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 41
	i32 3016983068, ; 152: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 59
	i32 3024354802, ; 153: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 45
	i32 3058099980, ; 154: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 91
	i32 3071899978, ; 155: Xamarin.Firebase.Common.dll => 0xb719794a => 69
	i32 3106737866, ; 156: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 71
	i32 3111772706, ; 157: System.Runtime.Serialization => 0xb979e222 => 106
	i32 3155362983, ; 158: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 81
	i32 3204380047, ; 159: System.Data.dll => 0xbefef58f => 13
	i32 3211777861, ; 160: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 40
	i32 3230466174, ; 161: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 88
	i32 3247949154, ; 162: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 163: Xamarin.AndroidX.CardView => 0xc235e84d => 32
	i32 3267021929, ; 164: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 30
	i32 3286872994, ; 165: SQLite-net.dll => 0xc3e9b3a2 => 6
	i32 3317135071, ; 166: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 39
	i32 3317144872, ; 167: System.Data => 0xc5b79d28 => 13
	i32 3331531814, ; 168: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 90
	i32 3340431453, ; 169: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 29
	i32 3345895724, ; 170: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 55
	i32 3353484488, ; 171: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 44
	i32 3360279109, ; 172: SQLitePCLRaw.core => 0xc849ca45 => 8
	i32 3362522851, ; 173: Xamarin.AndroidX.Core => 0xc86c06e3 => 37
	i32 3366347497, ; 174: Java.Interop => 0xc8a662e9 => 1
	i32 3371992681, ; 175: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 74
	i32 3374999561, ; 176: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 56
	i32 3383578424, ; 177: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 73
	i32 3395150330, ; 178: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 19
	i32 3404865022, ; 179: System.ServiceModel.Internals => 0xcaf21dfe => 107
	i32 3429136800, ; 180: System.Xml => 0xcc6479a0 => 21
	i32 3430777524, ; 181: netstandard => 0xcc7d82b4 => 100
	i32 3476120550, ; 182: Mono.Android => 0xcf3163e6 => 3
	i32 3486566296, ; 183: System.Transactions => 0xcfd0c798 => 108
	i32 3493954962, ; 184: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 34
	i32 3501239056, ; 185: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 30
	i32 3509114376, ; 186: System.Xml.Linq => 0xd128d608 => 110
	i32 3567349600, ; 187: System.ComponentModel.Composition.dll => 0xd4a16f60 => 105
	i32 3627220390, ; 188: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 54
	i32 3633644679, ; 189: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 24
	i32 3641597786, ; 190: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 47
	i32 3672681054, ; 191: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3676310014, ; 192: System.Web.Services.dll => 0xdb2009fe => 109
	i32 3682565725, ; 193: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 31
	i32 3684561358, ; 194: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 34
	i32 3689375977, ; 195: System.Drawing.Common => 0xdbe768e9 => 102
	i32 3706696989, ; 196: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 36
	i32 3718780102, ; 197: Xamarin.AndroidX.Annotation => 0xdda814c6 => 23
	i32 3754567612, ; 198: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 10
	i32 3786282454, ; 199: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 33
	i32 3829621856, ; 200: System.Numerics.dll => 0xe4436460 => 17
	i32 3876362041, ; 201: SQLite-net => 0xe70c9739 => 6
	i32 3885922214, ; 202: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 62
	i32 3888767677, ; 203: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 55
	i32 3896760992, ; 204: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 37
	i32 3920810846, ; 205: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 104
	i32 3921031405, ; 206: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 65
	i32 3934056515, ; 207: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 92
	i32 3945713374, ; 208: System.Data.DataSetExtensions.dll => 0xeb2ecede => 101
	i32 3955647286, ; 209: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 27
	i32 3970018735, ; 210: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 91
	i32 3984985702, ; 211: AplikasiBurung => 0xed860e66 => 0
	i32 3988029175, ; 212: AplikasiBurung.dll => 0xedb47ef7 => 0
	i32 4015948917, ; 213: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 25
	i32 4025784931, ; 214: System.Memory => 0xeff49a63 => 15
	i32 4105002889, ; 215: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4151237749, ; 216: System.Core => 0xf76edc75 => 12
	i32 4182413190, ; 217: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 50
	i32 4192648326, ; 218: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 73
	i32 4256097574, ; 219: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 36
	i32 4260525087, ; 220: System.Buffers => 0xfdf2741f => 11
	i32 4269159614, ; 221: Xamarin.Firebase.Datatransport => 0xfe7634be => 71
	i32 4284549794, ; 222: Xamarin.Firebase.Components => 0xff610aa2 => 70
	i32 4292120959 ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 50
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 48, i32 86, i32 75, i32 58, i32 68, i32 58, i32 96, i32 33, ; 0..7
	i32 60, i32 31, i32 45, i32 109, i32 43, i32 22, i32 17, i32 46, ; 8..15
	i32 9, i32 15, i32 67, i32 42, i32 4, i32 14, i32 43, i32 83, ; 16..23
	i32 52, i32 83, i32 81, i32 108, i32 96, i32 90, i32 104, i32 39, ; 24..31
	i32 65, i32 28, i32 110, i32 98, i32 93, i32 97, i32 7, i32 103, ; 32..39
	i32 102, i32 54, i32 77, i32 78, i32 86, i32 97, i32 46, i32 82, ; 40..47
	i32 57, i32 85, i32 5, i32 27, i32 89, i32 49, i32 95, i32 14, ; 48..55
	i32 79, i32 63, i32 28, i32 59, i32 64, i32 98, i32 25, i32 8, ; 56..63
	i32 41, i32 69, i32 107, i32 57, i32 92, i32 35, i32 19, i32 103, ; 64..71
	i32 26, i32 2, i32 76, i32 40, i32 106, i32 85, i32 51, i32 38, ; 72..79
	i32 16, i32 20, i32 61, i32 84, i32 2, i32 94, i32 9, i32 32, ; 80..87
	i32 60, i32 12, i32 42, i32 51, i32 95, i32 84, i32 67, i32 74, ; 88..95
	i32 29, i32 88, i32 53, i32 80, i32 94, i32 11, i32 49, i32 47, ; 96..103
	i32 20, i32 18, i32 44, i32 10, i32 82, i32 87, i32 5, i32 68, ; 104..111
	i32 99, i32 16, i32 63, i32 52, i32 53, i32 56, i32 23, i32 7, ; 112..119
	i32 100, i32 1, i32 79, i32 80, i32 89, i32 101, i32 48, i32 64, ; 120..127
	i32 99, i32 72, i32 38, i32 78, i32 72, i32 61, i32 22, i32 26, ; 128..135
	i32 93, i32 66, i32 70, i32 35, i32 21, i32 87, i32 66, i32 62, ; 136..143
	i32 75, i32 77, i32 105, i32 4, i32 76, i32 18, i32 24, i32 41, ; 144..151
	i32 59, i32 45, i32 91, i32 69, i32 71, i32 106, i32 81, i32 13, ; 152..159
	i32 40, i32 88, i32 111, i32 32, i32 30, i32 6, i32 39, i32 13, ; 160..167
	i32 90, i32 29, i32 55, i32 44, i32 8, i32 37, i32 1, i32 74, ; 168..175
	i32 56, i32 73, i32 19, i32 107, i32 21, i32 100, i32 3, i32 108, ; 176..183
	i32 34, i32 30, i32 110, i32 105, i32 54, i32 24, i32 47, i32 3, ; 184..191
	i32 109, i32 31, i32 34, i32 102, i32 36, i32 23, i32 10, i32 33, ; 192..199
	i32 17, i32 6, i32 62, i32 55, i32 37, i32 104, i32 65, i32 92, ; 200..207
	i32 101, i32 27, i32 91, i32 0, i32 0, i32 25, i32 15, i32 111, ; 208..215
	i32 12, i32 50, i32 73, i32 36, i32 11, i32 71, i32 70, i32 50 ; 224..223
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
