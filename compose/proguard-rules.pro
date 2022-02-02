-dontoptimize
-dontobfuscate

-dontwarn org.jetbrains.skiko.**
-dontwarn org.jetbrains.skia.**
-dontwarn kotlinx.**

-keepclasseswithmembers public class de.mobanisto.test.MainKt {
    public static void main(java.lang.String[]);
}
-keep class org.jetbrains.skia.** { *; }
-keep class org.jetbrains.skiko.** { *; }

-keep class com.sun.jna.** { *; }
-keep class * implements com.sun.jna.** { *; }
