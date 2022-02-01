package de.mobanisto.test

fun main() {
    Main().run()
}

class Main {

    fun run() {
        println("Test")

        val native = NativeClass()
        println("pid: ${native.processId}")
    }
}
