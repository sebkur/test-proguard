import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

buildscript {
    repositories {
        mavenLocal()
        google()
        maven("https://plugins.gradle.org/m2/")
    }

    dependencies {
        classpath("com.guardsquare:proguard-gradle:7.2.0")
    }
}

plugins {
    kotlin("jvm") version "1.6.10"
    kotlin("kapt") version "1.6.10"
    id("application")
    id("java")
    id("idea")
    id("org.jlleitschuh.gradle.ktlint") version "10.1.0"
}

application {
    mainClass.set("de.mobanisto.test.MainKt")
}

val versionCode = "1.0.0"
group = "de.mobanisto"
version = versionCode

allprojects {
    repositories {
        mavenCentral()
        google()
    }
}

dependencies {
    implementation("net.java.dev.jna:jna:5.10.0")
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "11"
}

tasks.register<Jar>("fatJar") {
    manifest {
        attributes["Main-Class"] = application.mainClass.get()
    }
    archiveBaseName.set("basic-fat")
    from(configurations.runtimeClasspath.get().map { if (it.isDirectory) it else zipTree(it) })
    with(tasks["jar"] as CopySpec)
    duplicatesStrategy = DuplicatesStrategy.EXCLUDE
}

tasks.register<proguard.gradle.ProGuardTask>("minify") {
    val fatJar by tasks.getting
    dependsOn(fatJar)
    val files = fatJar.outputs.files
    injars(files)
    outjars(files.map { file -> File(file.parentFile, "${file.nameWithoutExtension}.min.jar") })

    val library = if (System.getProperty("java.version").startsWith("1.")) "lib/rt.jar" else "jmods"
    libraryjars("${System.getProperty("java.home")}/$library")

    configuration("proguard-rules.pro")
}
