package p017e0;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import androidx.lifecycle.AbstractC0160f;
import androidx.lifecycle.C0164h;
import androidx.lifecycle.C0168j;
import androidx.lifecycle.C0171m;
import androidx.lifecycle.InterfaceC0163g;
import androidx.lifecycle.LiveData;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p017e0.C0407a;
import p017e0.ComponentCallbacksC0411c;
import p028h.AbstractC0574c;
import p029h0.AbstractC0575a;
import p029h0.C0576b;
import p039k.C0657d;
import p039k.C0666h;
import p039k.C0667i;
import p046m1.C0736h;
import p057q1.C0844h;
import p073x.C0927a;
/* renamed from: e0.g */
/* loaded from: classes.dex */
public final class LayoutInflater$Factory2C0421g extends AbstractC0420f implements LayoutInflater.Factory2 {

    /* renamed from: y */
    public static final /* synthetic */ int f1630y = 0;

    /* renamed from: b */
    public boolean f1631b;

    /* renamed from: e */
    public SparseArray<ComponentCallbacksC0411c> f1634e;

    /* renamed from: f */
    public ArrayList<C0407a> f1635f;

    /* renamed from: g */
    public ArrayList<ComponentCallbacksC0411c> f1636g;

    /* renamed from: h */
    public ArrayList<C0407a> f1637h;

    /* renamed from: i */
    public ArrayList<Integer> f1638i;

    /* renamed from: l */
    public AbstractC0419e f1641l;

    /* renamed from: m */
    public AbstractC0574c f1642m;

    /* renamed from: n */
    public ComponentCallbacksC0411c f1643n;

    /* renamed from: o */
    public ComponentCallbacksC0411c f1644o;

    /* renamed from: p */
    public boolean f1645p;

    /* renamed from: q */
    public boolean f1646q;

    /* renamed from: r */
    public boolean f1647r;

    /* renamed from: s */
    public boolean f1648s;

    /* renamed from: t */
    public ArrayList<C0407a> f1649t;

    /* renamed from: u */
    public ArrayList<Boolean> f1650u;

    /* renamed from: v */
    public ArrayList<ComponentCallbacksC0411c> f1651v;

    /* renamed from: x */
    public C0426h f1653x;

    /* renamed from: c */
    public int f1632c = 0;

    /* renamed from: d */
    public final ArrayList<ComponentCallbacksC0411c> f1633d = new ArrayList<>();

    /* renamed from: j */
    public final CopyOnWriteArrayList<C0423b> f1639j = new CopyOnWriteArrayList<>();

    /* renamed from: k */
    public int f1640k = 0;

    /* renamed from: w */
    public Bundle f1652w = null;

