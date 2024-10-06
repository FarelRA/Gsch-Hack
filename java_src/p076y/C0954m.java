package p076y;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import net.geschool.app.secure.R;
import p076y.C0939a;
/* renamed from: y.m */
/* loaded from: classes.dex */
public final class C0954m {

    /* renamed from: a */
    public static WeakHashMap<View, C0960q> f2934a;

    /* renamed from: b */
    public static Field f2935b;

    /* renamed from: c */
    public static boolean f2936c;

    /* renamed from: d */
    public static ThreadLocal<Rect> f2937d;

    /* renamed from: y.m$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0955a {
        /* renamed from: a */
        boolean m28a();
    }

    /* renamed from: y.m$b */
    /* loaded from: classes.dex */
    public static class C0956b {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f2938d = new ArrayList<>();

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f2939a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f2940b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f2941c = null;

        /* renamed from: b */
        public static boolean m26b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((InterfaceC0955a) arrayList.get(size)).m28a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: a */
        public final View m27a(View view, KeyEvent keyEvent) {
            View m27a;
            WeakHashMap<View, Boolean> weakHashMap = this.f2939a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                do {
                    childCount--;
                    if (childCount >= 0) {
                        m27a = m27a(viewGroup.getChildAt(childCount), keyEvent);
                    }
                } while (m27a == null);
                return m27a;
            }
            if (m26b(view, keyEvent)) {
                return view;
            }
            return null;
        }
    }

    static {
        new AtomicInteger(1);
        f2934a = null;
        f2936c = false;
        new WeakHashMap();
    }

    /* renamed from: a */
    public static C0960q m35a(View view) {
        if (f2934a == null) {
            f2934a = new WeakHashMap<>();
        }
        C0960q c0960q = f2934a.get(view);
        if (c0960q == null) {
            C0960q c0960q2 = new C0960q(view);
            f2934a.put(view, c0960q2);
            return c0960q2;
        }
        return c0960q;
    }

    /* renamed from: b */
    public static boolean m34b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = C0956b.f2938d;
        C0956b c0956b = (C0956b) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (c0956b == null) {
            c0956b = new C0956b();
            view.setTag(R.id.tag_unhandled_key_event_manager, c0956b);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap<View, Boolean> weakHashMap = c0956b.f2939a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = C0956b.f2938d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (c0956b.f2939a == null) {
                        c0956b.f2939a = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = C0956b.f2938d;
                        View view2 = arrayList3.get(size).get();
                        if (view2 == null) {
                            arrayList3.remove(size);
                        } else {
                            c0956b.f2939a.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                c0956b.f2939a.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View m27a = c0956b.m27a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m27a != null && !KeyEvent.isModifierKey(keyCode)) {
                if (c0956b.f2940b == null) {
                    c0956b.f2940b = new SparseArray<>();
                }
                c0956b.f2940b.put(keyCode, new WeakReference<>(m27a));
            }
        }
        if (m27a == null) {
            return false;
        }
        return true;
    }

    /* renamed from: c */
    public static Rect m33c() {
        if (f2937d == null) {
            f2937d = new ThreadLocal<>();
        }
        Rect rect = f2937d.get();
        if (rect == null) {
            rect = new Rect();
            f2937d.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* renamed from: d */
    public static void m32d(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect m33c = m33c();
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m33c.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m33c.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m29g(view);
            ViewParent parent2 = view.getParent();
            if (parent2 instanceof View) {
                m29g((View) parent2);
            }
        }
        if (z && m33c.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(m33c);
        }
    }

    /* renamed from: e */
    public static void m31e(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect m33c = m33c();
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m33c.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m33c.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m29g(view);
            ViewParent parent2 = view.getParent();
            if (parent2 instanceof View) {
                m29g((View) parent2);
            }
        }
        if (z && m33c.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(m33c);
        }
    }

    /* renamed from: f */
    public static void m30f(View view, C0939a c0939a) {
        View.AccessibilityDelegate accessibilityDelegate;
        C0939a.C0940a c0940a = null;
        if (c0939a == null) {
            if (Build.VERSION.SDK_INT >= 29) {
                accessibilityDelegate = view.getAccessibilityDelegate();
            } else {
                if (!f2936c) {
                    if (f2935b == null) {
                        try {
                            Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                            f2935b = declaredField;
                            declaredField.setAccessible(true);
                        } catch (Throwable unused) {
                            f2936c = true;
                        }
                    }
                    Object obj = f2935b.get(view);
                    if (obj instanceof View.AccessibilityDelegate) {
                        accessibilityDelegate = (View.AccessibilityDelegate) obj;
                    }
                }
                accessibilityDelegate = null;
            }
            if (accessibilityDelegate instanceof C0939a.C0940a) {
                c0939a = new C0939a();
            }
        }
        if (c0939a != null) {
            c0940a = c0939a.f2919b;
        }
        view.setAccessibilityDelegate(c0940a);
    }

    /* renamed from: g */
    public static void m29g(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
