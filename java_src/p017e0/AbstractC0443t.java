package p017e0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p039k.C0655b;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: e0.t */
/* loaded from: classes.dex */
public abstract class AbstractC0443t {
    /* renamed from: f */
    public static void m725f(C0655b c0655b, View view) {
        if (view.getVisibility() == 0) {
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                c0655b.put(transitionName, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m725f(c0655b, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* renamed from: g */
    public static void m724g(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        rect.set(i, iArr[1], view.getWidth() + i, view.getHeight() + iArr[1]);
    }

    /* renamed from: h */
    public static boolean m723h(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    public abstract void mo501a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo500b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo499c(ViewGroup viewGroup, Object obj);

    /* renamed from: d */
    public abstract boolean mo498d(Object obj);

    /* renamed from: e */
    public abstract Object mo497e(Object obj);

    /* renamed from: i */
    public abstract Object mo496i(Object obj, Object obj2, Object obj3);

    /* renamed from: j */
    public abstract void mo495j(Object obj, View view);

    /* renamed from: k */
    public abstract void mo494k(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: l */
    public abstract void mo493l(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: m */
    public abstract void mo492m(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: n */
    public abstract void mo491n(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: o */
    public abstract Object mo490o(Object obj);
}