    /* renamed from: e0.g$a */
    /* loaded from: classes.dex */
    public class RunnableC0422a implements Runnable {
        public RunnableC0422a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            LayoutInflater$Factory2C0421g.this.m783F();
        }
    }

    /* renamed from: e0.g$b */
    /* loaded from: classes.dex */
    public static final class C0423b {
    }

    /* renamed from: e0.g$c */
    /* loaded from: classes.dex */
    public static class C0424c {

        /* renamed from: a */
        public static final int[] f1655a = {16842755, 16842960, 16842961};
    }

    /* renamed from: e0.g$d */
    /* loaded from: classes.dex */
    public static class C0425d {

        /* renamed from: a */
        public int f1656a;

        /* renamed from: a */
        public final void m737a() {
            throw null;
        }

        /* renamed from: b */
        public final void m736b() {
            throw null;
        }
    }

    static {
        new DecelerateInterpolator(2.5f);
        new DecelerateInterpolator(1.5f);
        new AccelerateInterpolator(2.5f);
        new AccelerateInterpolator(1.5f);
    }

    public LayoutInflater$Factory2C0421g() {
        new RunnableC0422a();
    }

    /* renamed from: W */
    public static void m766W(C0426h c0426h) {
        if (c0426h == null) {
            return;
        }
        List<ComponentCallbacksC0411c> list = c0426h.f1657a;
        if (list != null) {
            for (ComponentCallbacksC0411c componentCallbacksC0411c : list) {
                componentCallbacksC0411c.f1564D = true;
            }
        }
        List<C0426h> list2 = c0426h.f1658b;
        if (list2 != null) {
            for (C0426h c0426h2 : list2) {
                m766W(c0426h2);
            }
        }
    }

    /* renamed from: A */
    public final void m788A(boolean z) {
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(size);
            if (componentCallbacksC0411c != null && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                layoutInflater$Factory2C0421g.m788A(z);
            }
        }
    }

    /* renamed from: B */
    public final boolean m787B() {
        boolean z;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (this.f1640k < 1) {
            return false;
        }
        int i = 0;
        boolean z2 = false;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i < arrayList.size()) {
                ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
                if (componentCallbacksC0411c != null) {
                    if (!componentCallbacksC0411c.f1561A && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                        z = layoutInflater$Factory2C0421g.m787B() | false;
                    } else {
                        z = false;
                    }
                    if (z) {
                        z2 = true;
                    }
                }
                i++;
            } else {
                return z2;
            }
        }
    }

    /* renamed from: C */
    public final void m786C(int i) {
        try {
            this.f1631b = true;
            m776M(i, false);
            this.f1631b = false;
            m783F();
        } catch (Throwable th) {
            this.f1631b = false;
            throw th;
        }
    }

    /* renamed from: D */
    public final void m785D(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2;
        int size3;
        int size4;
        String str3 = str + "    ";
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        if (sparseArray != null && (size4 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size4; i++) {
                ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(valueAt);
                if (valueAt != null) {
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(valueAt.f1598x));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(valueAt.f1599y));
                    printWriter.print(" mTag=");
                    printWriter.println(valueAt.f1600z);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(valueAt.f1576b);
                    printWriter.print(" mIndex=");
                    printWriter.print(valueAt.f1579e);
                    printWriter.print(" mWho=");
                    printWriter.print(valueAt.f1580f);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(valueAt.f1591q);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(valueAt.f1585k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(valueAt.f1586l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(valueAt.f1587m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(valueAt.f1588n);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(valueAt.f1561A);
                    printWriter.print(" mDetached=");
                    printWriter.print(valueAt.f1562B);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(valueAt.f1565E);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(valueAt.f1563C);
                    printWriter.print(" mRetaining=");
                    printWriter.print(valueAt.f1564D);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(valueAt.f1570J);
                    if (valueAt.f1592r != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(valueAt.f1592r);
                    }
                    if (valueAt.f1593s != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(valueAt.f1593s);
                    }
                    if (valueAt.f1597w != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(valueAt.f1597w);
                    }
                    if (valueAt.f1581g != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(valueAt.f1581g);
                    }
                    if (valueAt.f1577c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(valueAt.f1577c);
                    }
                    if (valueAt.f1578d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(valueAt.f1578d);
                    }
                    if (valueAt.f1582h != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(valueAt.f1582h);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(valueAt.f1584j);
                    }
                    ComponentCallbacksC0411c.C0413b c0413b = valueAt.f1571K;
                    if ((c0413b == null ? 0 : c0413b.f1605d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("mNextAnim=");
                        ComponentCallbacksC0411c.C0413b c0413b2 = valueAt.f1571K;
                        printWriter.println(c0413b2 == null ? 0 : c0413b2.f1605d);
                    }
                    if (valueAt.f1567G != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(valueAt.f1567G);
                    }
                    if (valueAt.f1568H != null) {
                        printWriter.print(str3);
                        printWriter.print("mInnerView=");
                        printWriter.println((Object) null);
                    }
                    if (valueAt.m801b() != null) {
                        printWriter.print(str3);
                        printWriter.print("mAnimatingAway=");
                        printWriter.println(valueAt.m801b());
                        printWriter.print(str3);
                        printWriter.print("mStateAfterAnimating=");
                        ComponentCallbacksC0411c.C0413b c0413b3 = valueAt.f1571K;
                        printWriter.println(c0413b3 == null ? 0 : c0413b3.f1604c);
                    }
                    AbstractC0419e abstractC0419e = valueAt.f1593s;
                    if ((abstractC0419e != null ? abstractC0419e.f1627b : null) != null) {
                        AbstractC0575a.m518a(valueAt).m517b(str3, printWriter);
                    }
                    if (valueAt.f1594t != null) {
                        printWriter.print(str3);
                        printWriter.println("Child " + valueAt.f1594t + ":");
                        valueAt.f1594t.m785D(str3 + "  ", fileDescriptor, printWriter, strArr);
                    }
                }
            }
        }
        int size5 = this.f1633d.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f1633d.get(i2).toString());
            }
        }
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1636g;
        if (arrayList != null && (size3 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size3; i3++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(this.f1636g.get(i3).toString());
            }
        }
        ArrayList<C0407a> arrayList2 = this.f1635f;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size2; i4++) {
                C0407a c0407a = this.f1635f.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(c0407a.toString());
                printWriter.print(str3);
                printWriter.print("mName=");
                printWriter.print(c0407a.f1532j);
                printWriter.print(" mIndex=");
                printWriter.print(c0407a.f1533k);
                printWriter.print(" mCommitted=");
                printWriter.println(false);
                if (c0407a.f1529g != 0) {
                    printWriter.print(str3);
                    printWriter.print("mTransition=#");
                    printWriter.print(Integer.toHexString(c0407a.f1529g));
                    printWriter.print(" mTransitionStyle=#");
                    printWriter.println(Integer.toHexString(c0407a.f1530h));
                }
                if (c0407a.f1525c != 0 || c0407a.f1526d != 0) {
                    printWriter.print(str3);
                    printWriter.print("mEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0407a.f1525c));
                    printWriter.print(" mExitAnim=#");
                    printWriter.println(Integer.toHexString(c0407a.f1526d));
                }
                if (c0407a.f1527e != 0 || c0407a.f1528f != 0) {
                    printWriter.print(str3);
                    printWriter.print("mPopEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0407a.f1527e));
                    printWriter.print(" mPopExitAnim=#");
                    printWriter.println(Integer.toHexString(c0407a.f1528f));
                }
                if (c0407a.f1534l != 0 || c0407a.f1535m != null) {
                    printWriter.print(str3);
                    printWriter.print("mBreadCrumbTitleRes=#");
                    printWriter.print(Integer.toHexString(c0407a.f1534l));
                    printWriter.print(" mBreadCrumbTitleText=");
                    printWriter.println(c0407a.f1535m);
                }
                if (c0407a.f1536n != 0 || c0407a.f1537o != null) {
                    printWriter.print(str3);
                    printWriter.print("mBreadCrumbShortTitleRes=#");
                    printWriter.print(Integer.toHexString(c0407a.f1536n));
                    printWriter.print(" mBreadCrumbShortTitleText=");
                    printWriter.println(c0407a.f1537o);
                }
                ArrayList<C0407a.C0408a> arrayList3 = c0407a.f1524b;
                if (!arrayList3.isEmpty()) {
                    printWriter.print(str3);
                    printWriter.println("Operations:");
                    int size6 = arrayList3.size();
                    for (int i5 = 0; i5 < size6; i5++) {
                        C0407a.C0408a c0408a = arrayList3.get(i5);
                        switch (c0408a.f1541a) {
                            case 0:
                                str2 = "NULL";
                                break;
                            case 1:
                                str2 = "ADD";
                                break;
                            case 2:
                                str2 = "REPLACE";
                                break;
                            case 3:
                                str2 = "REMOVE";
                                break;
                            case 4:
                                str2 = "HIDE";
                                break;
                            case 5:
                                str2 = "SHOW";
                                break;
                            case 6:
                                str2 = "DETACH";
                                break;
                            case 7:
                                str2 = "ATTACH";
                                break;
                            case 8:
                                str2 = "SET_PRIMARY_NAV";
                                break;
                            case 9:
                                str2 = "UNSET_PRIMARY_NAV";
                                break;
                            default:
                                str2 = "cmd=" + c0408a.f1541a;
                                break;
                        }
                        printWriter.print(str3);
                        printWriter.print("  Op #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.print(str2);
                        printWriter.print(" ");
                        printWriter.println(c0408a.f1542b);
                        if (c0408a.f1543c != 0 || c0408a.f1544d != 0) {
                            printWriter.print(str3);
                            printWriter.print("enterAnim=#");
                            printWriter.print(Integer.toHexString(c0408a.f1543c));
                            printWriter.print(" exitAnim=#");
                            printWriter.println(Integer.toHexString(c0408a.f1544d));
                        }
                        if (c0408a.f1545e != 0 || c0408a.f1546f != 0) {
                            printWriter.print(str3);
                            printWriter.print("popEnterAnim=#");
                            printWriter.print(Integer.toHexString(c0408a.f1545e));
                            printWriter.print(" popExitAnim=#");
                            printWriter.println(Integer.toHexString(c0408a.f1546f));
                        }
                    }
                }
            }
        }
        synchronized (this) {
            ArrayList<C0407a> arrayList4 = this.f1637h;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size; i6++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println((C0407a) this.f1637h.get(i6));
                }
            }
            ArrayList<Integer> arrayList5 = this.f1638i;
            if (arrayList5 != null && arrayList5.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f1638i.toArray()));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1641l);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1642m);
        if (this.f1643n != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1643n);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1640k);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1645p);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1646q);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1647r);
    }

    /* renamed from: E */
    public final void m784E() {
        if (!this.f1631b) {
            if (this.f1641l != null) {
                if (Looper.myLooper() == this.f1641l.f1628c.getLooper()) {
                    if (this.f1649t == null) {
                        this.f1649t = new ArrayList<>();
                        this.f1650u = new ArrayList<>();
                    }
                    this.f1631b = true;
                    try {
                        m781H(null, null);
                        return;
                    } finally {
                        this.f1631b = false;
                    }
                }
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: F */
    public final void m783F() {
        m784E();
        synchronized (this) {
        }
        if (this.f1648s) {
            this.f1648s = false;
            m765X();
        }
        m760d();
    }

    /* renamed from: G */
    public final void m782G(ArrayList<C0407a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        ComponentCallbacksC0411c componentCallbacksC0411c;
        ArrayList<C0407a> arrayList3 = arrayList;
        ArrayList<Boolean> arrayList4 = arrayList2;
        boolean z2 = arrayList3.get(i).f1540r;
        ArrayList<ComponentCallbacksC0411c> arrayList5 = this.f1651v;
        if (arrayList5 == null) {
            this.f1651v = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.f1651v.addAll(this.f1633d);
        ComponentCallbacksC0411c componentCallbacksC0411c2 = this.f1644o;
        int i6 = i;
        boolean z3 = false;
        while (true) {
            int i7 = 1;
            if (i6 < i2) {
                C0407a c0407a = arrayList3.get(i6);
                if (!arrayList4.get(i6).booleanValue()) {
                    ArrayList<ComponentCallbacksC0411c> arrayList6 = this.f1651v;
                    int i8 = 0;
                    while (true) {
                        ArrayList<C0407a.C0408a> arrayList7 = c0407a.f1524b;
                        if (i8 < arrayList7.size()) {
                            C0407a.C0408a c0408a = arrayList7.get(i8);
                            int i9 = c0408a.f1541a;
                            if (i9 != i7) {
                                if (i9 != 2) {
                                    if (i9 != 3 && i9 != 6) {
                                        if (i9 != 7) {
                                            if (i9 == 8) {
                                                arrayList7.add(i8, new C0407a.C0408a(9, componentCallbacksC0411c2));
                                                i8++;
                                                componentCallbacksC0411c2 = c0408a.f1542b;
                                            }
                                        }
                                    } else {
                                        arrayList6.remove(c0408a.f1542b);
                                        ComponentCallbacksC0411c componentCallbacksC0411c3 = c0408a.f1542b;
                                        if (componentCallbacksC0411c3 == componentCallbacksC0411c2) {
                                            arrayList7.add(i8, new C0407a.C0408a(9, componentCallbacksC0411c3));
                                            i8++;
                                            i5 = 1;
                                            componentCallbacksC0411c2 = null;
                                        }
                                    }
                                    i5 = 1;
                                } else {
                                    componentCallbacksC0411c = c0408a.f1542b;
                                    int i10 = componentCallbacksC0411c.f1599y;
                                    boolean z4 = false;
                                    for (int size = arrayList6.size() - 1; size >= 0; size--) {
                                        ComponentCallbacksC0411c componentCallbacksC0411c4 = arrayList6.get(size);
                                        if (componentCallbacksC0411c4.f1599y == i10) {
                                            if (componentCallbacksC0411c4 == componentCallbacksC0411c) {
                                                z4 = true;
                                            } else {
                                                if (componentCallbacksC0411c4 == componentCallbacksC0411c2) {
                                                    arrayList7.add(i8, new C0407a.C0408a(9, componentCallbacksC0411c4));
                                                    i8++;
                                                    componentCallbacksC0411c2 = null;
                                                }
                                                C0407a.C0408a c0408a2 = new C0407a.C0408a(3, componentCallbacksC0411c4);
                                                c0408a2.f1543c = c0408a.f1543c;
                                                c0408a2.f1545e = c0408a.f1545e;
                                                c0408a2.f1544d = c0408a.f1544d;
                                                c0408a2.f1546f = c0408a.f1546f;
                                                arrayList7.add(i8, c0408a2);
                                                arrayList6.remove(componentCallbacksC0411c4);
                                                i8++;
                                                componentCallbacksC0411c2 = componentCallbacksC0411c2;
                                            }
                                        }
                                    }
                                    i5 = 1;
                                    if (z4) {
                                        arrayList7.remove(i8);
                                        i8--;
                                    } else {
                                        c0408a.f1541a = 1;
                                        arrayList6.add(componentCallbacksC0411c);
                                    }
                                }
                                i8 += i5;
                                i7 = 1;
                            }
                            i5 = 1;
                            componentCallbacksC0411c = c0408a.f1542b;
                            arrayList6.add(componentCallbacksC0411c);
                            i8 += i5;
                            i7 = 1;
                        }
                    }
                } else {
                    int i11 = 1;
                    ArrayList<ComponentCallbacksC0411c> arrayList8 = this.f1651v;
                    int i12 = 0;
                    while (true) {
                        ArrayList<C0407a.C0408a> arrayList9 = c0407a.f1524b;
                        if (i12 < arrayList9.size()) {
                            C0407a.C0408a c0408a3 = arrayList9.get(i12);
                            int i13 = c0408a3.f1541a;
                            if (i13 != i11) {
                                if (i13 != 3) {
                                    switch (i13) {
                                        case 8:
                                            componentCallbacksC0411c2 = null;
                                            break;
                                        case 9:
                                            componentCallbacksC0411c2 = c0408a3.f1542b;
                                            break;
                                    }
                                    i12++;
                                    i11 = 1;
                                }
                                arrayList8.add(c0408a3.f1542b);
                                i12++;
                                i11 = 1;
                            }
                            arrayList8.remove(c0408a3.f1542b);
                            i12++;
                            i11 = 1;
                        }
                    }
                }
                if (!z3 && !c0407a.f1531i) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                i6++;
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
            } else {
                this.f1651v.clear();
                if (!z2) {
                    C0435o.m727i(this, arrayList, arrayList2, i, i2, false);
                }
                for (int i14 = i; i14 < i2; i14++) {
                    C0407a c0407a2 = arrayList.get(i14);
                    if (arrayList2.get(i14).booleanValue()) {
                        c0407a2.m806f(-1);
                        if (i14 == i2 - 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        c0407a2.m804h(z);
                    } else {
                        c0407a2.m806f(1);
                        c0407a2.m805g();
                    }
                }
                if (z2) {
                    C0657d<ComponentCallbacksC0411c> c0657d = new C0657d<>();
                    m763a(c0657d);
                    i3 = i;
                    for (int i15 = i2 - 1; i15 >= i3; i15--) {
                        C0407a c0407a3 = arrayList.get(i15);
                        arrayList2.get(i15).booleanValue();
                        int i16 = 0;
                        while (true) {
                            ArrayList<C0407a.C0408a> arrayList10 = c0407a3.f1524b;
                            if (i16 < arrayList10.size()) {
                                ComponentCallbacksC0411c componentCallbacksC0411c5 = arrayList10.get(i16).f1542b;
                                i16++;
                            }
                        }
                    }
                    int i17 = c0657d.f2273c;
                    for (int i18 = 0; i18 < i17; i18++) {
                        if (!((ComponentCallbacksC0411c) c0657d.f2272b[i18]).f1585k) {
                            throw null;
                        }
                    }
                } else {
                    i3 = i;
                }
                if (i2 != i3 && z2) {
                    C0435o.m727i(this, arrayList, arrayList2, i, i2, true);
                    m776M(this.f1640k, true);
                }
                while (i3 < i2) {
                    C0407a c0407a4 = arrayList.get(i3);
                    if (arrayList2.get(i3).booleanValue() && (i4 = c0407a4.f1533k) >= 0) {
                        synchronized (this) {
                            this.f1637h.set(i4, null);
                            if (this.f1638i == null) {
                                this.f1638i = new ArrayList<>();
                            }
                            this.f1638i.add(Integer.valueOf(i4));
                        }
                        c0407a4.f1533k = -1;
                    }
                    c0407a4.getClass();
                    i3++;
                }
                return;
            }
        }
    }

    /* renamed from: H */
    public final void m781H(ArrayList<C0407a> arrayList, ArrayList<Boolean> arrayList2) {
    }

    /* renamed from: I */
    public final ComponentCallbacksC0411c m780I(int i) {
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(size);
            if (componentCallbacksC0411c != null && componentCallbacksC0411c.f1598x == i) {
                return componentCallbacksC0411c;
            }
        }
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        if (sparseArray != null) {
            for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(size2);
                if (valueAt != null && valueAt.f1598x == i) {
                    return valueAt;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: J */
    public final ComponentCallbacksC0411c m779J(String str) {
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        if (sparseArray != null) {
            int size = sparseArray.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(size);
                if (valueAt != null) {
                    if (!str.equals(valueAt.f1580f)) {
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = valueAt.f1594t;
                        if (layoutInflater$Factory2C0421g != null) {
                            valueAt = layoutInflater$Factory2C0421g.m779J(str);
                        } else {
                            valueAt = null;
                        }
                    }
                    if (valueAt != null) {
                        return valueAt;
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: K */
    public final void m778K(ComponentCallbacksC0411c componentCallbacksC0411c) {
        if (componentCallbacksC0411c.f1579e >= 0) {
            return;
        }
        int i = this.f1632c;
        this.f1632c = i + 1;
        componentCallbacksC0411c.m794i(i, this.f1643n);
        if (this.f1634e == null) {
            this.f1634e = new SparseArray<>();
        }
        this.f1634e.put(componentCallbacksC0411c.f1579e, componentCallbacksC0411c);
    }

    /* renamed from: L */
    public final void m777L(ComponentCallbacksC0411c componentCallbacksC0411c) {
        int i;
        int i2;
        boolean z;
        if (componentCallbacksC0411c == null) {
            return;
        }
        int i3 = this.f1640k;
        if (componentCallbacksC0411c.f1586l) {
            if (componentCallbacksC0411c.f1591q > 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                i3 = Math.min(i3, 1);
            } else {
                i3 = Math.min(i3, 0);
            }
        }
        int i4 = i3;
        ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
        if (c0413b == null) {
            i = 0;
        } else {
            i = c0413b.f1606e;
        }
        if (c0413b == null) {
            i2 = 0;
        } else {
            i2 = c0413b.f1607f;
        }
        m775N(componentCallbacksC0411c, i4, i, i2, false);
        if (componentCallbacksC0411c.f1572L) {
            componentCallbacksC0411c.f1572L = false;
        }
    }

    /* renamed from: M */
    public final void m776M(int i, boolean z) {
        if (this.f1641l == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.f1640k) {
            this.f1640k = i;
            if (this.f1634e != null) {
                ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    m777L(arrayList.get(i2));
                }
                int size2 = this.f1634e.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(i3);
                    if (valueAt != null && (valueAt.f1586l || valueAt.f1562B)) {
                        valueAt.getClass();
                        m777L(valueAt);
                    }
                }
                m765X();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0088, code lost:
        if (r0 != 3) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:267:? A[RETURN, SYNTHETIC] */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m775N(ComponentCallbacksC0411c componentCallbacksC0411c, int i, int i2, int i3, boolean z) {
        int i4;
        int i5;
        ActivityC0415d activityC0415d;
        boolean z2;
        int i6;
        int i7;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        Activity activity;
        boolean z3;
        ComponentCallbacksC0411c componentCallbacksC0411c2;
        ViewGroup viewGroup;
        View view;
        String str;
        Context context;
        int i8;
        boolean z4;
        int i9 = 1;
        if (componentCallbacksC0411c.f1585k && !componentCallbacksC0411c.f1562B) {
            i4 = i;
        } else {
            i4 = i;
            if (i4 > 1) {
                i4 = 1;
            }
        }
        if (componentCallbacksC0411c.f1586l && i4 > (i8 = componentCallbacksC0411c.f1576b)) {
            if (i8 == 0) {
                if (componentCallbacksC0411c.f1591q > 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    i4 = 1;
                }
            }
            i4 = i8;
        }
        if (componentCallbacksC0411c.f1569I && componentCallbacksC0411c.f1576b < 3 && i4 > 2) {
            i5 = 2;
        } else {
            i5 = i4;
        }
        int i10 = componentCallbacksC0411c.f1576b;
        C0164h c0164h = componentCallbacksC0411c.f1574N;
        if (i10 <= i5) {
            if (componentCallbacksC0411c.f1587m && !componentCallbacksC0411c.f1588n) {
                return;
            }
            if (componentCallbacksC0411c.m801b() == null && componentCallbacksC0411c.m800c() == null) {
                i7 = -1;
            } else {
                componentCallbacksC0411c.m802a().f1602a = null;
                componentCallbacksC0411c.m802a().f1603b = null;
                ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
                if (c0413b == null) {
                    i6 = 0;
                } else {
                    i6 = c0413b.f1604c;
                }
                i7 = -1;
                m775N(componentCallbacksC0411c, i6, 0, 0, true);
            }
            int i11 = componentCallbacksC0411c.f1576b;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                    }
                    if (i5 > 2) {
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g2 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g2 != null) {
                            layoutInflater$Factory2C0421g2.m774O();
                            componentCallbacksC0411c.f1594t.m783F();
                        }
                        componentCallbacksC0411c.f1576b = 3;
                        componentCallbacksC0411c.f1566F = true;
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g3 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g3 != null) {
                            layoutInflater$Factory2C0421g3.f1645p = false;
                            layoutInflater$Factory2C0421g3.f1646q = false;
                            layoutInflater$Factory2C0421g3.m786C(3);
                        }
                        c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_START);
                        m742v(false);
                    }
                    if (i5 > 3) {
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g4 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g4 != null) {
                            layoutInflater$Factory2C0421g4.m774O();
                            componentCallbacksC0411c.f1594t.m783F();
                        }
                        componentCallbacksC0411c.f1576b = 4;
                        componentCallbacksC0411c.f1566F = true;
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g5 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g5 != null) {
                            layoutInflater$Factory2C0421g5.f1645p = false;
                            layoutInflater$Factory2C0421g5.f1646q = false;
                            layoutInflater$Factory2C0421g5.m786C(4);
                            componentCallbacksC0411c.f1594t.m783F();
                        }
                        c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_RESUME);
                        m744t(false);
                        componentCallbacksC0411c.f1577c = null;
                        componentCallbacksC0411c.f1578d = null;
                    }
                }
            } else if (i5 > 0) {
                Bundle bundle = componentCallbacksC0411c.f1577c;
                if (bundle != null) {
                    bundle.setClassLoader(this.f1641l.f1627b.getClassLoader());
                    componentCallbacksC0411c.f1578d = componentCallbacksC0411c.f1577c.getSparseParcelableArray("android:view_state");
                    int i12 = componentCallbacksC0411c.f1577c.getInt("android:target_state", i7);
                    if (i12 == i7) {
                        componentCallbacksC0411c2 = null;
                    } else {
                        ComponentCallbacksC0411c componentCallbacksC0411c3 = this.f1634e.get(i12);
                        if (componentCallbacksC0411c3 != null) {
                            componentCallbacksC0411c2 = componentCallbacksC0411c3;
                        } else {
                            m764Y(new IllegalStateException("Fragment no longer exists for key android:target_state: index " + i12));
                            throw null;
                        }
                    }
                    componentCallbacksC0411c.f1582h = componentCallbacksC0411c2;
                    if (componentCallbacksC0411c2 != null) {
                        componentCallbacksC0411c.f1584j = componentCallbacksC0411c.f1577c.getInt("android:target_req_state", 0);
                    }
                    boolean z5 = componentCallbacksC0411c.f1577c.getBoolean("android:user_visible_hint", true);
                    componentCallbacksC0411c.f1570J = z5;
                    if (!z5) {
                        componentCallbacksC0411c.f1569I = true;
                        if (i5 > 2) {
                            i5 = 2;
                        }
                    }
                }
                AbstractC0419e abstractC0419e = this.f1641l;
                componentCallbacksC0411c.f1593s = abstractC0419e;
                ComponentCallbacksC0411c componentCallbacksC0411c4 = this.f1643n;
                componentCallbacksC0411c.f1597w = componentCallbacksC0411c4;
                if (componentCallbacksC0411c4 != null) {
                    layoutInflater$Factory2C0421g = componentCallbacksC0411c4.f1594t;
                } else {
                    layoutInflater$Factory2C0421g = abstractC0419e.f1629d;
                }
                componentCallbacksC0411c.f1592r = layoutInflater$Factory2C0421g;
                ComponentCallbacksC0411c componentCallbacksC0411c5 = componentCallbacksC0411c.f1582h;
                if (componentCallbacksC0411c5 != null) {
                    ComponentCallbacksC0411c componentCallbacksC0411c6 = this.f1634e.get(componentCallbacksC0411c5.f1579e);
                    ComponentCallbacksC0411c componentCallbacksC0411c7 = componentCallbacksC0411c.f1582h;
                    if (componentCallbacksC0411c6 == componentCallbacksC0411c7) {
                        if (componentCallbacksC0411c7.f1576b < 1) {
                            m775N(componentCallbacksC0411c7, 1, 0, 0, true);
                        }
                    } else {
                        throw new IllegalStateException("Fragment " + componentCallbacksC0411c + " declared target fragment " + componentCallbacksC0411c.f1582h + " that does not belong to this FragmentManager!");
                    }
                }
                Context context2 = this.f1641l.f1627b;
                m746r(false);
                componentCallbacksC0411c.f1566F = false;
                AbstractC0419e abstractC0419e2 = this.f1641l;
                Context context3 = abstractC0419e2.f1627b;
                componentCallbacksC0411c.f1566F = true;
                AbstractC0419e abstractC0419e3 = componentCallbacksC0411c.f1593s;
                if (abstractC0419e3 == null) {
                    activity = null;
                } else {
                    activity = abstractC0419e3.f1626a;
                }
                if (activity != null) {
                    componentCallbacksC0411c.f1566F = true;
                }
                if (componentCallbacksC0411c.f1566F) {
                    if (componentCallbacksC0411c.f1597w == null) {
                        ActivityC0415d.this.onAttachFragment(componentCallbacksC0411c);
                    }
                    Context context4 = this.f1641l.f1627b;
                    m751m(false);
                    if (!componentCallbacksC0411c.f1573M) {
                        m745s(false);
                        Bundle bundle2 = componentCallbacksC0411c.f1577c;
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g6 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g6 != null) {
                            layoutInflater$Factory2C0421g6.m774O();
                        }
                        componentCallbacksC0411c.f1576b = 1;
                        componentCallbacksC0411c.f1566F = true;
                        componentCallbacksC0411c.m796g(bundle2);
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g7 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g7 != null) {
                            if (layoutInflater$Factory2C0421g7.f1640k >= 1) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (!z3) {
                                layoutInflater$Factory2C0421g7.f1645p = false;
                                layoutInflater$Factory2C0421g7.f1646q = false;
                                layoutInflater$Factory2C0421g7.m786C(1);
                            }
                        }
                        componentCallbacksC0411c.f1573M = true;
                        if (componentCallbacksC0411c.f1566F) {
                            c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_CREATE);
                            m750n(false);
                        } else {
                            throw new C0445v("Fragment " + componentCallbacksC0411c + " did not call through to super.onCreate()");
                        }
                    } else {
                        componentCallbacksC0411c.m796g(componentCallbacksC0411c.f1577c);
                        componentCallbacksC0411c.f1576b = 1;
                    }
                    componentCallbacksC0411c.f1564D = false;
                } else {
                    throw new C0445v("Fragment " + componentCallbacksC0411c + " did not call through to super.onAttach()");
                }
            }
            if (componentCallbacksC0411c.f1587m && !componentCallbacksC0411c.f1590p) {
                componentCallbacksC0411c.m797f();
                LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g8 = componentCallbacksC0411c.f1594t;
                if (layoutInflater$Factory2C0421g8 != null) {
                    layoutInflater$Factory2C0421g8.m774O();
                }
                componentCallbacksC0411c.f1590p = true;
                componentCallbacksC0411c.getClass();
                componentCallbacksC0411c.getClass();
                componentCallbacksC0411c.f1568H = null;
            }
            if (i5 > 1) {
                if (!componentCallbacksC0411c.f1587m) {
                    int i13 = componentCallbacksC0411c.f1599y;
                    if (i13 != 0) {
                        if (i13 != i7) {
                            viewGroup = (ViewGroup) this.f1642m.mo520d(i13);
                            if (viewGroup == null && !componentCallbacksC0411c.f1589o) {
                                try {
                                    AbstractC0419e abstractC0419e4 = componentCallbacksC0411c.f1593s;
                                    if (abstractC0419e4 == null) {
                                        context = null;
                                    } else {
                                        context = abstractC0419e4.f1627b;
                                    }
                                } catch (Resources.NotFoundException unused) {
                                    str = "unknown";
                                }
                                if (context != null) {
                                    str = context.getResources().getResourceName(componentCallbacksC0411c.f1599y);
                                    m764Y(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(componentCallbacksC0411c.f1599y) + " (" + str + ") for fragment " + componentCallbacksC0411c));
                                    throw null;
                                }
                                throw new IllegalStateException("Fragment " + componentCallbacksC0411c + " not attached to a context.");
                            }
                            view = null;
                        } else {
                            m764Y(new IllegalArgumentException("Cannot create fragment " + componentCallbacksC0411c + " for a container view with no id"));
                            throw null;
                        }
                    } else {
                        viewGroup = null;
                        view = null;
                    }
                    componentCallbacksC0411c.f1567G = viewGroup;
                    componentCallbacksC0411c.m797f();
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g9 = componentCallbacksC0411c.f1594t;
                    if (layoutInflater$Factory2C0421g9 != null) {
                        layoutInflater$Factory2C0421g9.m774O();
                    }
                    componentCallbacksC0411c.f1590p = true;
                    componentCallbacksC0411c.getClass();
                    componentCallbacksC0411c.getClass();
                    componentCallbacksC0411c.f1568H = view;
                }
                LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g10 = componentCallbacksC0411c.f1594t;
                if (layoutInflater$Factory2C0421g10 != null) {
                    layoutInflater$Factory2C0421g10.m774O();
                }
                componentCallbacksC0411c.f1576b = 2;
                componentCallbacksC0411c.f1566F = true;
                LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g11 = componentCallbacksC0411c.f1594t;
                if (layoutInflater$Factory2C0421g11 != null) {
                    layoutInflater$Factory2C0421g11.f1645p = false;
                    layoutInflater$Factory2C0421g11.f1646q = false;
                    layoutInflater$Factory2C0421g11.m786C(2);
                }
                m752l(false);
                componentCallbacksC0411c.f1577c = null;
            }
            if (i5 > 2) {
            }
            if (i5 > 3) {
            }
        } else if (i10 > i5) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (i5 < 4) {
                                c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_PAUSE);
                                LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g12 = componentCallbacksC0411c.f1594t;
                                if (layoutInflater$Factory2C0421g12 != null) {
                                    layoutInflater$Factory2C0421g12.m786C(3);
                                }
                                componentCallbacksC0411c.f1576b = 3;
                                componentCallbacksC0411c.f1566F = true;
                                m747q(false);
                            }
                        }
                    }
                    if (i5 < 3) {
                        c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_STOP);
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g13 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g13 != null) {
                            layoutInflater$Factory2C0421g13.f1646q = true;
                            layoutInflater$Factory2C0421g13.m786C(2);
                        }
                        componentCallbacksC0411c.f1576b = 2;
                        componentCallbacksC0411c.f1566F = true;
                        m741w(false);
                    }
                }
                if (i5 < 2) {
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g14 = componentCallbacksC0411c.f1594t;
                    if (layoutInflater$Factory2C0421g14 != null) {
                        layoutInflater$Factory2C0421g14.m786C(1);
                    }
                    componentCallbacksC0411c.f1576b = 1;
                    componentCallbacksC0411c.f1566F = true;
                    C0667i<C0576b.C0577a> c0667i = AbstractC0575a.m518a(componentCallbacksC0411c).f2130b.f2131a;
                    int m391f = c0667i.m391f();
                    for (int i14 = 0; i14 < m391f; i14++) {
                        c0667i.m390g(i14).getClass();
                    }
                    componentCallbacksC0411c.f1590p = false;
                    m740x(false);
                    componentCallbacksC0411c.f1567G = null;
                    componentCallbacksC0411c.getClass();
                    C0168j<InterfaceC0163g> c0168j = componentCallbacksC0411c.f1575O;
                    c0168j.getClass();
                    LiveData.m1222a("setValue");
                    c0168j.f680e++;
                    c0168j.f678c = null;
                    c0168j.m1221b(null);
                    componentCallbacksC0411c.f1568H = null;
                    componentCallbacksC0411c.f1588n = false;
                }
            }
            if (i5 < 1) {
                if (this.f1647r) {
                    if (componentCallbacksC0411c.m801b() != null) {
                        View m801b = componentCallbacksC0411c.m801b();
                        componentCallbacksC0411c.m802a().f1602a = null;
                        m801b.clearAnimation();
                    } else if (componentCallbacksC0411c.m800c() != null) {
                        Animator m800c = componentCallbacksC0411c.m800c();
                        componentCallbacksC0411c.m802a().f1603b = null;
                        m800c.cancel();
                    }
                }
                if (componentCallbacksC0411c.m801b() == null && componentCallbacksC0411c.m800c() == null) {
                    if (!componentCallbacksC0411c.f1564D) {
                        c0164h.m1208b(AbstractC0160f.EnumC0161a.ON_DESTROY);
                        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g15 = componentCallbacksC0411c.f1594t;
                        if (layoutInflater$Factory2C0421g15 != null) {
                            layoutInflater$Factory2C0421g15.m755i();
                        }
                        componentCallbacksC0411c.f1576b = 0;
                        componentCallbacksC0411c.f1573M = false;
                        componentCallbacksC0411c.f1566F = true;
                        AbstractC0419e abstractC0419e5 = componentCallbacksC0411c.f1593s;
                        if (abstractC0419e5 == null) {
                            activityC0415d = null;
                        } else {
                            activityC0415d = (ActivityC0415d) abstractC0419e5.f1626a;
                        }
                        if (activityC0415d != null && activityC0415d.isChangingConfigurations()) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        C0171m c0171m = componentCallbacksC0411c.f1596v;
                        if (c0171m != null && !z2) {
                            c0171m.m1202a();
                        }
                        if (componentCallbacksC0411c.f1566F) {
                            componentCallbacksC0411c.f1594t = null;
                            m749o(false);
                        } else {
                            throw new C0445v("Fragment " + componentCallbacksC0411c + " did not call through to super.onDestroy()");
                        }
                    } else {
                        componentCallbacksC0411c.f1576b = 0;
                    }
                    componentCallbacksC0411c.f1566F = true;
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g16 = componentCallbacksC0411c.f1594t;
                    if (layoutInflater$Factory2C0421g16 != null) {
                        if (componentCallbacksC0411c.f1564D) {
                            layoutInflater$Factory2C0421g16.m755i();
                            componentCallbacksC0411c.f1594t = null;
                        } else {
                            throw new IllegalStateException("Child FragmentManager of " + componentCallbacksC0411c + " was not  destroyed and this fragment is not retaining instance");
                        }
                    }
                    m748p(false);
                    if (!z) {
                        if (!componentCallbacksC0411c.f1564D) {
                            int i15 = componentCallbacksC0411c.f1579e;
                            if (i15 >= 0) {
                                this.f1634e.put(i15, null);
                                componentCallbacksC0411c.f1579e = -1;
                                componentCallbacksC0411c.f1580f = null;
                                componentCallbacksC0411c.f1585k = false;
                                componentCallbacksC0411c.f1586l = false;
                                componentCallbacksC0411c.f1587m = false;
                                componentCallbacksC0411c.f1588n = false;
                                componentCallbacksC0411c.f1589o = false;
                                componentCallbacksC0411c.f1591q = 0;
                                componentCallbacksC0411c.f1592r = null;
                                componentCallbacksC0411c.f1594t = null;
                                componentCallbacksC0411c.f1593s = null;
                                componentCallbacksC0411c.f1598x = 0;
                                componentCallbacksC0411c.f1599y = 0;
                                componentCallbacksC0411c.f1600z = null;
                                componentCallbacksC0411c.f1561A = false;
                                componentCallbacksC0411c.f1562B = false;
                                componentCallbacksC0411c.f1564D = false;
                            }
                        } else {
                            componentCallbacksC0411c.f1593s = null;
                            componentCallbacksC0411c.f1597w = null;
                            componentCallbacksC0411c.f1592r = null;
                        }
                    }
                } else {
                    componentCallbacksC0411c.m802a().f1604c = i5;
                    if (componentCallbacksC0411c.f1576b == i9) {
                        Log.w("FragmentManager", "moveToState: Fragment state for " + componentCallbacksC0411c + " not updated inline; expected state " + i9 + " found " + componentCallbacksC0411c.f1576b);
                        componentCallbacksC0411c.f1576b = i9;
                        return;
                    }
                    return;
                }
            }
        }
        i9 = i5;
        if (componentCallbacksC0411c.f1576b == i9) {
        }
    }

    /* renamed from: O */
    public final void m774O() {
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        this.f1653x = null;
        this.f1645p = false;
        this.f1646q = false;
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
            if (componentCallbacksC0411c != null && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                layoutInflater$Factory2C0421g.m774O();
            }
        }
    }

    /* renamed from: P */
    public final boolean m773P() {
        boolean z;
        boolean z2;
        int size;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (!this.f1645p && !this.f1646q) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            m783F();
            m784E();
            ComponentCallbacksC0411c componentCallbacksC0411c = this.f1644o;
            if (componentCallbacksC0411c != null && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null && layoutInflater$Factory2C0421g.m773P()) {
                return true;
            }
            ArrayList<C0407a> arrayList = this.f1649t;
            ArrayList<Boolean> arrayList2 = this.f1650u;
            ArrayList<C0407a> arrayList3 = this.f1635f;
            if (arrayList3 == null || (size = arrayList3.size() - 1) < 0) {
                z2 = false;
            } else {
                arrayList.add(this.f1635f.remove(size));
                arrayList2.add(Boolean.TRUE);
                z2 = true;
            }
            if (z2) {
                this.f1631b = true;
                try {
                    ArrayList<C0407a> arrayList4 = this.f1649t;
                    ArrayList<Boolean> arrayList5 = this.f1650u;
                    if (arrayList4 != null && !arrayList4.isEmpty()) {
                        if (arrayList5 != null && arrayList4.size() == arrayList5.size()) {
                            m781H(arrayList4, arrayList5);
                            int size2 = arrayList4.size();
                            int i = 0;
                            int i2 = 0;
                            while (i < size2) {
                                if (!arrayList4.get(i).f1540r) {
                                    if (i2 != i) {
                                        m782G(arrayList4, arrayList5, i2, i);
                                    }
                                    i2 = i + 1;
                                    if (arrayList5.get(i).booleanValue()) {
                                        while (i2 < size2 && arrayList5.get(i2).booleanValue() && !arrayList4.get(i2).f1540r) {
                                            i2++;
                                        }
                                    }
                                    m782G(arrayList4, arrayList5, i, i2);
                                    i = i2 - 1;
                                }
                                i++;
                            }
                            if (i2 != size2) {
                                m782G(arrayList4, arrayList5, i2, size2);
                            }
                        } else {
                            throw new IllegalStateException("Internal error with the back stack records");
                        }
                    }
                } finally {
                    this.f1631b = false;
                    this.f1650u.clear();
                    this.f1649t.clear();
                }
            }
            if (this.f1648s) {
                this.f1648s = false;
                m765X();
            }
            m760d();
            return z2;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: Q */
    public final void m772Q(ComponentCallbacksC0411c componentCallbacksC0411c) {
        boolean z;
        if (componentCallbacksC0411c.f1591q > 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !z;
        if (!componentCallbacksC0411c.f1562B || z2) {
            synchronized (this.f1633d) {
                this.f1633d.remove(componentCallbacksC0411c);
            }
            componentCallbacksC0411c.f1585k = false;
            componentCallbacksC0411c.f1586l = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    public final void m771R(Parcelable parcelable, C0426h c0426h) {
        List<C0426h> list;
        List<C0171m> list2;
        ComponentCallbacksC0411c componentCallbacksC0411c;
        int i;
        C0426h c0426h2;
        C0171m c0171m;
        ComponentCallbacksC0411c m799d;
        int i2;
        C0429j[] c0429jArr;
        if (parcelable == null) {
            return;
        }
        C0427i c0427i = (C0427i) parcelable;
        if (c0427i.f1660a == null) {
            return;
        }
        C0426h c0426h3 = null;
        if (c0426h != null) {
            List<ComponentCallbacksC0411c> list3 = c0426h.f1657a;
            list = c0426h.f1658b;
            list2 = c0426h.f1659c;
            if (list3 != null) {
                i2 = list3.size();
            } else {
                i2 = 0;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                ComponentCallbacksC0411c componentCallbacksC0411c2 = list3.get(i3);
                int i4 = 0;
                while (true) {
                    c0429jArr = c0427i.f1660a;
                    if (i4 >= c0429jArr.length || c0429jArr[i4].f1666b == componentCallbacksC0411c2.f1579e) {
                        break;
                    }
                    i4++;
                }
                if (i4 != c0429jArr.length) {
                    C0429j c0429j = c0429jArr[i4];
                    c0429j.f1676l = componentCallbacksC0411c2;
                    componentCallbacksC0411c2.f1578d = null;
                    componentCallbacksC0411c2.f1591q = 0;
                    componentCallbacksC0411c2.f1588n = false;
                    componentCallbacksC0411c2.f1585k = false;
                    componentCallbacksC0411c2.f1582h = null;
                    Bundle bundle = c0429j.f1675k;
                    if (bundle != null) {
                        bundle.setClassLoader(this.f1641l.f1627b.getClassLoader());
                        componentCallbacksC0411c2.f1578d = c0429j.f1675k.getSparseParcelableArray("android:view_state");
                        componentCallbacksC0411c2.f1577c = c0429j.f1675k;
                    }
                } else {
                    m764Y(new IllegalStateException("Could not find active fragment with index " + componentCallbacksC0411c2.f1579e));
                    throw null;
                }
            }
        } else {
            list = null;
            list2 = null;
        }
        this.f1634e = new SparseArray<>(c0427i.f1660a.length);
        int i5 = 0;
        while (true) {
            C0429j[] c0429jArr2 = c0427i.f1660a;
            if (i5 >= c0429jArr2.length) {
                break;
            }
            C0429j c0429j2 = c0429jArr2[i5];
            if (c0429j2 != null) {
                if (list != null && i5 < list.size()) {
                    c0426h2 = list.get(i5);
                } else {
                    c0426h2 = c0426h3;
                }
                if (list2 != null && i5 < list2.size()) {
                    c0171m = list2.get(i5);
                } else {
                    c0171m = c0426h3;
                }
                AbstractC0419e abstractC0419e = this.f1641l;
                AbstractC0574c abstractC0574c = this.f1642m;
                ComponentCallbacksC0411c componentCallbacksC0411c3 = this.f1643n;
                if (c0429j2.f1676l == null) {
                    Context context = abstractC0419e.f1627b;
                    Bundle bundle2 = c0429j2.f1673i;
                    if (bundle2 != null) {
                        bundle2.setClassLoader(context.getClassLoader());
                    }
                    String str = c0429j2.f1665a;
                    if (abstractC0574c != null) {
                        m799d = abstractC0574c.mo521c(context, str, bundle2);
                    } else {
                        m799d = ComponentCallbacksC0411c.m799d(context, str, bundle2);
                    }
                    c0429j2.f1676l = m799d;
                    Bundle bundle3 = c0429j2.f1675k;
                    if (bundle3 != null) {
                        bundle3.setClassLoader(context.getClassLoader());
                        c0429j2.f1676l.f1577c = c0429j2.f1675k;
                    }
                    c0429j2.f1676l.m794i(c0429j2.f1666b, componentCallbacksC0411c3);
                    ComponentCallbacksC0411c componentCallbacksC0411c4 = c0429j2.f1676l;
                    componentCallbacksC0411c4.f1587m = c0429j2.f1667c;
                    componentCallbacksC0411c4.f1589o = true;
                    componentCallbacksC0411c4.f1598x = c0429j2.f1668d;
                    componentCallbacksC0411c4.f1599y = c0429j2.f1669e;
                    componentCallbacksC0411c4.f1600z = c0429j2.f1670f;
                    componentCallbacksC0411c4.f1563C = c0429j2.f1671g;
                    componentCallbacksC0411c4.f1562B = c0429j2.f1672h;
                    componentCallbacksC0411c4.f1561A = c0429j2.f1674j;
                    componentCallbacksC0411c4.f1592r = abstractC0419e.f1629d;
                }
                ComponentCallbacksC0411c componentCallbacksC0411c5 = c0429j2.f1676l;
                componentCallbacksC0411c5.f1595u = c0426h2;
                componentCallbacksC0411c5.f1596v = c0171m;
                this.f1634e.put(componentCallbacksC0411c5.f1579e, componentCallbacksC0411c5);
                c0429j2.f1676l = null;
            }
            i5++;
            c0426h3 = null;
        }
        if (c0426h != null) {
            List<ComponentCallbacksC0411c> list4 = c0426h.f1657a;
            if (list4 != null) {
                i = list4.size();
            } else {
                i = 0;
            }
            for (int i6 = 0; i6 < i; i6++) {
                ComponentCallbacksC0411c componentCallbacksC0411c6 = list4.get(i6);
                int i7 = componentCallbacksC0411c6.f1583i;
                if (i7 >= 0) {
                    ComponentCallbacksC0411c componentCallbacksC0411c7 = this.f1634e.get(i7);
                    componentCallbacksC0411c6.f1582h = componentCallbacksC0411c7;
                    if (componentCallbacksC0411c7 == null) {
                        Log.w("FragmentManager", "Re-attaching retained fragment " + componentCallbacksC0411c6 + " target no longer exists: " + componentCallbacksC0411c6.f1583i);
                    }
                }
            }
        }
        this.f1633d.clear();
        if (c0427i.f1661b != null) {
            int i8 = 0;
            while (true) {
                int[] iArr = c0427i.f1661b;
                if (i8 >= iArr.length) {
                    break;
                }
                ComponentCallbacksC0411c componentCallbacksC0411c8 = this.f1634e.get(iArr[i8]);
                if (componentCallbacksC0411c8 != null) {
                    componentCallbacksC0411c8.f1585k = true;
                    if (!this.f1633d.contains(componentCallbacksC0411c8)) {
                        synchronized (this.f1633d) {
                            this.f1633d.add(componentCallbacksC0411c8);
                        }
                        i8++;
                    } else {
                        throw new IllegalStateException("Already added!");
                    }
                } else {
                    m764Y(new IllegalStateException("No instantiated fragment for index #" + c0427i.f1661b[i8]));
                    throw null;
                }
            }
        }
        if (c0427i.f1662c != null) {
            this.f1635f = new ArrayList<>(c0427i.f1662c.length);
            int i9 = 0;
            while (true) {
                C0409b[] c0409bArr = c0427i.f1662c;
                if (i9 >= c0409bArr.length) {
                    break;
                }
                C0409b c0409b = c0409bArr[i9];
                c0409b.getClass();
                C0407a c0407a = new C0407a(this);
                int i10 = 0;
                while (true) {
                    int[] iArr2 = c0409b.f1547a;
                    if (i10 >= iArr2.length) {
                        break;
                    }
                    C0407a.C0408a c0408a = new C0407a.C0408a();
                    int i11 = i10 + 1;
                    c0408a.f1541a = iArr2[i10];
                    int i12 = i11 + 1;
                    int i13 = iArr2[i11];
                    if (i13 >= 0) {
                        componentCallbacksC0411c = this.f1634e.get(i13);
                    } else {
                        componentCallbacksC0411c = null;
                    }
                    c0408a.f1542b = componentCallbacksC0411c;
                    int i14 = i12 + 1;
                    int i15 = iArr2[i12];
                    c0408a.f1543c = i15;
                    int i16 = i14 + 1;
                    int i17 = iArr2[i14];
                    c0408a.f1544d = i17;
                    int i18 = i16 + 1;
                    int i19 = iArr2[i16];
                    c0408a.f1545e = i19;
                    int i20 = iArr2[i18];
                    c0408a.f1546f = i20;
                    c0407a.f1525c = i15;
                    c0407a.f1526d = i17;
                    c0407a.f1527e = i19;
                    c0407a.f1528f = i20;
                    c0407a.f1524b.add(c0408a);
                    c0408a.f1543c = c0407a.f1525c;
                    c0408a.f1544d = c0407a.f1526d;
                    c0408a.f1545e = c0407a.f1527e;
                    c0408a.f1546f = c0407a.f1528f;
                    i10 = i18 + 1;
                }
                c0407a.f1529g = c0409b.f1548b;
                c0407a.f1530h = c0409b.f1549c;
                c0407a.f1532j = c0409b.f1550d;
                c0407a.f1533k = c0409b.f1551e;
                c0407a.f1531i = true;
                c0407a.f1534l = c0409b.f1552f;
                c0407a.f1535m = c0409b.f1553g;
                c0407a.f1536n = c0409b.f1554h;
                c0407a.f1537o = c0409b.f1555i;
                c0407a.f1538p = c0409b.f1556j;
                c0407a.f1539q = c0409b.f1557k;
                c0407a.f1540r = c0409b.f1558l;
                c0407a.m806f(1);
                this.f1635f.add(c0407a);
                int i21 = c0407a.f1533k;
                if (i21 >= 0) {
                    m768U(i21, c0407a);
                }
                i9++;
            }
        } else {
            this.f1635f = null;
        }
        int i22 = c0427i.f1663d;
        if (i22 >= 0) {
            this.f1644o = this.f1634e.get(i22);
        }
        this.f1632c = c0427i.f1664e;
    }

    /* renamed from: S */
    public final C0427i m770S() {
        C0409b[] c0409bArr;
        int[] iArr;
        int size;
        Bundle bundle;
        C0427i m770S;
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        int size2 = sparseArray == null ? 0 : sparseArray.size();
        int i = 0;
        while (true) {
            c0409bArr = null;
            if (i >= size2) {
                break;
            }
            ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(i);
            if (valueAt != null) {
                if (valueAt.m801b() != null) {
                    ComponentCallbacksC0411c.C0413b c0413b = valueAt.f1571K;
                    int i2 = c0413b == null ? 0 : c0413b.f1604c;
                    View m801b = valueAt.m801b();
                    Animation animation = m801b.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        m801b.clearAnimation();
                    }
                    valueAt.m802a().f1602a = null;
                    m775N(valueAt, i2, 0, 0, false);
                } else if (valueAt.m800c() != null) {
                    valueAt.m800c().end();
                }
            }
            i++;
        }
        m783F();
        this.f1645p = true;
        this.f1653x = null;
        SparseArray<ComponentCallbacksC0411c> sparseArray2 = this.f1634e;
        if (sparseArray2 == null || sparseArray2.size() <= 0) {
            return null;
        }
        int size3 = this.f1634e.size();
        C0429j[] c0429jArr = new C0429j[size3];
        boolean z = false;
        for (int i3 = 0; i3 < size3; i3++) {
            ComponentCallbacksC0411c valueAt2 = this.f1634e.valueAt(i3);
            if (valueAt2 != null) {
                if (valueAt2.f1579e < 0) {
                    m764Y(new IllegalStateException("Failure saving state: active " + valueAt2 + " has cleared index: " + valueAt2.f1579e));
                    throw null;
                }
                C0429j c0429j = new C0429j(valueAt2);
                c0429jArr[i3] = c0429j;
                if (valueAt2.f1576b <= 0 || c0429j.f1675k != null) {
                    c0429j.f1675k = valueAt2.f1577c;
                } else {
                    if (this.f1652w == null) {
                        this.f1652w = new Bundle();
                    }
                    Bundle bundle2 = this.f1652w;
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = valueAt2.f1594t;
                    if (layoutInflater$Factory2C0421g != null && (m770S = layoutInflater$Factory2C0421g.m770S()) != null) {
                        bundle2.putParcelable("android:support:fragments", m770S);
                    }
                    m743u(false);
                    if (this.f1652w.isEmpty()) {
                        bundle = null;
                    } else {
                        bundle = this.f1652w;
                        this.f1652w = null;
                    }
                    if (valueAt2.f1578d != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", valueAt2.f1578d);
                    }
                    if (!valueAt2.f1570J) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", valueAt2.f1570J);
                    }
                    c0429j.f1675k = bundle;
                    ComponentCallbacksC0411c componentCallbacksC0411c = valueAt2.f1582h;
                    if (componentCallbacksC0411c != null) {
                        if (componentCallbacksC0411c.f1579e >= 0) {
                            if (bundle == null) {
                                c0429j.f1675k = new Bundle();
                            }
                            Bundle bundle3 = c0429j.f1675k;
                            ComponentCallbacksC0411c componentCallbacksC0411c2 = valueAt2.f1582h;
                            int i4 = componentCallbacksC0411c2.f1579e;
                            if (i4 >= 0) {
                                bundle3.putInt("android:target_state", i4);
                                int i5 = valueAt2.f1584j;
                                if (i5 != 0) {
                                    c0429j.f1675k.putInt("android:target_req_state", i5);
                                }
                            } else {
                                m764Y(new IllegalStateException("Fragment " + componentCallbacksC0411c2 + " is not currently in the FragmentManager"));
                                throw null;
                            }
                        } else {
                            m764Y(new IllegalStateException("Failure saving state: " + valueAt2 + " has target not in fragment manager: " + valueAt2.f1582h));
                            throw null;
                        }
                    }
                }
                z = true;
            }
        }
        if (z) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            int size4 = arrayList.size();
            if (size4 > 0) {
                iArr = new int[size4];
                for (int i6 = 0; i6 < size4; i6++) {
                    int i7 = arrayList.get(i6).f1579e;
                    iArr[i6] = i7;
                    if (i7 < 0) {
                        m764Y(new IllegalStateException("Failure saving state: active " + arrayList.get(i6) + " has cleared index: " + iArr[i6]));
                        throw null;
                    }
                }
            } else {
                iArr = null;
            }
            ArrayList<C0407a> arrayList2 = this.f1635f;
            if (arrayList2 != null && (size = arrayList2.size()) > 0) {
                c0409bArr = new C0409b[size];
                for (int i8 = 0; i8 < size; i8++) {
                    c0409bArr[i8] = new C0409b(this.f1635f.get(i8));
                }
            }
            C0427i c0427i = new C0427i();
            c0427i.f1660a = c0429jArr;
            c0427i.f1661b = iArr;
            c0427i.f1662c = c0409bArr;
            ComponentCallbacksC0411c componentCallbacksC0411c3 = this.f1644o;
            if (componentCallbacksC0411c3 != null) {
                c0427i.f1663d = componentCallbacksC0411c3.f1579e;
            }
            c0427i.f1664e = this.f1632c;
            m769T();
            return c0427i;
        }
        return null;
    }

    /* renamed from: T */
    public final void m769T() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        C0426h c0426h;
        if (this.f1634e != null) {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
            for (int i = 0; i < this.f1634e.size(); i++) {
                ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(i);
                if (valueAt != null) {
                    if (valueAt.f1563C) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(valueAt);
                        ComponentCallbacksC0411c componentCallbacksC0411c = valueAt.f1582h;
                        valueAt.f1583i = componentCallbacksC0411c != null ? componentCallbacksC0411c.f1579e : -1;
                    }
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = valueAt.f1594t;
                    if (layoutInflater$Factory2C0421g != null) {
                        layoutInflater$Factory2C0421g.m769T();
                        c0426h = valueAt.f1594t.f1653x;
                    } else {
                        c0426h = valueAt.f1595u;
                    }
                    if (arrayList2 == null && c0426h != null) {
                        arrayList2 = new ArrayList(this.f1634e.size());
                        for (int i2 = 0; i2 < i; i2++) {
                            arrayList2.add(null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(c0426h);
                    }
                    if (arrayList3 == null && valueAt.f1596v != null) {
                        arrayList3 = new ArrayList(this.f1634e.size());
                        for (int i3 = 0; i3 < i; i3++) {
                            arrayList3.add(null);
                        }
                    }
                    if (arrayList3 != null) {
                        arrayList3.add(valueAt.f1596v);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
        }
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            this.f1653x = null;
        } else {
            this.f1653x = new C0426h(arrayList, arrayList2, arrayList3);
        }
    }

    /* renamed from: U */
    public final void m768U(int i, C0407a c0407a) {
        synchronized (this) {
            if (this.f1637h == null) {
                this.f1637h = new ArrayList<>();
            }
            int size = this.f1637h.size();
            if (i < size) {
                this.f1637h.set(i, c0407a);
            } else {
                while (size < i) {
                    this.f1637h.add(null);
                    if (this.f1638i == null) {
                        this.f1638i = new ArrayList<>();
                    }
                    this.f1638i.add(Integer.valueOf(size));
                    size++;
                }
                this.f1637h.add(c0407a);
            }
        }
    }

    /* renamed from: V */
    public final void m767V(ComponentCallbacksC0411c componentCallbacksC0411c) {
        if (componentCallbacksC0411c != null && (this.f1634e.get(componentCallbacksC0411c.f1579e) != componentCallbacksC0411c || (componentCallbacksC0411c.f1593s != null && componentCallbacksC0411c.f1592r != this))) {
            throw new IllegalArgumentException("Fragment " + componentCallbacksC0411c + " is not an active fragment of FragmentManager " + this);
        }
        this.f1644o = componentCallbacksC0411c;
    }

    /* renamed from: X */
    public final void m765X() {
        if (this.f1634e == null) {
            return;
        }
        for (int i = 0; i < this.f1634e.size(); i++) {
            ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(i);
            if (valueAt != null && valueAt.f1569I) {
                if (this.f1631b) {
                    this.f1648s = true;
                } else {
                    valueAt.f1569I = false;
                    m775N(valueAt, this.f1640k, 0, 0, false);
                }
            }
        }
    }

    /* renamed from: Y */
    public final void m764Y(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0927a());
        AbstractC0419e abstractC0419e = this.f1641l;
        try {
            if (abstractC0419e != null) {
                ActivityC0415d.this.dump("  ", null, printWriter, new String[0]);
            } else {
                m785D("  ", null, printWriter, new String[0]);
            }
        } catch (Exception e) {
            Log.e("FragmentManager", "Failed dumping state", e);
        }
        throw runtimeException;
    }

    /* renamed from: a */
    public final void m763a(C0657d<ComponentCallbacksC0411c> c0657d) {
        int i;
        int i2;
        int i3 = this.f1640k;
        if (i3 < 1) {
            return;
        }
        int min = Math.min(i3, 3);
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i4);
            if (componentCallbacksC0411c.f1576b < min) {
                ComponentCallbacksC0411c.C0413b c0413b = componentCallbacksC0411c.f1571K;
                if (c0413b == null) {
                    i = 0;
                } else {
                    i = c0413b.f1605d;
                }
                if (c0413b == null) {
                    i2 = 0;
                } else {
                    i2 = c0413b.f1606e;
                }
                m775N(componentCallbacksC0411c, min, i, i2, false);
            }
        }
    }

    /* renamed from: b */
    public final void m762b(ComponentCallbacksC0411c componentCallbacksC0411c, boolean z) {
        m778K(componentCallbacksC0411c);
        if (!componentCallbacksC0411c.f1562B) {
            if (!this.f1633d.contains(componentCallbacksC0411c)) {
                synchronized (this.f1633d) {
                    this.f1633d.add(componentCallbacksC0411c);
                }
                componentCallbacksC0411c.f1585k = true;
                componentCallbacksC0411c.f1586l = false;
                componentCallbacksC0411c.f1572L = false;
                if (z) {
                    m775N(componentCallbacksC0411c, this.f1640k, 0, 0, false);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + componentCallbacksC0411c);
        }
    }

    /* renamed from: c */
    public final void m761c(ComponentCallbacksC0411c componentCallbacksC0411c) {
        if (componentCallbacksC0411c.f1562B) {
            componentCallbacksC0411c.f1562B = false;
            if (componentCallbacksC0411c.f1585k) {
                return;
            }
            if (this.f1633d.contains(componentCallbacksC0411c)) {
                throw new IllegalStateException("Fragment already added: " + componentCallbacksC0411c);
            }
            synchronized (this.f1633d) {
                this.f1633d.add(componentCallbacksC0411c);
            }
            componentCallbacksC0411c.f1585k = true;
        }
    }

    /* renamed from: d */
    public final void m760d() {
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.f1634e.valueAt(size) == null) {
                    SparseArray<ComponentCallbacksC0411c> sparseArray2 = this.f1634e;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    /* renamed from: e */
    public final void m759e(C0407a c0407a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0407a.m804h(z3);
        } else {
            c0407a.m805g();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0407a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0435o.m727i(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            m776M(this.f1640k, true);
        }
        SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                this.f1634e.valueAt(i);
            }
        }
    }

    /* renamed from: f */
    public final void m758f() {
        int i = 0;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i < arrayList.size()) {
                ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
                if (componentCallbacksC0411c != null) {
                    componentCallbacksC0411c.f1566F = true;
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t;
                    if (layoutInflater$Factory2C0421g != null) {
                        layoutInflater$Factory2C0421g.m758f();
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: g */
    public final boolean m757g() {
        boolean z;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (this.f1640k < 1) {
            return false;
        }
        int i = 0;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i >= arrayList.size()) {
                return false;
            }
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
            if (componentCallbacksC0411c != null) {
                if (!componentCallbacksC0411c.f1561A && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null && layoutInflater$Factory2C0421g.m757g()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
            i++;
        }
    }

    /* renamed from: h */
    public final boolean m756h() {
        boolean z;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (this.f1640k < 1) {
            return false;
        }
        ArrayList<ComponentCallbacksC0411c> arrayList = null;
        int i = 0;
        boolean z2 = false;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList2 = this.f1633d;
            if (i >= arrayList2.size()) {
                break;
            }
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList2.get(i);
            if (componentCallbacksC0411c != null) {
                if (!componentCallbacksC0411c.f1561A && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                    z = layoutInflater$Factory2C0421g.m756h() | false;
                } else {
                    z = false;
                }
                if (z) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(componentCallbacksC0411c);
                    z2 = true;
                }
            }
            i++;
        }
        if (this.f1636g != null) {
            for (int i2 = 0; i2 < this.f1636g.size(); i2++) {
                ComponentCallbacksC0411c componentCallbacksC0411c2 = this.f1636g.get(i2);
                if (arrayList == null || !arrayList.contains(componentCallbacksC0411c2)) {
                    componentCallbacksC0411c2.getClass();
                }
            }
        }
        this.f1636g = arrayList;
        return z2;
    }

    /* renamed from: i */
    public final void m755i() {
        this.f1647r = true;
        m783F();
        m786C(0);
        this.f1641l = null;
        this.f1642m = null;
        this.f1643n = null;
    }

    /* renamed from: j */
    public final void m754j() {
        int i = 0;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i < arrayList.size()) {
                ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
                if (componentCallbacksC0411c != null) {
                    componentCallbacksC0411c.f1566F = true;
                    LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t;
                    if (layoutInflater$Factory2C0421g != null) {
                        layoutInflater$Factory2C0421g.m754j();
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: k */
    public final void m753k(boolean z) {
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(size);
            if (componentCallbacksC0411c != null && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                layoutInflater$Factory2C0421g.m753k(z);
            }
        }
    }

    /* renamed from: l */
    public final void m752l(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m752l(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: m */
    public final void m751m(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m751m(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: n */
    public final void m750n(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m750n(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: o */
    public final void m749o(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m749o(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0424c.f1655a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            Context context2 = this.f1641l.f1627b;
            try {
                C0666h<String, Class<?>> c0666h = ComponentCallbacksC0411c.f1559P;
                Class<?> orDefault = c0666h.getOrDefault(attributeValue, null);
                if (orDefault == null) {
                    orDefault = context2.getClassLoader().loadClass(attributeValue);
                    c0666h.put(attributeValue, orDefault);
                }
                z = ComponentCallbacksC0411c.class.isAssignableFrom(orDefault);
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (z) {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                ComponentCallbacksC0411c m780I = resourceId != -1 ? m780I(resourceId) : null;
                if (m780I == null && string != null) {
                    ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(size);
                            if (componentCallbacksC0411c != null && string.equals(componentCallbacksC0411c.f1600z)) {
                                m780I = componentCallbacksC0411c;
                                break;
                            }
                            size--;
                        } else {
                            SparseArray<ComponentCallbacksC0411c> sparseArray = this.f1634e;
                            if (sparseArray != null) {
                                for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                                    ComponentCallbacksC0411c valueAt = this.f1634e.valueAt(size2);
                                    if (valueAt != null && string.equals(valueAt.f1600z)) {
                                        m780I = valueAt;
                                        break;
                                    }
                                }
                            }
                            m780I = null;
                        }
                    }
                }
                if (m780I == null && id != -1) {
                    m780I = m780I(id);
                }
                if (m780I == null) {
                    m780I = this.f1642m.mo521c(context, attributeValue, null);
                    m780I.f1587m = true;
                    if (resourceId == 0) {
                        resourceId = id;
                    }
                    m780I.f1598x = resourceId;
                    m780I.f1599y = id;
                    m780I.f1600z = string;
                    m780I.f1588n = true;
                    m780I.f1592r = this;
                    AbstractC0419e abstractC0419e = this.f1641l;
                    m780I.f1593s = abstractC0419e;
                    Context context3 = abstractC0419e.f1627b;
                    m780I.f1566F = true;
                    if ((abstractC0419e != null ? abstractC0419e.f1626a : null) != null) {
                        m780I.f1566F = true;
                    }
                    m762b(m780I, true);
                } else if (m780I.f1588n) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                } else {
                    m780I.f1588n = true;
                    AbstractC0419e abstractC0419e2 = this.f1641l;
                    m780I.f1593s = abstractC0419e2;
                    if (!m780I.f1564D) {
                        Context context4 = abstractC0419e2.f1627b;
                        m780I.f1566F = true;
                        if ((abstractC0419e2 != null ? abstractC0419e2.f1626a : null) != null) {
                            m780I.f1566F = true;
                        }
                    }
                }
                ComponentCallbacksC0411c componentCallbacksC0411c2 = m780I;
                int i = this.f1640k;
                if (i >= 1 || !componentCallbacksC0411c2.f1587m) {
                    m775N(componentCallbacksC0411c2, i, 0, 0, false);
                } else {
                    m775N(componentCallbacksC0411c2, 1, 0, 0, false);
                }
                throw new IllegalStateException(C0844h.m187a("Fragment ", attributeValue, " did not create a view."));
            }
            return null;
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        onCreateView(null, str, context, attributeSet);
        return null;
    }

    /* renamed from: p */
    public final void m748p(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m748p(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: q */
    public final void m747q(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m747q(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: r */
    public final void m746r(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m746r(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: s */
    public final void m745s(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m745s(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: t */
    public final void m744t(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m744t(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Object obj = this.f1643n;
        if (obj == null) {
            obj = this.f1641l;
        }
        C0736h.m292h(obj, sb);
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public final void m743u(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m743u(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: v */
    public final void m742v(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m742v(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: w */
    public final void m741w(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m741w(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: x */
    public final void m740x(boolean z) {
        ComponentCallbacksC0411c componentCallbacksC0411c = this.f1643n;
        if (componentCallbacksC0411c != null) {
            LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1592r;
            if (layoutInflater$Factory2C0421g instanceof LayoutInflater$Factory2C0421g) {
                layoutInflater$Factory2C0421g.m740x(true);
            }
        }
        Iterator<C0423b> it = this.f1639j.iterator();
        while (it.hasNext()) {
            it.next().getClass();
            if (!z) {
                throw null;
            }
        }
    }

    /* renamed from: y */
    public final boolean m739y() {
        boolean z;
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (this.f1640k < 1) {
            return false;
        }
        int i = 0;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i >= arrayList.size()) {
                return false;
            }
            ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
            if (componentCallbacksC0411c != null) {
                if (!componentCallbacksC0411c.f1561A && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null && layoutInflater$Factory2C0421g.m739y()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
            i++;
        }
    }

    /* renamed from: z */
    public final void m738z() {
        LayoutInflater$Factory2C0421g layoutInflater$Factory2C0421g;
        if (this.f1640k < 1) {
            return;
        }
        int i = 0;
        while (true) {
            ArrayList<ComponentCallbacksC0411c> arrayList = this.f1633d;
            if (i < arrayList.size()) {
                ComponentCallbacksC0411c componentCallbacksC0411c = arrayList.get(i);
                if (componentCallbacksC0411c != null && !componentCallbacksC0411c.f1561A && (layoutInflater$Factory2C0421g = componentCallbacksC0411c.f1594t) != null) {
                    layoutInflater$Factory2C0421g.m738z();
                }
                i++;
            } else {
                return;
            }
        }
    }
}
