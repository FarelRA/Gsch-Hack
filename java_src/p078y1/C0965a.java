package p078y1;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p072w1.C0924a;
import p073x.C0928b;
/* renamed from: y1.a */
/* loaded from: classes.dex */
public final class C0965a {

    /* renamed from: a */
    public final C0967c f2949a = new C0967c();

    /* renamed from: b */
    public C0928b f2950b = null;

    /* renamed from: c */
    public int f2951c = 0;

    /* renamed from: c */
    public static int m14c(LinkedList linkedList) {
        if (linkedList.size() == 0) {
            return -1;
        }
        return ((Integer) linkedList.getFirst()).intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a1, code lost:
        r4 = 65535;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m16a() {
        char c;
        boolean z;
        int read;
        int i;
        C0928b c0928b;
        C0928b c0928b2;
        StringBuilder sb;
        char c2;
        String str;
        C0967c c0967c = this.f2949a;
        int i2 = c0967c.f2969h;
        char[] cArr = c0967c.f2965d;
        while (true) {
            int i3 = c0967c.f2966e;
            c0967c.f2970i = (i3 - c0967c.f2968g) + c0967c.f2970i;
            c0967c.f2968g = i3;
            c0967c.f2967f = i3;
            c0967c.f2963b = C0967c.f2955l[c0967c.f2964c];
            int i4 = i3;
            int i5 = -1;
            while (true) {
                if (i3 < i2) {
                    i = i3 + 1;
                    c = cArr[i3];
                } else if (!c0967c.f2971j) {
                    c0967c.f2967f = i3;
                    c0967c.f2966e = i4;
                    int i6 = c0967c.f2968g;
                    if (i6 > 0) {
                        char[] cArr2 = c0967c.f2965d;
                        System.arraycopy(cArr2, i6, cArr2, 0, c0967c.f2969h - i6);
                        int i7 = c0967c.f2969h;
                        int i8 = c0967c.f2968g;
                        c0967c.f2969h = i7 - i8;
                        c0967c.f2967f -= i8;
                        c0967c.f2966e -= i8;
                        c0967c.f2968g = 0;
                    }
                    int i9 = c0967c.f2967f;
                    char[] cArr3 = c0967c.f2965d;
                    if (i9 >= cArr3.length) {
                        char[] cArr4 = new char[i9 * 2];
                        System.arraycopy(cArr3, 0, cArr4, 0, cArr3.length);
                        c0967c.f2965d = cArr4;
                    }
                    Reader reader = c0967c.f2962a;
                    char[] cArr5 = c0967c.f2965d;
                    int i10 = c0967c.f2969h;
                    int read2 = reader.read(cArr5, i10, cArr5.length - i10);
                    if (read2 > 0) {
                        c0967c.f2969h += read2;
                    } else if (read2 != 0 || (read = c0967c.f2962a.read()) == -1) {
                        z = true;
                        int i11 = c0967c.f2967f;
                        i4 = c0967c.f2966e;
                        char[] cArr6 = c0967c.f2965d;
                        int i12 = c0967c.f2969h;
                        if (z) {
                            i = i11 + 1;
                            i2 = i12;
                            c = cArr6[i11];
                            cArr = cArr6;
                        } else {
                            cArr = cArr6;
                            i2 = i12;
                        }
                    } else {
                        char[] cArr7 = c0967c.f2965d;
                        int i13 = c0967c.f2969h;
                        c0967c.f2969h = i13 + 1;
                        cArr7[i13] = (char) read;
                    }
                    z = false;
                    int i112 = c0967c.f2967f;
                    i4 = c0967c.f2966e;
                    char[] cArr62 = c0967c.f2965d;
                    int i122 = c0967c.f2969h;
                    if (z) {
                    }
                }
                int i14 = C0967c.f2959p[C0967c.f2958o[c0967c.f2963b] + C0967c.f2956m[c]];
                if (i14 != -1) {
                    c0967c.f2963b = i14;
                    int i15 = C0967c.f2961r[i14];
                    if ((i15 & 1) == 1) {
                        if ((i15 & 8) == 8) {
                            i4 = i;
                            i5 = i14;
                        } else {
                            i4 = i;
                            i5 = i14;
                        }
                    }
                    i3 = i;
                }
            }
            c0967c.f2966e = i4;
            if (i5 >= 0) {
                i5 = C0967c.f2957n[i5];
            }
            switch (i5) {
                case 1:
                    throw new C0966b(c0967c.f2970i, 0, new Character(c0967c.f2965d[c0967c.f2968g + 0]));
                case 2:
                    String m13a = c0967c.m13a();
                    try {
                        c0928b2 = new C0928b(0, 1, Long.valueOf(m13a));
                    } catch (NumberFormatException unused) {
                        c0928b = new C0928b(0, 1, new BigInteger(m13a));
                        c0928b2 = c0928b;
                        this.f2950b = c0928b2;
                        if (c0928b2 == null) {
                            this.f2950b = new C0928b(-1, 1, null);
                            return;
                        }
                        return;
                    }
                case 3:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 4:
                    c0967c.f2972k = null;
                    c0967c.f2972k = new StringBuilder();
                    c0967c.f2964c = 2;
                    continue;
                case 5:
                    c0928b2 = new C0928b(1, 1, null);
                    break;
                case 6:
                    c0928b2 = new C0928b(2, 1, null);
                    break;
                case 7:
                    c0928b2 = new C0928b(3, 1, null);
                    break;
                case 8:
                    c0928b2 = new C0928b(4, 1, null);
                    break;
                case 9:
                    c0928b2 = new C0928b(5, 1, null);
                    break;
                case 10:
                    c0928b2 = new C0928b(6, 1, null);
                    break;
                case 11:
                    c0967c.f2972k.append(c0967c.m13a());
                    continue;
                case 12:
                    sb = c0967c.f2972k;
                    c2 = '\\';
                    break;
                case 13:
                    c0967c.f2964c = 0;
                    c0928b = new C0928b(0, 1, c0967c.f2972k.toString());
                    break;
                case 14:
                    sb = c0967c.f2972k;
                    c2 = '\"';
                    break;
                case 15:
                    sb = c0967c.f2972k;
                    c2 = '/';
                    break;
                case 16:
                    c0967c.f2972k.append('\b');
                    continue;
                case 17:
                    sb = c0967c.f2972k;
                    c2 = '\f';
                    break;
                case 18:
                    sb = c0967c.f2972k;
                    c2 = '\n';
                    break;
                case 19:
                    sb = c0967c.f2972k;
                    c2 = '\r';
                    break;
                case 20:
                    sb = c0967c.f2972k;
                    c2 = '\t';
                    break;
                case 21:
                    c0928b2 = new C0928b(0, 1, Double.valueOf(c0967c.m13a()));
                    break;
                case 22:
                    c0928b2 = new C0928b(0, 1, null);
                    break;
                case 23:
                    c0928b2 = new C0928b(0, 1, Boolean.valueOf(c0967c.m13a()));
                    break;
                case 24:
                    try {
                        c0967c.f2972k.append((char) Integer.parseInt(c0967c.m13a().substring(2), 16));
                        continue;
                    } catch (Exception e) {
                        throw new C0966b(c0967c.f2970i, 2, e);
                    }
                default:
                    if (c != 65535 || c0967c.f2968g != c0967c.f2967f) {
                        String[] strArr = C0967c.f2960q;
                        try {
                            str = strArr[1];
                        } catch (ArrayIndexOutOfBoundsException unused2) {
                            str = strArr[0];
                        }
                        throw new Error(str);
                    }
                    c0967c.f2971j = true;
                    c0928b2 = null;
                    break;
            }
            sb.append(c2);
        }
    }

    /* renamed from: b */
    public final Object m15b(StringReader stringReader) {
        Object obj;
        Cloneable c0926b;
        Integer num;
        C0967c c0967c = this.f2949a;
        c0967c.f2962a = stringReader;
        c0967c.f2971j = false;
        c0967c.f2968g = 0;
        c0967c.f2969h = 0;
        c0967c.f2966e = 0;
        c0967c.f2967f = 0;
        c0967c.f2970i = 0;
        c0967c.f2964c = 0;
        this.f2950b = null;
        this.f2951c = 0;
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        do {
            try {
                m16a();
                int i = this.f2951c;
                if (i == -1) {
                    throw new C0966b(c0967c.f2970i, 1, this.f2950b);
                }
                if (i == 0) {
                    int i2 = this.f2950b.f2893b;
                    if (i2 == 0) {
                        this.f2951c = 1;
                        linkedList.addFirst(new Integer(1));
                        obj = this.f2950b.f2894c;
                    } else if (i2 != 1) {
                        if (i2 == 3) {
                            this.f2951c = 3;
                            linkedList.addFirst(new Integer(3));
                            obj = new ArrayList();
                        }
                        this.f2951c = -1;
                    } else {
                        this.f2951c = 2;
                        linkedList.addFirst(new Integer(2));
                        obj = new C0924a.C0926b();
                    }
                    linkedList2.addFirst(obj);
                } else if (i == 1) {
                    if (this.f2950b.f2893b == -1) {
                        return linkedList2.removeFirst();
                    }
                    throw new C0966b(c0967c.f2970i, 1, this.f2950b);
                } else if (i == 2) {
                    C0928b c0928b = this.f2950b;
                    int i3 = c0928b.f2893b;
                    if (i3 == 0) {
                        Object obj2 = c0928b.f2894c;
                        if (obj2 instanceof String) {
                            linkedList2.addFirst((String) obj2);
                            this.f2951c = 4;
                            linkedList.addFirst(new Integer(4));
                        }
                        this.f2951c = -1;
                    } else if (i3 == 2) {
                        if (linkedList2.size() > 1) {
                            linkedList.removeFirst();
                            linkedList2.removeFirst();
                            this.f2951c = m14c(linkedList);
                        }
                        this.f2951c = 1;
                    } else if (i3 != 5) {
                        this.f2951c = -1;
                    }
                } else if (i == 3) {
                    int i4 = this.f2950b.f2893b;
                    if (i4 == 0) {
                        ((List) linkedList2.getFirst()).add(this.f2950b.f2894c);
                    } else if (i4 == 1) {
                        C0924a.C0926b c0926b2 = new C0924a.C0926b();
                        ((List) linkedList2.getFirst()).add(c0926b2);
                        this.f2951c = 2;
                        linkedList.addFirst(new Integer(2));
                        linkedList2.addFirst(c0926b2);
                    } else if (i4 == 3) {
                        ArrayList arrayList = new ArrayList();
                        ((List) linkedList2.getFirst()).add(arrayList);
                        this.f2951c = 3;
                        linkedList.addFirst(new Integer(3));
                        linkedList2.addFirst(arrayList);
                    } else if (i4 == 4) {
                        if (linkedList2.size() > 1) {
                            linkedList.removeFirst();
                            linkedList2.removeFirst();
                            this.f2951c = m14c(linkedList);
                        }
                        this.f2951c = 1;
                    } else if (i4 != 5) {
                        this.f2951c = -1;
                    }
                } else if (i == 4) {
                    int i5 = this.f2950b.f2893b;
                    if (i5 != 0) {
                        if (i5 == 1) {
                            linkedList.removeFirst();
                            Map map = (Map) linkedList2.getFirst();
                            c0926b = new C0924a.C0926b();
                            map.put((String) linkedList2.removeFirst(), c0926b);
                            this.f2951c = 2;
                            num = new Integer(2);
                        } else if (i5 == 3) {
                            linkedList.removeFirst();
                            Map map2 = (Map) linkedList2.getFirst();
                            c0926b = new ArrayList();
                            map2.put((String) linkedList2.removeFirst(), c0926b);
                            this.f2951c = 3;
                            num = new Integer(3);
                        } else if (i5 != 6) {
                            this.f2951c = -1;
                        }
                        linkedList.addFirst(num);
                        linkedList2.addFirst(c0926b);
                    } else {
                        linkedList.removeFirst();
                        ((Map) linkedList2.getFirst()).put((String) linkedList2.removeFirst(), this.f2950b.f2894c);
                        this.f2951c = m14c(linkedList);
                    }
                }
                if (this.f2951c == -1) {
                    throw new C0966b(c0967c.f2970i, 1, this.f2950b);
                }
            } catch (IOException e) {
                throw e;
            }
        } while (this.f2950b.f2893b != -1);
        throw new C0966b(c0967c.f2970i, 1, this.f2950b);
    }
}
