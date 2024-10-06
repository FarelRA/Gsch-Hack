package com.scottyab.rootbeer;

import p046m1.C0736h;
/* loaded from: classes.dex */
public class RootBeerNative {

    /* renamed from: a */
    public static final boolean f1358a;

    static {
        try {
            System.loadLibrary("toolChecker");
            f1358a = true;
        } catch (UnsatisfiedLinkError e) {
            C0736h.m282r(e);
        }
    }

    public native int checkForRoot(Object[] objArr);

    public native int setLogDebugMessages(boolean z);
}
