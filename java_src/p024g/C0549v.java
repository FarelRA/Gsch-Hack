package p024g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p008c.C0315a;
import p016e.C0396c;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: g.v */
/* loaded from: classes.dex */
public final class C0549v extends Spinner {

    /* renamed from: j */
    public static final int[] f2053j = {16843505};

    /* renamed from: b */
    public final C0499d f2054b;

    /* renamed from: c */
    public final Context f2055c;

    /* renamed from: d */
    public final C0547u f2056d;

    /* renamed from: e */
    public SpinnerAdapter f2057e;

    /* renamed from: f */
    public final boolean f2058f;

    /* renamed from: g */
    public final C0551b f2059g;

    /* renamed from: h */
    public int f2060h;

    /* renamed from: i */
    public final Rect f2061i;

    /* renamed from: g.v$a */
    /* loaded from: classes.dex */
    public static class C0550a implements ListAdapter, SpinnerAdapter {

        /* renamed from: b */
        public final SpinnerAdapter f2062b;

        /* renamed from: c */
        public final ListAdapter f2063c;

        public C0550a(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            Resources.Theme dropDownViewTheme;
            this.f2062b = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f2063c = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    dropDownViewTheme = themedSpinnerAdapter.getDropDownViewTheme();
                    if (dropDownViewTheme != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                } else if (spinnerAdapter instanceof InterfaceC0534n0) {
                    InterfaceC0534n0 interfaceC0534n0 = (InterfaceC0534n0) spinnerAdapter;
                    if (interfaceC0534n0.getDropDownViewTheme() == null) {
                        interfaceC0534n0.m583a();
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f2063c;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f2063c;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f2062b;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: g.v$b */
    /* loaded from: classes.dex */
    public class C0551b extends C0508g0 {

        /* renamed from: D */
        public CharSequence f2064D;

        /* renamed from: E */
        public ListAdapter f2065E;

        /* renamed from: F */
        public final Rect f2066F;

        /* renamed from: g.v$b$a */
        /* loaded from: classes.dex */
        public class C0552a implements AdapterView.OnItemClickListener {
            public C0552a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0551b c0551b = C0551b.this;
                C0549v.this.setSelection(i);
                if (C0549v.this.getOnItemClickListener() != null) {
                    C0549v.this.performItemClick(view, i, c0551b.f2065E.getItemId(i));
                }
                c0551b.dismiss();
            }
        }

        /* renamed from: g.v$b$b */
        /* loaded from: classes.dex */
        public class ViewTreeObserver$OnGlobalLayoutListenerC0553b implements ViewTreeObserver.OnGlobalLayoutListener {
            public ViewTreeObserver$OnGlobalLayoutListenerC0553b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                boolean z;
                C0551b c0551b = C0551b.this;
                C0549v c0549v = C0549v.this;
                c0551b.getClass();
                WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                if (c0549v.isAttachedToWindow() && c0549v.getGlobalVisibleRect(c0551b.f2066F)) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    c0551b.dismiss();
                    return;
                }
                c0551b.m557j();
                C0551b.super.mo560c();
            }
        }

        /* renamed from: g.v$b$c */
        /* loaded from: classes.dex */
        public class C0554c implements PopupWindow.OnDismissListener {

            /* renamed from: b */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f2070b;

            public C0554c(ViewTreeObserver$OnGlobalLayoutListenerC0553b viewTreeObserver$OnGlobalLayoutListenerC0553b) {
                this.f2070b = viewTreeObserver$OnGlobalLayoutListenerC0553b;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                ViewTreeObserver viewTreeObserver = C0549v.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f2070b);
                }
            }
        }

