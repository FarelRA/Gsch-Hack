package p068v;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p039k.C0659f;
import p039k.C0666h;
import p055q.C0825c;
import p058r.C0850c;
import p068v.C0901f;
/* renamed from: v.e */
/* loaded from: classes.dex */
public final class C0896e {

    /* renamed from: a */
    public static final C0659f<String, Typeface> f2832a = new C0659f<>(16);

    /* renamed from: b */
    public static final C0901f f2833b = new C0901f();

    /* renamed from: c */
    public static final Object f2834c = new Object();

    /* renamed from: d */
    public static final C0666h<String, ArrayList<C0901f.InterfaceC0903b<C0900d>>> f2835d = new C0666h<>();

    /* renamed from: e */
    public static final C0897a f2836e = new C0897a();

    /* renamed from: v.e$a */
    /* loaded from: classes.dex */
    public static class C0897a implements Comparator<byte[]> {
        @Override // java.util.Comparator
        public final int compare(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length != bArr4.length) {
                return bArr3.length - bArr4.length;
            }
            for (int i = 0; i < bArr3.length; i++) {
                byte b = bArr3[i];
                byte b2 = bArr4[i];
                if (b != b2) {
                    return b - b2;
                }
            }
            return 0;
        }
    }

    /* renamed from: v.e$b */
    /* loaded from: classes.dex */
    public static class C0898b {

        /* renamed from: a */
        public final int f2837a;

        /* renamed from: b */
        public final C0899c[] f2838b;

        public C0898b(int i, C0899c[] c0899cArr) {
            this.f2837a = i;
            this.f2838b = c0899cArr;
        }
    }

    /* renamed from: v.e$c */
    /* loaded from: classes.dex */
    public static class C0899c {

        /* renamed from: a */
        public final Uri f2839a;

        /* renamed from: b */
        public final int f2840b;

        /* renamed from: c */
        public final int f2841c;

        /* renamed from: d */
        public final boolean f2842d;

        /* renamed from: e */
        public final int f2843e;

        public C0899c(Uri uri, int i, int i2, boolean z, int i3) {
            uri.getClass();
            this.f2839a = uri;
            this.f2840b = i;
            this.f2841c = i2;
            this.f2842d = z;
            this.f2843e = i3;
        }
    }

    /* renamed from: v.e$d */
    /* loaded from: classes.dex */
    public static final class C0900d {

        /* renamed from: a */
        public final Typeface f2844a;

        /* renamed from: b */
        public final int f2845b;

        public C0900d(Typeface typeface, int i) {
            this.f2844a = typeface;
            this.f2845b = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008f A[LOOP:1: B:15:0x004c->B:30:0x008f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0093 A[EDGE_INSN: B:79:0x0093->B:32:0x0093 ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0898b m108a(Context context, C0892a c0892a) {
        Cursor cursor;
        int i;
        int i2;
        Uri withAppendedId;
        int i3;
        boolean z;
        boolean z2;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String str = c0892a.f2820a;
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
        if (resolveContentProvider != null) {
            String str2 = resolveContentProvider.packageName;
            String str3 = c0892a.f2821b;
            if (str2.equals(str3)) {
                Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArr) {
                    arrayList.add(signature.toByteArray());
                }
                C0897a c0897a = f2836e;
                Collections.sort(arrayList, c0897a);
                List<List<byte[]>> list = c0892a.f2823d;
                if (list == null) {
                    list = C0825c.m201b(resources, 0);
                }
                int i4 = 0;
                while (true) {
                    cursor = null;
                    if (i4 < list.size()) {
                        ArrayList arrayList2 = new ArrayList(list.get(i4));
                        Collections.sort(arrayList2, c0897a);
                        if (arrayList.size() == arrayList2.size()) {
                            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                                if (Arrays.equals((byte[]) arrayList.get(i5), (byte[]) arrayList2.get(i5))) {
                                }
                            }
                            z2 = true;
                            if (!z2) {
                                break;
                            }
                            i4++;
                        }
                        z2 = false;
                        if (!z2) {
                        }
                    } else {
                        resolveContentProvider = null;
                        break;
                    }
                }
                if (resolveContentProvider == null) {
                    return new C0898b(1, null);
                }
                String str4 = resolveContentProvider.authority;
                ArrayList arrayList3 = new ArrayList();
                Uri build = new Uri.Builder().scheme("content").authority(str4).build();
                Uri build2 = new Uri.Builder().scheme("content").authority(str4).appendPath("file").build();
                try {
                    cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{c0892a.f2822c}, null, null);
                    if (cursor != null && cursor.getCount() > 0) {
                        int columnIndex = cursor.getColumnIndex("result_code");
                        arrayList3 = new ArrayList();
                        int columnIndex2 = cursor.getColumnIndex("_id");
                        int columnIndex3 = cursor.getColumnIndex("file_id");
                        int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursor.getColumnIndex("font_weight");
                        int columnIndex6 = cursor.getColumnIndex("font_italic");
                        while (cursor.moveToNext()) {
                            if (columnIndex != -1) {
                                i = cursor.getInt(columnIndex);
                            } else {
                                i = 0;
                            }
                            if (columnIndex4 != -1) {
                                i2 = cursor.getInt(columnIndex4);
                            } else {
                                i2 = 0;
                            }
                            if (columnIndex3 == -1) {
                                withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                            } else {
                                withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                            }
                            Uri uri = withAppendedId;
                            if (columnIndex5 != -1) {
                                i3 = cursor.getInt(columnIndex5);
                            } else {
                                i3 = 400;
                            }
                            if (columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList3.add(new C0899c(uri, i2, i3, z, i));
                        }
                    }
                    return new C0898b(0, (C0899c[]) arrayList3.toArray(new C0899c[0]));
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str3);
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
    }

    /* renamed from: b */
    public static C0900d m107b(Context context, C0892a c0892a, int i) {
        try {
            C0898b m108a = m108a(context, c0892a);
            int i2 = -3;
            int i3 = m108a.f2837a;
            if (i3 == 0) {
                Typeface mo160b = C0850c.f2749a.mo160b(context, m108a.f2838b, i);
                if (mo160b != null) {
                    i2 = 0;
                }
                return new C0900d(mo160b, i2);
            }
            if (i3 == 1) {
                i2 = -2;
            }
            return new C0900d(null, i2);
        } catch (PackageManager.NameNotFoundException unused) {
            return new C0900d(null, -1);
        }
    }
}
