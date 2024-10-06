package p008c;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p024g.C0516i;
import p052p.C0819a;
import p055q.C0823a;
/* renamed from: c.a */
/* loaded from: classes.dex */
public final class C0315a {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f1138a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<Context, SparseArray<C0316a>> f1139b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f1140c = new Object();

    /* renamed from: c.a$a */
    /* loaded from: classes.dex */
    public static class C0316a {

        /* renamed from: a */
        public final ColorStateList f1141a;

        /* renamed from: b */
        public final Configuration f1142b;

        public C0316a(ColorStateList colorStateList, Configuration configuration) {
            this.f1141a = colorStateList;
            this.f1142b = configuration;
        }
    }

    /* renamed from: a */
    public static void m996a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f1140c) {
            WeakHashMap<Context, SparseArray<C0316a>> weakHashMap = f1139b;
            SparseArray<C0316a> sparseArray = weakHashMap.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(context, sparseArray);
            }
            sparseArray.append(i, new C0316a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    public static ColorStateList m995b(Context context, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        boolean z;
        ColorStateList colorStateList3;
        int next;
        C0316a c0316a;
        ColorStateList colorStateList4;
        if (Build.VERSION.SDK_INT >= 23) {
            colorStateList4 = context.getColorStateList(i);
            return colorStateList4;
        }
        synchronized (f1140c) {
            SparseArray<C0316a> sparseArray = f1139b.get(context);
            colorStateList = null;
            if (sparseArray != null && sparseArray.size() > 0 && (c0316a = sparseArray.get(i)) != null) {
                if (c0316a.f1142b.equals(context.getResources().getConfiguration())) {
                    colorStateList2 = c0316a.f1141a;
                } else {
                    sparseArray.remove(i);
                }
            }
            colorStateList2 = null;
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        Resources resources = context.getResources();
        ThreadLocal<TypedValue> threadLocal = f1138a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 >= 28 && i2 <= 31) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Resources resources2 = context.getResources();
            XmlResourceParser xml = resources2.getXml(i);
            try {
                Resources.Theme theme = context.getTheme();
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                if (next == 2) {
                    colorStateList = C0823a.m205a(resources2, xml, asAttributeSet, theme);
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception e) {
                Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            }
        }
        if (colorStateList != null) {
            m996a(context, i, colorStateList);
            return colorStateList;
        }
        Object obj = C0819a.f2712a;
        if (Build.VERSION.SDK_INT >= 23) {
            colorStateList3 = context.getColorStateList(i);
            return colorStateList3;
        }
        return context.getResources().getColorStateList(i);
    }

    /* renamed from: c */
    public static Drawable m994c(Context context, int i) {
        return C0516i.m610g().m608i(context, i);
    }
}
