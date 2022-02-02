-dontoptimize
-dontobfuscate

-keepclasseswithmembers public class de.mobanisto.test.MainKt {
    public static void main(java.lang.String[]);
}

-keep class com.sun.jna.** { *; }
-keep class * implements com.sun.jna.** { *; }
