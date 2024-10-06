package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0078k;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p024g.C0542r0;
import p046m1.C0736h;
import p076y.C0954m;
import p076y.C0960q;
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC0078k.InterfaceC0079a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: b */
    public C0072h f146b;

    /* renamed from: c */
    public ImageView f147c;

    /* renamed from: d */
    public RadioButton f148d;

    /* renamed from: e */
    public TextView f149e;

    /* renamed from: f */
    public CheckBox f150f;

    /* renamed from: g */
    public TextView f151g;

    /* renamed from: h */
    public ImageView f152h;

    /* renamed from: i */
    public ImageView f153i;

    /* renamed from: j */
    public LinearLayout f154j;

    /* renamed from: k */
    public final Drawable f155k;

    /* renamed from: l */
    public final int f156l;

    /* renamed from: m */
    public final Context f157m;

    /* renamed from: n */
    public boolean f158n;

    /* renamed from: o */
    public final Drawable f159o;

    /* renamed from: p */
    public final boolean f160p;

    /* renamed from: q */
    public LayoutInflater f161q;

    /* renamed from: r */
    public boolean f162r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0542r0 m569l = C0542r0.m569l(getContext(), attributeSet, C0736h.f2584x, R.attr.listMenuViewStyle);
        this.f155k = m569l.m576e(5);
        this.f156l = m569l.m572i(1, -1);
        this.f158n = m569l.m580a(7, false);
        this.f157m = context;
        this.f159o = m569l.m576e(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, R.attr.dropDownListViewStyle, 0);
        this.f160p = obtainStyledAttributes.hasValue(0);
        m569l.m568m();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f161q == null) {
            this.f161q = LayoutInflater.from(getContext());
        }
        return this.f161q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f152h;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f153i;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f153i.getLayoutParams();
        rect.top = this.f153i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
        if (r0 == false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0113  */
    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void mo939b(C0072h c0072h) {
        int i;
        boolean z;
        char c;
        int i2;
        int i3;
        String sb;
        boolean z2;
        char c2;
        char c3;
        this.f146b = c0072h;
        int i4 = 0;
        if (c0072h.isVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        setTitle(c0072h.f256e);
        setCheckable(c0072h.isCheckable());
        C0068f c0068f = c0072h.f265n;
        if (c0068f.mo1323o()) {
            if (c0068f.mo1324n()) {
                c3 = c0072h.f261j;
            } else {
                c3 = c0072h.f259h;
            }
            if (c3 != 0) {
                z = true;
                c0068f.mo1324n();
                if (z) {
                    C0072h c0072h2 = this.f146b;
                    C0068f c0068f2 = c0072h2.f265n;
                    if (c0068f2.mo1323o()) {
                        if (c0068f2.mo1324n()) {
                            c2 = c0072h2.f261j;
                        } else {
                            c2 = c0072h2.f259h;
                        }
                        if (c2 != 0) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                }
                i4 = 8;
                if (i4 == 0) {
                    TextView textView = this.f151g;
                    C0072h c0072h3 = this.f146b;
                    if (c0072h3.f265n.mo1324n()) {
                        c = c0072h3.f261j;
                    } else {
                        c = c0072h3.f259h;
                    }
                    if (c == 0) {
                        sb = "";
                    } else {
                        C0068f c0068f3 = c0072h3.f265n;
                        Resources resources = c0068f3.f222a.getResources();
                        StringBuilder sb2 = new StringBuilder();
                        if (ViewConfiguration.get(c0068f3.f222a).hasPermanentMenuKey()) {
                            sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                        }
                        if (c0068f3.mo1324n()) {
                            i2 = c0072h3.f262k;
                        } else {
                            i2 = c0072h3.f260i;
                        }
                        C0072h.m1338a(sb2, i2, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                        C0072h.m1338a(sb2, i2, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                        C0072h.m1338a(sb2, i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                        C0072h.m1338a(sb2, i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                        C0072h.m1338a(sb2, i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                        C0072h.m1338a(sb2, i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                        if (c != '\b') {
                            if (c != '\n') {
                                if (c != ' ') {
                                    sb2.append(c);
                                    sb = sb2.toString();
                                } else {
                                    i3 = R.string.abc_menu_space_shortcut_label;
                                }
                            } else {
                                i3 = R.string.abc_menu_enter_shortcut_label;
                            }
                        } else {
                            i3 = R.string.abc_menu_delete_shortcut_label;
                        }
                        sb2.append(resources.getString(i3));
                        sb = sb2.toString();
                    }
                    textView.setText(sb);
                }
                if (this.f151g.getVisibility() != i4) {
                    this.f151g.setVisibility(i4);
                }
                setIcon(c0072h.getIcon());
                setEnabled(c0072h.isEnabled());
                setSubMenuArrowVisible(c0072h.hasSubMenu());
                setContentDescription(c0072h.f268q);
            }
        }
        z = false;
        c0068f.mo1324n();
        if (z) {
        }
        i4 = 8;
        if (i4 == 0) {
        }
        if (this.f151g.getVisibility() != i4) {
        }
        setIcon(c0072h.getIcon());
        setEnabled(c0072h.isEnabled());
        setSubMenuArrowVisible(c0072h.hasSubMenu());
        setContentDescription(c0072h.f268q);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0078k.InterfaceC0079a
    public C0072h getItemData() {
        return this.f146b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        setBackground(this.f155k);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f149e = textView;
        int i = this.f156l;
        if (i != -1) {
            textView.setTextAppearance(this.f157m, i);
        }
        this.f151g = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f152h = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f159o);
        }
        this.f153i = (ImageView) findViewById(R.id.group_divider);
        this.f154j = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f147c != null && this.f158n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f147c.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        boolean z2;
        CompoundButton compoundButton;
        View view;
        if (!z && this.f148d == null && this.f150f == null) {
            return;
        }
        if ((this.f146b.f275x & 4) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (this.f148d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f148d = radioButton;
                LinearLayout linearLayout = this.f154j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f148d;
            view = this.f150f;
        } else {
            if (this.f150f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f150f = checkBox;
                LinearLayout linearLayout2 = this.f154j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f150f;
            view = this.f148d;
        }
        if (z) {
            compoundButton.setChecked(this.f146b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view != null && view.getVisibility() != 8) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        CheckBox checkBox2 = this.f150f;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f148d;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        boolean z2;
        CompoundButton compoundButton;
        if ((this.f146b.f275x & 4) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (this.f148d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f148d = radioButton;
                LinearLayout linearLayout = this.f154j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f148d;
        } else {
            if (this.f150f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f150f = checkBox;
                LinearLayout linearLayout2 = this.f154j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f150f;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f162r = z;
        this.f158n = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f153i;
        if (imageView != null) {
            imageView.setVisibility((this.f160p || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f146b.f265n.getClass();
        boolean z = this.f162r;
        if (!z && !this.f158n) {
            return;
        }
        ImageView imageView = this.f147c;
        if (imageView == null && drawable == null && !this.f158n) {
            return;
        }
        if (imageView == null) {
            ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
            this.f147c = imageView2;
            LinearLayout linearLayout = this.f154j;
            if (linearLayout != null) {
                linearLayout.addView(imageView2, 0);
            } else {
                addView(imageView2, 0);
            }
        }
        if (drawable == null && !this.f158n) {
            this.f147c.setVisibility(8);
            return;
        }
        ImageView imageView3 = this.f147c;
        if (!z) {
            drawable = null;
        }
        imageView3.setImageDrawable(drawable);
        if (this.f147c.getVisibility() != 0) {
            this.f147c.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        int i;
        TextView textView;
        if (charSequence != null) {
            this.f149e.setText(charSequence);
            if (this.f149e.getVisibility() == 0) {
                return;
            }
            textView = this.f149e;
            i = 0;
        } else {
            i = 8;
            if (this.f149e.getVisibility() == 8) {
                return;
            }
            textView = this.f149e;
        }
        textView.setVisibility(i);
    }
}
