package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p005b0.AbstractC0300a;
import p009c0.AbstractC0317a;
import p016e.InterfaceC0395b;
import p024g.C0495c;
import p024g.C0542r0;
import p024g.C0548u0;
import p024g.C0564y0;
import p024g.View$OnClickListenerC0529l0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class SearchView extends C0130b implements InterfaceC0395b {

    /* renamed from: h0 */
    public static final C0107k f399h0 = new C0107k();

    /* renamed from: A */
    public final Rect f400A;

    /* renamed from: B */
    public final Rect f401B;

    /* renamed from: C */
    public final int[] f402C;

    /* renamed from: D */
    public final int[] f403D;

    /* renamed from: E */
    public final ImageView f404E;

    /* renamed from: F */
    public final Drawable f405F;

    /* renamed from: G */
    public final int f406G;

    /* renamed from: H */
    public final int f407H;

    /* renamed from: I */
    public final Intent f408I;

    /* renamed from: J */
    public final Intent f409J;

    /* renamed from: K */
    public final CharSequence f410K;

    /* renamed from: L */
    public View.OnFocusChangeListener f411L;

    /* renamed from: M */
    public View.OnClickListener f412M;

    /* renamed from: N */
    public boolean f413N;

    /* renamed from: O */
    public boolean f414O;

    /* renamed from: P */
    public AbstractC0300a f415P;

    /* renamed from: Q */
    public boolean f416Q;

    /* renamed from: R */
    public CharSequence f417R;

    /* renamed from: S */
    public boolean f418S;

    /* renamed from: T */
    public boolean f419T;

    /* renamed from: U */
    public int f420U;

    /* renamed from: V */
    public boolean f421V;

    /* renamed from: W */
    public CharSequence f422W;

    /* renamed from: a0 */
    public boolean f423a0;

    /* renamed from: b0 */
    public int f424b0;

    /* renamed from: c0 */
    public SearchableInfo f425c0;

    /* renamed from: d0 */
    public Bundle f426d0;

    /* renamed from: e0 */
    public final RunnableC0098b f427e0;

    /* renamed from: f0 */
    public final RunnableC0099c f428f0;

    /* renamed from: g0 */
    public final WeakHashMap<String, Drawable.ConstantState> f429g0;

    /* renamed from: q */
    public final SearchAutoComplete f430q;

    /* renamed from: r */
    public final View f431r;

    /* renamed from: s */
    public final View f432s;

    /* renamed from: t */
    public final View f433t;

    /* renamed from: u */
    public final ImageView f434u;

    /* renamed from: v */
    public final ImageView f435v;

    /* renamed from: w */
    public final ImageView f436w;

    /* renamed from: x */
    public final ImageView f437x;

    /* renamed from: y */
    public final View f438y;

    /* renamed from: z */
    public C0113p f439z;

    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends C0495c {

        /* renamed from: e */
        public int f440e;

        /* renamed from: f */
        public SearchView f441f;

        /* renamed from: g */
        public boolean f442g;

        /* renamed from: h */
        public final RunnableC0096a f443h;

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes.dex */
        public class RunnableC0096a implements Runnable {
            public RunnableC0096a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f442g) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f442g = false;
                }
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, 0);
            this.f443h = new RunnableC0096a();
            this.f440e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i < 960 || i2 < 720 || configuration.orientation != 2) {
                if (i < 600) {
                    return (i < 640 || i2 < 480) ? 160 : 192;
                }
                return 192;
            }
            return 256;
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f440e <= 0 || super.enoughToFilter();
        }

        @Override // p024g.C0495c, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f442g) {
                RunnableC0096a runnableC0096a = this.f443h;
                removeCallbacks(runnableC0096a);
                post(runnableC0096a);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.f441f;
            searchView.m1298v(searchView.f414O);
            searchView.post(searchView.f427e0);
            SearchAutoComplete searchAutoComplete = searchView.f430q;
            if (searchAutoComplete.hasFocus()) {
                C0107k c0107k = SearchView.f399h0;
                Method method = c0107k.f455a;
                if (method != null) {
                    try {
                        method.invoke(searchAutoComplete, new Object[0]);
                    } catch (Exception unused) {
                    }
                }
                Method method2 = c0107k.f456b;
                if (method2 != null) {
                    try {
                        method2.invoke(searchAutoComplete, new Object[0]);
                    } catch (Exception unused2) {
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f441f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) {
            boolean z2;
            Method method;
            super.onWindowFocusChanged(z);
            if (z && this.f441f.hasFocus() && getVisibility() == 0) {
                this.f442g = true;
                Context context = getContext();
                C0107k c0107k = SearchView.f399h0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 && (method = SearchView.f399h0.f457c) != null) {
                    try {
                        method.invoke(this, Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            RunnableC0096a runnableC0096a = this.f443h;
            if (!z) {
                this.f442g = false;
                removeCallbacks(runnableC0096a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f442g = true;
            } else {
                this.f442g = false;
                removeCallbacks(runnableC0096a);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f441f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f440e = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes.dex */
    public class C0097a implements TextWatcher {
        public C0097a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.f430q.getText();
            searchView.f422W = text;
            boolean z = !TextUtils.isEmpty(text);
            searchView.m1299u(z);
            boolean z2 = !z;
            int i4 = 8;
            if (searchView.f421V && !searchView.f414O && z2) {
                searchView.f435v.setVisibility(8);
                i4 = 0;
            }
            searchView.f437x.setVisibility(i4);
            searchView.m1303q();
            searchView.m1300t();
            charSequence.toString();
            searchView.getClass();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes.dex */
    public class RunnableC0098b implements Runnable {
        public RunnableC0098b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SearchView.this.m1302r();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes.dex */
    public class RunnableC0099c implements Runnable {
        public RunnableC0099c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0300a abstractC0300a = SearchView.this.f415P;
            if (abstractC0300a == null || !(abstractC0300a instanceof View$OnClickListenerC0529l0)) {
                return;
            }
            abstractC0300a.mo593c(null);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes.dex */
    public class View$OnFocusChangeListenerC0100d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0100d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f411L;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes.dex */
    public class View$OnLayoutChangeListenerC0101e implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC0101e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView searchView = SearchView.this;
            View view2 = searchView.f438y;
            if (view2.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.f432s.getPaddingLeft();
                Rect rect = new Rect();
                boolean m534a = C0564y0.m534a(searchView);
                int dimensionPixelSize = searchView.f413N ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
                SearchAutoComplete searchAutoComplete = searchView.f430q;
                searchAutoComplete.getDropDownBackground().getPadding(rect);
                searchAutoComplete.setDropDownHorizontalOffset(m534a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0102f implements View.OnClickListener {
        public View$OnClickListenerC0102f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String flattenToShortString;
            SearchView searchView = SearchView.this;
            ImageView imageView = searchView.f434u;
            SearchAutoComplete searchAutoComplete = searchView.f430q;
            if (view == imageView) {
                searchView.m1298v(false);
                searchAutoComplete.requestFocus();
                searchAutoComplete.setImeVisibility(true);
                View.OnClickListener onClickListener = searchView.f412M;
                if (onClickListener != null) {
                    onClickListener.onClick(searchView);
                }
            } else if (view == searchView.f436w) {
                searchView.m1308l();
            } else if (view == searchView.f435v) {
                searchView.m1304p();
            } else if (view == searchView.f437x) {
                SearchableInfo searchableInfo = searchView.f425c0;
                if (searchableInfo != null) {
                    try {
                        if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                            Intent intent = new Intent(searchView.f408I);
                            ComponentName searchActivity = searchableInfo.getSearchActivity();
                            if (searchActivity == null) {
                                flattenToShortString = null;
                            } else {
                                flattenToShortString = searchActivity.flattenToShortString();
                            }
                            intent.putExtra("calling_package", flattenToShortString);
                            searchView.getContext().startActivity(intent);
                        } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            searchView.getContext().startActivity(searchView.m1309k(searchView.f409J, searchableInfo));
                        }
                    } catch (ActivityNotFoundException unused) {
                        Log.w("SearchView", "Could not find voice search activity");
                    }
                }
            } else if (view == searchAutoComplete) {
                C0107k c0107k = SearchView.f399h0;
                Method method = c0107k.f455a;
                if (method != null) {
                    try {
                        method.invoke(searchAutoComplete, new Object[0]);
                    } catch (Exception unused2) {
                    }
                }
                Method method2 = c0107k.f456b;
                if (method2 != null) {
                    try {
                        method2.invoke(searchAutoComplete, new Object[0]);
                    } catch (Exception unused3) {
                    }
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes.dex */
    public class View$OnKeyListenerC0103g implements View.OnKeyListener {
        public View$OnKeyListenerC0103g() {
        }

        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            boolean z;
            int length;
            SearchView searchView = SearchView.this;
            if (searchView.f425c0 == null) {
                return false;
            }
            SearchAutoComplete searchAutoComplete = searchView.f430q;
            if (searchAutoComplete.isPopupShowing() && searchAutoComplete.getListSelection() != -1) {
                if (searchView.f425c0 == null || searchView.f415P == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
                    return false;
                }
                if (i != 66 && i != 84 && i != 61) {
                    if (i != 21 && i != 22) {
                        if (i != 19) {
                            return false;
                        }
                        searchAutoComplete.getListSelection();
                        return false;
                    }
                    if (i == 21) {
                        length = 0;
                    } else {
                        length = searchAutoComplete.length();
                    }
                    searchAutoComplete.setSelection(length);
                    searchAutoComplete.setListSelection(0);
                    searchAutoComplete.clearListSelection();
                    Method method = SearchView.f399h0.f457c;
                    if (method != null) {
                        try {
                            method.invoke(searchAutoComplete, Boolean.TRUE);
                        } catch (Exception unused) {
                        }
                    }
                } else {
                    searchView.m1307m(searchAutoComplete.getListSelection());
                }
                return true;
            }
            if (TextUtils.getTrimmedLength(searchAutoComplete.getText()) == 0) {
                z = true;
            } else {
                z = false;
            }
            if (z || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            searchView.getContext().startActivity(searchView.m1310j("android.intent.action.SEARCH", null, null, searchAutoComplete.getText().toString()));
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes.dex */
    public class C0104h implements TextView.OnEditorActionListener {
        public C0104h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m1304p();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes.dex */
    public class C0105i implements AdapterView.OnItemClickListener {
        public C0105i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m1307m(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes.dex */
    public class C0106j implements AdapterView.OnItemSelectedListener {
        public C0106j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m1306n(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes.dex */
    public static class C0107k {

        /* renamed from: a */
        public final Method f455a;

        /* renamed from: b */
        public final Method f456b;

        /* renamed from: c */
        public final Method f457c;

        public C0107k() {
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f455a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f456b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f457c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes.dex */
    public interface InterfaceC0108l {
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes.dex */
    public interface InterfaceC0109m {
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes.dex */
    public interface InterfaceC0110n {
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes.dex */
    public static class C0111o extends AbstractC0317a {
        public static final Parcelable.Creator<C0111o> CREATOR = new C0112a();

        /* renamed from: c */
        public boolean f458c;

        /* renamed from: androidx.appcompat.widget.SearchView$o$a */
        /* loaded from: classes.dex */
        public static class C0112a implements Parcelable.ClassLoaderCreator<C0111o> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new C0111o(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new C0111o[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final C0111o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0111o(parcel, classLoader);
            }
        }

        public C0111o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f458c = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public C0111o(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f458c + "}";
        }

        @Override // p009c0.AbstractC0317a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f1144a, i);
            parcel.writeValue(Boolean.valueOf(this.f458c));
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$p */
    /* loaded from: classes.dex */
    public static class C0113p extends TouchDelegate {

        /* renamed from: a */
        public final View f459a;

        /* renamed from: b */
        public final Rect f460b;

        /* renamed from: c */
        public final Rect f461c;

        /* renamed from: d */
        public final Rect f462d;

        /* renamed from: e */
        public final int f463e;

        /* renamed from: f */
        public boolean f464f;

        public C0113p(Rect rect, Rect rect2, SearchAutoComplete searchAutoComplete) {
            super(rect, searchAutoComplete);
            int scaledTouchSlop = ViewConfiguration.get(searchAutoComplete.getContext()).getScaledTouchSlop();
            this.f463e = scaledTouchSlop;
            Rect rect3 = new Rect();
            this.f460b = rect3;
            Rect rect4 = new Rect();
            this.f462d = rect4;
            Rect rect5 = new Rect();
            this.f461c = rect5;
            rect3.set(rect);
            rect4.set(rect);
            int i = -scaledTouchSlop;
            rect4.inset(i, i);
            rect5.set(rect2);
            this.f459a = searchAutoComplete;
        }

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            float f;
            int i;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f464f;
                    if (z2 && !this.f462d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f464f;
                        this.f464f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.f460b.contains(x, y)) {
                    this.f464f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (z3) {
                Rect rect = this.f461c;
                View view = this.f459a;
                if (!z || rect.contains(x, y)) {
                    f = x - rect.left;
                    i = y - rect.top;
                } else {
                    f = view.getWidth() / 2;
                    i = view.getHeight() / 2;
                }
                motionEvent.setLocation(f, i);
                return view.dispatchTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f400A = new Rect();
        this.f401B = new Rect();
        this.f402C = new int[2];
        this.f403D = new int[2];
        this.f427e0 = new RunnableC0098b();
        this.f428f0 = new RunnableC0099c();
        this.f429g0 = new WeakHashMap<>();
        View$OnClickListenerC0102f view$OnClickListenerC0102f = new View$OnClickListenerC0102f();
        View$OnKeyListenerC0103g view$OnKeyListenerC0103g = new View$OnKeyListenerC0103g();
        C0104h c0104h = new C0104h();
        C0105i c0105i = new C0105i();
        C0106j c0106j = new C0106j();
        C0097a c0097a = new C0097a();
        C0542r0 c0542r0 = new C0542r0(context, context.obtainStyledAttributes(attributeSet, C0736h.f2528A, i, 0));
        LayoutInflater.from(context).inflate(c0542r0.m572i(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f430q = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f431r = findViewById(R.id.search_edit_frame);
        View findViewById = findViewById(R.id.search_plate);
        this.f432s = findViewById;
        View findViewById2 = findViewById(R.id.submit_area);
        this.f433t = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f434u = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f435v = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f436w = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f437x = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.f404E = imageView5;
        Drawable m576e = c0542r0.m576e(10);
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        findViewById.setBackground(m576e);
        findViewById2.setBackground(c0542r0.m576e(14));
        imageView.setImageDrawable(c0542r0.m576e(13));
        imageView2.setImageDrawable(c0542r0.m576e(7));
        imageView3.setImageDrawable(c0542r0.m576e(4));
        imageView4.setImageDrawable(c0542r0.m576e(16));
        imageView5.setImageDrawable(c0542r0.m576e(13));
        this.f405F = c0542r0.m576e(12);
        C0548u0.m562a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.f406G = c0542r0.m572i(15, R.layout.abc_search_dropdown_item_icons_2line);
        this.f407H = c0542r0.m572i(5, 0);
        imageView.setOnClickListener(view$OnClickListenerC0102f);
        imageView3.setOnClickListener(view$OnClickListenerC0102f);
        imageView2.setOnClickListener(view$OnClickListenerC0102f);
        imageView4.setOnClickListener(view$OnClickListenerC0102f);
        searchAutoComplete.setOnClickListener(view$OnClickListenerC0102f);
        searchAutoComplete.addTextChangedListener(c0097a);
        searchAutoComplete.setOnEditorActionListener(c0104h);
        searchAutoComplete.setOnItemClickListener(c0105i);
        searchAutoComplete.setOnItemSelectedListener(c0106j);
        searchAutoComplete.setOnKeyListener(view$OnKeyListenerC0103g);
        searchAutoComplete.setOnFocusChangeListener(new View$OnFocusChangeListenerC0100d());
        setIconifiedByDefault(c0542r0.m580a(8, true));
        int m577d = c0542r0.m577d(1, -1);
        if (m577d != -1) {
            setMaxWidth(m577d);
        }
        this.f410K = c0542r0.m571j(6);
        this.f417R = c0542r0.m571j(11);
        int m573h = c0542r0.m573h(3, -1);
        if (m573h != -1) {
            setImeOptions(m573h);
        }
        int m573h2 = c0542r0.m573h(2, -1);
        if (m573h2 != -1) {
            setInputType(m573h2);
        }
        setFocusable(c0542r0.m580a(0, true));
        c0542r0.m568m();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f408I = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f409J = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f438y = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0101e());
        }
        m1298v(this.f413N);
        m1301s();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f430q;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f419T = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f430q;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.f419T = false;
    }

    public int getImeOptions() {
        return this.f430q.getImeOptions();
    }

    public int getInputType() {
        return this.f430q.getInputType();
    }

    public int getMaxWidth() {
        return this.f420U;
    }

    public CharSequence getQuery() {
        return this.f430q.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f417R;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f425c0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f410K : getContext().getText(this.f425c0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f407H;
    }

    public int getSuggestionRowLayout() {
        return this.f406G;
    }

    public AbstractC0300a getSuggestionsAdapter() {
        return this.f415P;
    }

    /* renamed from: j */
    public final Intent m1310j(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f422W);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f426d0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f425c0.getSearchActivity());
        return intent;
    }

    /* renamed from: k */
    public final Intent m1309k(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f426d0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* renamed from: l */
    public final void m1308l() {
        SearchAutoComplete searchAutoComplete = this.f430q;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.f413N) {
            clearFocus();
            m1298v(true);
        }
    }

    /* renamed from: m */
    public final void m1307m(int i) {
        int i2;
        Uri parse;
        String m587i;
        Cursor cursor = this.f415P.f1116d;
        if (cursor != null && cursor.moveToPosition(i)) {
            Intent intent = null;
            try {
                int i3 = View$OnClickListenerC0529l0.f1997z;
                String m587i2 = View$OnClickListenerC0529l0.m587i(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (m587i2 == null) {
                    m587i2 = this.f425c0.getSuggestIntentAction();
                }
                if (m587i2 == null) {
                    m587i2 = "android.intent.action.SEARCH";
                }
                String m587i3 = View$OnClickListenerC0529l0.m587i(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (m587i3 == null) {
                    m587i3 = this.f425c0.getSuggestIntentData();
                }
                if (m587i3 != null && (m587i = View$OnClickListenerC0529l0.m587i(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    m587i3 = m587i3 + "/" + Uri.encode(m587i);
                }
                if (m587i3 == null) {
                    parse = null;
                } else {
                    parse = Uri.parse(m587i3);
                }
                intent = m1310j(m587i2, parse, View$OnClickListenerC0529l0.m587i(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), View$OnClickListenerC0529l0.m587i(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e) {
                try {
                    i2 = cursor.getPosition();
                } catch (RuntimeException unused) {
                    i2 = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            }
            if (intent != null) {
                try {
                    getContext().startActivity(intent);
                } catch (RuntimeException e2) {
                    Log.e("SearchView", "Failed launch activity: " + intent, e2);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f430q;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    /* renamed from: n */
    public final void m1306n(int i) {
        String mo592d;
        Editable text = this.f430q.getText();
        Cursor cursor = this.f415P.f1116d;
        if (cursor != null) {
            if (cursor.moveToPosition(i) && (mo592d = this.f415P.mo592d(cursor)) != null) {
                setQuery(mo592d);
            } else {
                setQuery(text);
            }
        }
    }

    /* renamed from: o */
    public final void m1305o(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // p016e.InterfaceC0395b
    public final void onActionViewCollapsed() {
        SearchAutoComplete searchAutoComplete = this.f430q;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f422W = "";
        clearFocus();
        m1298v(true);
        searchAutoComplete.setImeOptions(this.f424b0);
        this.f423a0 = false;
    }

    @Override // p016e.InterfaceC0395b
    public final void onActionViewExpanded() {
        if (this.f423a0) {
            return;
        }
        this.f423a0 = true;
        SearchAutoComplete searchAutoComplete = this.f430q;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f424b0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f427e0);
        post(this.f428f0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.C0130b, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f430q;
            int[] iArr = this.f402C;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.f403D;
            getLocationInWindow(iArr2);
            int i5 = iArr[1] - iArr2[1];
            int i6 = iArr[0] - iArr2[0];
            Rect rect = this.f400A;
            rect.set(i6, i5, searchAutoComplete.getWidth() + i6, searchAutoComplete.getHeight() + i5);
            int i7 = rect.left;
            int i8 = rect.right;
            int i9 = i4 - i2;
            Rect rect2 = this.f401B;
            rect2.set(i7, 0, i8, i9);
            C0113p c0113p = this.f439z;
            if (c0113p == null) {
                C0113p c0113p2 = new C0113p(rect2, rect, searchAutoComplete);
                this.f439z = c0113p2;
                setTouchDelegate(c0113p2);
                return;
            }
            c0113p.f460b.set(rect2);
            Rect rect3 = c0113p.f462d;
            rect3.set(rect2);
            int i10 = -c0113p.f463e;
            rect3.inset(i10, i10);
            c0113p.f461c.set(rect);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r0 <= 0) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0049  */
    @Override // androidx.appcompat.widget.C0130b, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        int mode;
        if (this.f414O) {
            super.onMeasure(i, i2);
            return;
        }
        int mode2 = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                if (mode2 == 1073741824) {
                    i3 = this.f420U;
                }
            } else {
                size = this.f420U;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
            }
            mode = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == Integer.MIN_VALUE) {
                if (mode == 0) {
                    size2 = getPreferredHeight();
                }
            } else {
                size2 = Math.min(getPreferredHeight(), size2);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        i3 = this.f420U;
        if (i3 <= 0) {
            i3 = getPreferredWidth();
        }
        size = Math.min(i3, size);
        mode = View.MeasureSpec.getMode(i2);
        int size22 = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size22, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0111o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0111o c0111o = (C0111o) parcelable;
        super.onRestoreInstanceState(c0111o.f1144a);
        m1298v(c0111o.f458c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0111o c0111o = new C0111o(super.onSaveInstanceState());
        c0111o.f458c = this.f414O;
        return c0111o;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.f427e0);
    }

    /* renamed from: p */
    public final void m1304p() {
        SearchAutoComplete searchAutoComplete = this.f430q;
        Editable text = searchAutoComplete.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.f425c0 != null) {
                getContext().startActivity(m1310j("android.intent.action.SEARCH", null, null, text.toString()));
            }
            searchAutoComplete.setImeVisibility(false);
            searchAutoComplete.dismissDropDown();
        }
    }

    /* renamed from: q */
    public final void m1303q() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f430q.getText());
        if (!z2 && (!this.f413N || this.f423a0)) {
            z = false;
        }
        int i = z ? 0 : 8;
        ImageView imageView = this.f436w;
        imageView.setVisibility(i);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: r */
    public final void m1302r() {
        int[] iArr = this.f430q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f432s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f433t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        if (this.f419T || !isFocusable()) {
            return false;
        }
        if (!this.f414O) {
            boolean requestFocus = this.f430q.requestFocus(i, rect);
            if (requestFocus) {
                m1298v(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i, rect);
    }

    /* renamed from: s */
    public final void m1301s() {
        Drawable drawable;
        SpannableStringBuilder queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z = this.f413N;
        SearchAutoComplete searchAutoComplete = this.f430q;
        if (z && (drawable = this.f405F) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public void setAppSearchData(Bundle bundle) {
        this.f426d0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m1308l();
            return;
        }
        m1298v(false);
        SearchAutoComplete searchAutoComplete = this.f430q;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f412M;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f413N == z) {
            return;
        }
        this.f413N = z;
        m1298v(z);
        m1301s();
    }

    public void setImeOptions(int i) {
        this.f430q.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f430q.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f420U = i;
        requestLayout();
    }

    public void setOnCloseListener(InterfaceC0108l interfaceC0108l) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f411L = onFocusChangeListener;
    }

    public void setOnQueryTextListener(InterfaceC0109m interfaceC0109m) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f412M = onClickListener;
    }

    public void setOnSuggestionListener(InterfaceC0110n interfaceC0110n) {
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f417R = charSequence;
        m1301s();
    }

    public void setQueryRefinementEnabled(boolean z) {
        int i;
        this.f418S = z;
        AbstractC0300a abstractC0300a = this.f415P;
        if (abstractC0300a instanceof View$OnClickListenerC0529l0) {
            View$OnClickListenerC0529l0 view$OnClickListenerC0529l0 = (View$OnClickListenerC0529l0) abstractC0300a;
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            view$OnClickListenerC0529l0.f2003r = i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
        if (getContext().getPackageManager().resolveActivity(r3, 65536) != null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setSearchableInfo(SearchableInfo searchableInfo) {
        int i;
        this.f425c0 = searchableInfo;
        SearchAutoComplete searchAutoComplete = this.f430q;
        boolean z = true;
        Intent intent = null;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.f425c0.getImeOptions());
            int inputType = this.f425c0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.f425c0.getSuggestAuthority() != null) {
                    inputType = inputType | 65536 | 524288;
                }
            }
            searchAutoComplete.setInputType(inputType);
            AbstractC0300a abstractC0300a = this.f415P;
            if (abstractC0300a != null) {
                abstractC0300a.mo593c(null);
            }
            if (this.f425c0.getSuggestAuthority() != null) {
                View$OnClickListenerC0529l0 view$OnClickListenerC0529l0 = new View$OnClickListenerC0529l0(getContext(), this, this.f425c0, this.f429g0);
                this.f415P = view$OnClickListenerC0529l0;
                searchAutoComplete.setAdapter(view$OnClickListenerC0529l0);
                View$OnClickListenerC0529l0 view$OnClickListenerC0529l02 = (View$OnClickListenerC0529l0) this.f415P;
                if (this.f418S) {
                    i = 2;
                } else {
                    i = 1;
                }
                view$OnClickListenerC0529l02.f2003r = i;
            }
            m1301s();
        }
        SearchableInfo searchableInfo2 = this.f425c0;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f425c0.getVoiceSearchLaunchWebSearch()) {
                intent = this.f408I;
            } else if (this.f425c0.getVoiceSearchLaunchRecognizer()) {
                intent = this.f409J;
            }
            if (intent != null) {
            }
        }
        z = false;
        this.f421V = z;
        if (z) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        m1298v(this.f414O);
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f416Q = z;
        m1298v(this.f414O);
    }

    public void setSuggestionsAdapter(AbstractC0300a abstractC0300a) {
        this.f415P = abstractC0300a;
        this.f430q.setAdapter(abstractC0300a);
    }

    /* renamed from: t */
    public final void m1300t() {
        boolean z;
        int i = 0;
        if ((this.f416Q || this.f421V) && !this.f414O) {
            z = true;
        } else {
            z = false;
        }
        if (!z || (this.f435v.getVisibility() != 0 && this.f437x.getVisibility() != 0)) {
            i = 8;
        }
        this.f433t.setVisibility(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001e, code lost:
        if (r2.f421V == false) goto L14;
     */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1299u(boolean z) {
        int i;
        boolean z2;
        boolean z3 = this.f416Q;
        if (z3) {
            i = 0;
            if ((z3 || this.f421V) && !this.f414O) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (hasFocus()) {
                    if (!z) {
                    }
                    this.f435v.setVisibility(i);
                }
            }
        }
        i = 8;
        this.f435v.setVisibility(i);
    }

    /* renamed from: v */
    public final void m1298v(boolean z) {
        int i;
        int i2;
        int i3;
        this.f414O = z;
        int i4 = 8;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        boolean z2 = !TextUtils.isEmpty(this.f430q.getText());
        this.f434u.setVisibility(i);
        m1299u(z2);
        if (z) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        this.f431r.setVisibility(i2);
        ImageView imageView = this.f404E;
        if (imageView.getDrawable() != null && !this.f413N) {
            i3 = 0;
        } else {
            i3 = 8;
        }
        imageView.setVisibility(i3);
        m1303q();
        boolean z3 = !z2;
        if (this.f421V && !this.f414O && z3) {
            this.f435v.setVisibility(8);
            i4 = 0;
        }
        this.f437x.setVisibility(i4);
        m1300t();
    }
}
