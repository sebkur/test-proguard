package de.mobanisto.test;

import com.sun.jna.Library;
import com.sun.jna.Native;

public class NativeClass {

    public int getProcessId() {
        return CLibrary.INSTANCE.getpid();
    }

    private interface CLibrary extends Library {

        CLibrary INSTANCE = Native.load("c", CLibrary.class);

        int getpid();
    }

}
