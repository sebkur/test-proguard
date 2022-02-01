-dontoptimize
-dontobfuscate
#-dontshrink
-keepkotlinmetadata
#-verbose

-dontwarn javax.servlet.**
-dontwarn org.jaxen.**
-dontwarn com.vividsolutions.jts.**
-dontwarn com.ibm.oti.**
-dontwarn com.sun.cdc.**
-dontwarn org.codehaus.janino.**
-dontwarn javax.mail.**
-dontwarn org.apache.log4j.**
-dontwarn android.**
-dontwarn org.conscrypt.**
-dontwarn org.apache.lucene.**
-dontwarn org.osgi.**
# wildcard, for the moment ignore all warnings
-ignorewarnings

-keepdirectories **
-keepattributes InnerClasses
-keepclasseswithmembers public class de.mobanisto.test.MainKt {
    public static void main(java.lang.String[]);
}
-keepclasseswithmembers class org.jetbrains.skia.**
-keepclasseswithmembers class org.jetbrains.skiko.**

-keepclasseswithmembers class *
-keepclasseswithmembers class * {*;}
-keepclasseswithmembers class **,** {*;}
-keepclasseswithmembers interface **,** {*;}
-keepclasseswithmembers enum **,** {*;}
-keepclasseswithmembernames,includedescriptorclasses class * {*;}

# try fixing issues with skia native stuff
#-keepclasseswithmembers class org.jetbrains.**
#-keepclasseswithmembers class androidx.compose.**
