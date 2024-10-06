package p076y;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p076y.C0954m;
/* renamed from: y.c */
/* loaded from: classes.dex */
public final class C0943c {

    /* renamed from: a */
    public static boolean f2922a = false;

    /* renamed from: b */
    public static Method f2923b = null;

    /* renamed from: c */
    public static boolean f2924c = false;

    /* renamed from: d */
    public static Field f2925d;

    /* renamed from: y.c$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0944a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    /* renamed from: a */
    public static boolean m57a(View view, KeyEvent keyEvent) {
        WeakReference<View> weakReference;
        int indexOfKey;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = C0954m.C0956b.f2938d;
            C0954m.C0956b c0956b = (C0954m.C0956b) view.getTag(R.id.tag_unhandled_key_event_manager);
            if (c0956b == null) {
                c0956b = new C0954m.C0956b();
                view.setTag(R.id.tag_unhandled_key_event_manager, c0956b);
            }
            WeakReference<KeyEvent> weakReference2 = c0956b.f2941c;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                c0956b.f2941c = new WeakReference<>(keyEvent);
                if (c0956b.f2940b == null) {
                    c0956b.f2940b = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = c0956b.f2940b;
                if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                } else {
                    weakReference = null;
                }
                if (weakReference == null) {
                    weakReference = sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow()) {
                        return true;
                    }
                    C0954m.C0956b.m26b(view2, keyEvent);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m56b(InterfaceC0944a interfaceC0944a, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        Window window;
        boolean z = false;
        if (interfaceC0944a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return interfaceC0944a.superDispatchKeyEvent(keyEvent);
        }
        KeyEvent.DispatcherState dispatcherState = null;
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window2 = activity.getWindow();
            if (window2.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                    if (!f2922a) {
                        try {
                            f2923b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                        } catch (NoSuchMethodException unused) {
                        }
                        f2922a = true;
                    }
                    Method method = f2923b;
                    if (method != null) {
                        try {
                            z = ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                    if (z) {
                        return true;
                    }
                }
            }
            if (window2.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window2.getDecorView();
            if (C0954m.m34b(decorView, keyEvent)) {
                return true;
            }
            if (decorView != null) {
                dispatcherState = decorView.getKeyDispatcherState();
            }
            return keyEvent.dispatch(activity, dispatcherState, activity);
        } else if (callback instanceof Dialog) {
            Dialog dialog = (Dialog) callback;
            if (!f2924c) {
                try {
                    Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                    f2925d = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused3) {
                }
                f2924c = true;
            }
            Field field = f2925d;
            if (field != null) {
                try {
                    onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                } catch (IllegalAccessException unused4) {
                }
                if (onKeyListener == null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                    return true;
                }
                window = dialog.getWindow();
                if (!window.superDispatchKeyEvent(keyEvent)) {
                    return true;
                }
                View decorView2 = window.getDecorView();
                if (C0954m.m34b(decorView2, keyEvent)) {
                    return true;
                }
                if (decorView2 != null) {
                    dispatcherState = decorView2.getKeyDispatcherState();
                }
                return keyEvent.dispatch(dialog, dispatcherState, dialog);
            }
            onKeyListener = null;
            if (onKeyListener == null) {
            }
            window = dialog.getWindow();
            if (!window.superDispatchKeyEvent(keyEvent)) {
            }
        } else if ((view == null || !C0954m.m34b(view, keyEvent)) && !interfaceC0944a.superDispatchKeyEvent(keyEvent)) {
            return false;
        } else {
            return true;
        }
    }
}