        public C0551b(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i, 0);
            this.f2066F = new Rect();
            this.f1939p = C0549v.this;
            this.f1948y = true;
            this.f1949z.setFocusable(true);
            this.f1940q = new C0552a();
        }

        @Override // p024g.C0508g0, p020f.InterfaceC0470h
        /* renamed from: c */
        public final void mo560c() {
            ViewTreeObserver viewTreeObserver;
            boolean mo620g = mo620g();
            m557j();
            C0535o c0535o = this.f1949z;
            c0535o.setInputMethodMode(2);
            super.mo560c();
            this.f1927d.setChoiceMode(1);
            C0549v c0549v = C0549v.this;
            int selectedItemPosition = c0549v.getSelectedItemPosition();
            C0496c0 c0496c0 = this.f1927d;
            if (mo620g() && c0496c0 != null) {
                c0496c0.setListSelectionHidden(false);
                c0496c0.setSelection(selectedItemPosition);
                if (c0496c0.getChoiceMode() != 0) {
                    c0496c0.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!mo620g && (viewTreeObserver = c0549v.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC0553b viewTreeObserver$OnGlobalLayoutListenerC0553b = new ViewTreeObserver$OnGlobalLayoutListenerC0553b();
                viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC0553b);
                c0535o.setOnDismissListener(new C0554c(viewTreeObserver$OnGlobalLayoutListenerC0553b));
            }
        }

        @Override // p024g.C0508g0
        /* renamed from: e */
        public final void mo559e(ListAdapter listAdapter) {
            super.mo559e(listAdapter);
            this.f2065E = listAdapter;
        }

        /* renamed from: j */
        public final void m557j() {
            int i;
            int i2;
            C0535o c0535o = this.f1949z;
            Drawable background = c0535o.getBackground();
            C0549v c0549v = C0549v.this;
            if (background != null) {
                background.getPadding(c0549v.f2061i);
                boolean m534a = C0564y0.m534a(c0549v);
                Rect rect = c0549v.f2061i;
                if (m534a) {
                    i = rect.right;
                } else {
                    i = -rect.left;
                }
            } else {
                Rect rect2 = c0549v.f2061i;
                rect2.right = 0;
                rect2.left = 0;
                i = 0;
            }
            int paddingLeft = c0549v.getPaddingLeft();
            int paddingRight = c0549v.getPaddingRight();
            int width = c0549v.getWidth();
            int i3 = c0549v.f2060h;
            if (i3 == -2) {
                int m561a = c0549v.m561a((SpinnerAdapter) this.f2065E, c0535o.getBackground());
                int i4 = c0549v.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = c0549v.f2061i;
                int i5 = (i4 - rect3.left) - rect3.right;
                if (m561a > i5) {
                    m561a = i5;
                }
                i3 = Math.max(m561a, (width - paddingLeft) - paddingRight);
            } else if (i3 == -1) {
                i3 = (width - paddingLeft) - paddingRight;
            }
            m621f(i3);
            if (C0564y0.m534a(c0549v)) {
                i2 = ((width - paddingRight) - this.f1929f) + i;
            } else {
                i2 = i + paddingLeft;
            }
            this.f1930g = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005b, code lost:
        if (r6 == null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0549v(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Context context2;
        Exception e;
        TypedArray typedArray;
        this.f2061i = new Rect();
        int[] iArr = C0736h.f2529B;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        this.f2054b = new C0499d(this);
        int resourceId = obtainStyledAttributes.getResourceId(4, 0);
        TypedArray typedArray2 = null;
        if (resourceId != 0) {
            this.f2055c = new C0396c(context, resourceId);
        } else {
            if (Build.VERSION.SDK_INT < 23) {
                context2 = context;
            } else {
                context2 = null;
            }
            this.f2055c = context2;
        }
        if (this.f2055c != null) {
            int i2 = -1;
            try {
                typedArray = context.obtainStyledAttributes(attributeSet, f2053j, i, 0);
                try {
                    try {
                        if (typedArray.hasValue(0)) {
                            i2 = typedArray.getInt(0, 0);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    typedArray2 = typedArray;
                    if (typedArray2 != null) {
                        typedArray2.recycle();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                typedArray = null;
            } catch (Throwable th2) {
                th = th2;
                if (typedArray2 != null) {
                }
                throw th;
            }
            typedArray.recycle();
            if (i2 == 1) {
                C0551b c0551b = new C0551b(this.f2055c, attributeSet, i);
                C0542r0 m569l = C0542r0.m569l(this.f2055c, attributeSet, iArr, i);
                this.f2060h = m569l.f2039b.getLayoutDimension(3, -2);
                c0551b.f1949z.setBackgroundDrawable(m569l.m576e(1));
                c0551b.f2064D = obtainStyledAttributes.getString(2);
                m569l.m568m();
                this.f2059g = c0551b;
                this.f2056d = new C0547u(this, this, c0551b);
            }
        }
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367048, textArray);
            arrayAdapter.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        obtainStyledAttributes.recycle();
        this.f2058f = true;
        SpinnerAdapter spinnerAdapter = this.f2057e;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f2057e = null;
        }
        this.f2054b.m629d(attributeSet, i);
    }

    /* renamed from: a */
    public final int m561a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable != null) {
            Rect rect = this.f2061i;
            drawable.getPadding(rect);
            return i2 + rect.left + rect.right;
        }
        return i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            c0499d.m632a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            return c0551b.f1930g;
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            if (!c0551b.f1933j) {
                return 0;
            }
            return c0551b.f1931h;
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f2059g != null ? this.f2060h : super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            return c0551b.f1949z.getBackground();
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        if (this.f2059g != null) {
            return this.f2055c;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getPopupContext();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            return c0551b.f2064D;
        }
        return super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            return c0499d.m631b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            return c0499d.m630c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0551b c0551b = this.f2059g;
        if (c0551b == null || !c0551b.mo620g()) {
            return;
        }
        c0551b.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2059g == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m561a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0547u c0547u = this.f2056d;
        if (c0547u == null || !c0547u.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            if (c0551b.mo620g()) {
                return true;
            }
            c0551b.mo560c();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f2058f) {
            this.f2057e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            Context context = this.f2055c;
            if (context == null) {
                context = getContext();
            }
            c0551b.mo559e(new C0550a(spinnerAdapter, context.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            c0499d.m628e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            c0499d.m627f(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            c0551b.f1930g = i;
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            c0551b.f1931h = i;
            c0551b.f1933j = true;
            return;
        }
        super.setDropDownVerticalOffset(i);
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f2059g != null) {
            this.f2060h = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            c0551b.f1949z.setBackgroundDrawable(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0315a.m994c(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        C0551b c0551b = this.f2059g;
        if (c0551b != null) {
            c0551b.f2064D = charSequence;
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            c0499d.m625h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0499d c0499d = this.f2054b;
        if (c0499d != null) {
            c0499d.m624i(mode);
        }
    }
}
