package p055q;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
import p046m1.C0736h;
import p068v.C0892a;
/* renamed from: q.c */
/* loaded from: classes.dex */
public final class C0825c {

    /* renamed from: q.c$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0826a {
    }

    /* renamed from: q.c$b */
    /* loaded from: classes.dex */
    public static final class C0827b implements InterfaceC0826a {

        /* renamed from: a */
        public final C0828c[] f2720a;

        public C0827b(C0828c[] c0828cArr) {
            this.f2720a = c0828cArr;
        }
    }

    /* renamed from: q.c$c */
    /* loaded from: classes.dex */
    public static final class C0828c {

        /* renamed from: a */
        public final String f2721a;

        /* renamed from: b */
        public final int f2722b;

        /* renamed from: c */
        public final boolean f2723c;

        /* renamed from: d */
        public final String f2724d;

        /* renamed from: e */
        public final int f2725e;

        /* renamed from: f */
        public final int f2726f;

        public C0828c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f2721a = str;
            this.f2722b = i;
            this.f2723c = z;
            this.f2724d = str2;
            this.f2725e = i2;
            this.f2726f = i3;
        }
    }

    /* renamed from: q.c$d */
    /* loaded from: classes.dex */
    public static final class C0829d implements InterfaceC0826a {

        /* renamed from: a */
        public final C0892a f2727a;

        /* renamed from: b */
        public final int f2728b;

        /* renamed from: c */
        public final int f2729c;

        public C0829d(C0892a c0892a, int i, int i2) {
            this.f2727a = c0892a;
            this.f2729c = i;
            this.f2728b = i2;
        }
    }

    /* renamed from: a */
    public static InterfaceC0826a m202a(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        boolean z;
        int i;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlResourceParser.require(2, null, "font-family");
            if (xmlResourceParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), C0736h.f2544Q);
                String string = obtainAttributes.getString(0);
                String string2 = obtainAttributes.getString(4);
                String string3 = obtainAttributes.getString(5);
                int resourceId = obtainAttributes.getResourceId(1, 0);
                int integer = obtainAttributes.getInteger(2, 1);
                int integer2 = obtainAttributes.getInteger(3, 500);
                obtainAttributes.recycle();
                if (string != null && string2 != null && string3 != null) {
                    while (xmlResourceParser.next() != 3) {
                        m200c(xmlResourceParser);
                    }
                    return new C0829d(new C0892a(string, string2, string3, m201b(resources, resourceId)), integer, integer2);
                }
                ArrayList arrayList = new ArrayList();
                while (xmlResourceParser.next() != 3) {
                    if (xmlResourceParser.getEventType() == 2) {
                        if (xmlResourceParser.getName().equals("font")) {
                            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), C0736h.f2545R);
                            int i2 = 8;
                            if (!obtainAttributes2.hasValue(8)) {
                                i2 = 1;
                            }
                            int i3 = obtainAttributes2.getInt(i2, 400);
                            int i4 = 6;
                            if (!obtainAttributes2.hasValue(6)) {
                                i4 = 2;
                            }
                            if (1 == obtainAttributes2.getInt(i4, 0)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            int i5 = 9;
                            if (!obtainAttributes2.hasValue(9)) {
                                i5 = 3;
                            }
                            int i6 = 7;
                            if (!obtainAttributes2.hasValue(7)) {
                                i6 = 4;
                            }
                            String string4 = obtainAttributes2.getString(i6);
                            int i7 = obtainAttributes2.getInt(i5, 0);
                            if (obtainAttributes2.hasValue(5)) {
                                i = 5;
                            } else {
                                i = 0;
                            }
                            int resourceId2 = obtainAttributes2.getResourceId(i, 0);
                            String string5 = obtainAttributes2.getString(i);
                            obtainAttributes2.recycle();
                            while (xmlResourceParser.next() != 3) {
                                m200c(xmlResourceParser);
                            }
                            arrayList.add(new C0828c(string5, i3, z, string4, i7, resourceId2));
                        } else {
                            m200c(xmlResourceParser);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new C0827b((C0828c[]) arrayList.toArray(new C0828c[arrayList.size()]));
            }
            m200c(xmlResourceParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static List<List<byte[]>> m201b(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: c */
    public static void m200c(XmlResourceParser xmlResourceParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
