package p000a0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Paint;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p070w.C0909a;
/* renamed from: a0.i */
/* loaded from: classes.dex */
public final class C0010i {

    /* renamed from: a0.i$a */
    /* loaded from: classes.dex */
    public static class ActionMode$CallbackC0011a implements ActionMode.Callback {

        /* renamed from: a */
        public final ActionMode.Callback f35a;

        /* renamed from: b */
        public final TextView f36b;

        /* renamed from: c */
        public Class<?> f37c;

        /* renamed from: d */
        public Method f38d;

        /* renamed from: e */
        public boolean f39e;

        /* renamed from: f */
        public boolean f40f = false;

        public ActionMode$CallbackC0011a(ActionMode.Callback callback, TextView textView) {
            this.f35a = callback;
            this.f36b = textView;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f35a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f35a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.f35a.onDestroyActionMode(actionMode);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
            if (r10 == 0) goto L49;
         */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00d1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x009f A[SYNTHETIC] */
        @Override // android.view.ActionMode.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            Method declaredMethod;
            boolean z;
            boolean z2;
            int checkSelfPermission;
            TextView textView = this.f36b;
            Context context = textView.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f40f) {
                this.f40f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f37c = cls;
                    this.f38d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f39e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f37c = null;
                    this.f38d = null;
                    this.f39e = false;
                }
            }
            try {
                if (this.f39e && this.f37c.isInstance(menu)) {
                    declaredMethod = this.f38d;
                } else {
                    declaredMethod = menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                }
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                ArrayList arrayList = new ArrayList();
                if (context instanceof Activity) {
                    for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain"), 0)) {
                        if (!context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            if (activityInfo.exported) {
                                String str = activityInfo.permission;
                                if (str != null) {
                                    checkSelfPermission = context.checkSelfPermission(str);
                                }
                            }
                            z2 = false;
                            if (!z2) {
                                arrayList.add(resolveInfo);
                            }
                        }
                        z2 = true;
                        if (!z2) {
                        }
                    }
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i);
                    MenuItem add = menu.add(0, 0, i + 100, resolveInfo2.loadLabel(packageManager));
                    Intent type = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
                    if ((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Intent putExtra = type.putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !z);
                    ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
                    add.setIntent(putExtra.setClassName(activityInfo2.packageName, activityInfo2.name)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
            return this.f35a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
        if (r9 != 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
        if (r4 != false) goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0909a.C0910a m1380a(TextView textView) {
        int i;
        int i2;
        TextDirectionHeuristic textDirectionHeuristic;
        DecimalFormatSymbols decimalFormatSymbols;
        String[] digitStrings;
        PrecomputedText.Params textMetricsParams;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            textMetricsParams = textView.getTextMetricsParams();
            return new C0909a.C0910a(textMetricsParams);
        }
        TextPaint textPaint = new TextPaint(textView.getPaint());
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 23) {
            i = 1;
            i2 = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (i3 >= 23) {
            i = textView.getBreakStrategy();
            i2 = textView.getHyphenationFrequency();
        }
        if (!(textView.getTransformationMethod() instanceof PasswordTransformationMethod)) {
            if (i3 >= 28 && (textView.getInputType() & 15) == 3) {
                decimalFormatSymbols = DecimalFormatSymbols.getInstance(textView.getTextLocale());
                digitStrings = decimalFormatSymbols.getDigitStrings();
                byte directionality = Character.getDirectionality(digitStrings[0].codePointAt(0));
                if (directionality != 1) {
                }
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                if (textView.getLayoutDirection() == 1) {
                    z = true;
                }
                switch (textView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                }
            }
            return new C0909a.C0910a(textPaint, textDirectionHeuristic, i, i2);
        }
        textDirectionHeuristic = TextDirectionHeuristics.LTR;
        return new C0909a.C0910a(textPaint, textDirectionHeuristic, i, i2);
    }

    /* renamed from: b */
    public static void m1379b(TextView textView, int i) {
        int i2;
        if (i >= 0) {
            if (Build.VERSION.SDK_INT >= 28) {
                textView.setFirstBaselineToTopHeight(i);
                return;
            }
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (textView.getIncludeFontPadding()) {
                i2 = fontMetricsInt.top;
            } else {
                i2 = fontMetricsInt.ascent;
            }
            if (i > Math.abs(i2)) {
                textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public static void m1378c(TextView textView, int i) {
        int i2;
        if (i >= 0) {
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (textView.getIncludeFontPadding()) {
                i2 = fontMetricsInt.bottom;
            } else {
                i2 = fontMetricsInt.descent;
            }
            if (i > Math.abs(i2)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static void m1377d(TextView textView, C0909a c0909a) {
        if (Build.VERSION.SDK_INT >= 29) {
            c0909a.getClass();
            textView.setText((CharSequence) null);
            return;
        }
        C0909a.C0910a m1380a = m1380a(textView);
        c0909a.getClass();
        if (!m1380a.m102a(null)) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
        textView.setText(c0909a);
    }

    /* renamed from: e */
    public static void m1376e(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: f */
    public static ActionMode.Callback m1375f(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC0011a)) ? callback : new ActionMode$CallbackC0011a(callback, textView);
    }
}
