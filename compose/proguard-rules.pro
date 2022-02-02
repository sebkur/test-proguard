-dontoptimize
-dontobfuscate
#-dontshrink
#-keepkotlinmetadata
#-verbose

-dontwarn org.jetbrains.skiko.**
-dontwarn org.jetbrains.skia.**
-dontwarn kotlinx.**

-keepdirectories **
-keepattributes InnerClasses
-keepclasseswithmembers public class de.mobanisto.test.MainKt {
    public static void main(java.lang.String[]);
}
-keepclasseswithmembers,includedescriptorclasses class org.jetbrains.skia.** { *; }
-keepclasseswithmembers,includedescriptorclasses class org.jetbrains.skiko.** { *; }
-keep class * implements org.jetbrains.skia.shaper.RunHandler { *; }

-keep class com.sun.jna.** { *; }
-keep class * implements com.sun.jna.** { *; }

# try fixing issues with skia exception

#-keepclasseswithmembers class org.jetbrains.** { *; }
#-keepclasseswithmembers class androidx.compose.** { *; }

#-keepclasseswithmembers class *
#-keepclasseswithmembers class * {*;}
#-keepclasseswithmembers class **,** {*;}
#-keepclasseswithmembers interface **,** {*;}
#-keepclasseswithmembers enum **,** {*;}
#-keepclasseswithmembernames,includedescriptorclasses class * {*;}
