package p004b;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: b.f */
/* loaded from: classes.dex */
public final class DialogInterfaceC0262f extends DialogC0283p implements DialogInterface {

    /* renamed from: d */
    public final AlertController f964d;

    public DialogInterfaceC0262f(Context context, int i) {
        super(context, m1047c(context, i));
        this.f964d = new AlertController(getContext(), this, getWindow());
    }

    /* renamed from: c */
    public static int m1047c(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0290, code lost:
        if (r2 != null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0227, code lost:
        if (r4 != null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0231, code lost:
        if (r4 != null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0233, code lost:
        r4.setVisibility(0);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x023c  */
    @Override // p004b.DialogC0283p, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCreate(Bundle bundle) {
        boolean z;
        View view;
        boolean z2;
        int i;
        boolean z3;
        View findViewById;
        AlertController.RecycleListView recycleListView;
        AlertController.RecycleListView recycleListView2;
        ListAdapter listAdapter;
        View view2;
        View findViewById2;
        Button button;
        super.onCreate(bundle);
        AlertController alertController = this.f964d;
        alertController.f93b.setContentView(alertController.f109r);
        Window window = alertController.f94c;
        View findViewById3 = window.findViewById(R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        window.setFlags(131072, 131072);
        viewGroup.setVisibility(8);
        View findViewById7 = viewGroup.findViewById(R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup m1362b = AlertController.m1362b(findViewById7, findViewById4);
        ViewGroup m1362b2 = AlertController.m1362b(findViewById8, findViewById5);
        ViewGroup m1362b3 = AlertController.m1362b(findViewById9, findViewById6);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        alertController.f100i = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.f100i.setNestedScrollingEnabled(false);
        TextView textView = (TextView) m1362b2.findViewById(16908299);
        alertController.f105n = textView;
        if (textView != null) {
            textView.setVisibility(8);
            alertController.f100i.removeView(alertController.f105n);
            if (alertController.f96e != null) {
                ViewGroup viewGroup2 = (ViewGroup) alertController.f100i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(alertController.f100i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(alertController.f96e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                m1362b2.setVisibility(8);
            }
        }
        Button button2 = (Button) m1362b3.findViewById(16908313);
        alertController.f97f = button2;
        AlertController.View$OnClickListenerC0050a view$OnClickListenerC0050a = alertController.f114w;
        button2.setOnClickListener(view$OnClickListenerC0050a);
        if (TextUtils.isEmpty(null)) {
            alertController.f97f.setVisibility(8);
            z = false;
        } else {
            alertController.f97f.setText((CharSequence) null);
            alertController.f97f.setVisibility(0);
            z = true;
        }
        Button button3 = (Button) m1362b3.findViewById(16908314);
        alertController.f98g = button3;
        button3.setOnClickListener(view$OnClickListenerC0050a);
        if (TextUtils.isEmpty(null)) {
            alertController.f98g.setVisibility(8);
        } else {
            alertController.f98g.setText((CharSequence) null);
            alertController.f98g.setVisibility(0);
            z |= true;
        }
        Button button4 = (Button) m1362b3.findViewById(16908315);
        alertController.f99h = button4;
        button4.setOnClickListener(view$OnClickListenerC0050a);
        if (TextUtils.isEmpty(null)) {
            alertController.f99h.setVisibility(8);
        } else {
            alertController.f99h.setText((CharSequence) null);
            alertController.f99h.setVisibility(0);
            z |= true;
        }
        TypedValue typedValue = new TypedValue();
        alertController.f92a.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z) {
                button = alertController.f97f;
            } else if (z) {
                button = alertController.f98g;
            } else if (z) {
                button = alertController.f99h;
            }
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
            layoutParams.gravity = 1;
            layoutParams.weight = 0.5f;
            button.setLayoutParams(layoutParams);
        }
        if (!(z)) {
            m1362b3.setVisibility(8);
        }
        if (alertController.f106o != null) {
            m1362b.addView(alertController.f106o, 0, new ViewGroup.LayoutParams(-1, -2));
            view = window.findViewById(R.id.title_template);
        } else {
            alertController.f103l = (ImageView) window.findViewById(16908294);
            if ((!TextUtils.isEmpty(alertController.f95d)) && alertController.f112u) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                alertController.f104m = textView2;
                textView2.setText(alertController.f95d);
                int i2 = alertController.f101j;
                if (i2 != 0) {
                    alertController.f103l.setImageResource(i2);
                } else {
                    Drawable drawable = alertController.f102k;
                    if (drawable != null) {
                        alertController.f103l.setImageDrawable(drawable);
                    } else {
                        alertController.f104m.setPadding(alertController.f103l.getPaddingLeft(), alertController.f103l.getPaddingTop(), alertController.f103l.getPaddingRight(), alertController.f103l.getPaddingBottom());
                        alertController.f103l.setVisibility(8);
                    }
                }
                z2 = viewGroup.getVisibility() == 8;
                i = (m1362b != null || m1362b.getVisibility() == 8) ? 0 : 1;
                z3 = m1362b3.getVisibility() == 8;
                if (!z3 && (findViewById2 = m1362b2.findViewById(R.id.textSpacerNoButtons)) != null) {
                    findViewById2.setVisibility(0);
                }
                if (i == 0) {
                    NestedScrollView nestedScrollView2 = alertController.f100i;
                    if (nestedScrollView2 != null) {
                        nestedScrollView2.setClipToPadding(true);
                    }
                    findViewById = alertController.f96e != null ? m1362b.findViewById(R.id.titleDividerNoCustom) : null;
                } else {
                    findViewById = m1362b2.findViewById(R.id.textSpacerNoTitle);
                }
                recycleListView = alertController.f96e;
                if (recycleListView instanceof AlertController.RecycleListView) {
                    recycleListView.getClass();
                    if (!z3 || i == 0) {
                        recycleListView.setPadding(recycleListView.getPaddingLeft(), i != 0 ? recycleListView.getPaddingTop() : recycleListView.f115b, recycleListView.getPaddingRight(), z3 ? recycleListView.getPaddingBottom() : recycleListView.f116c);
                    }
                }
                if (!z2) {
                    ViewGroup viewGroup3 = alertController.f96e;
                    if (viewGroup3 == null) {
                        viewGroup3 = alertController.f100i;
                    }
                    if (viewGroup3 != null) {
                        int i3 = i | (z3 ? 2 : 0);
                        View findViewById10 = window.findViewById(R.id.scrollIndicatorUp);
                        View findViewById11 = window.findViewById(R.id.scrollIndicatorDown);
                        int i4 = Build.VERSION.SDK_INT;
                        if (i4 >= 23) {
                            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
                            if (i4 >= 23) {
                                viewGroup3.setScrollIndicators(i3, 3);
                            }
                            if (findViewById10 != null) {
                                m1362b2.removeView(findViewById10);
                            }
                        } else {
                            if (findViewById10 != null && (i3 & 1) == 0) {
                                m1362b2.removeView(findViewById10);
                                findViewById10 = null;
                            }
                            if (findViewById11 == null || (i3 & 2) != 0) {
                                view2 = findViewById11;
                            } else {
                                m1362b2.removeView(findViewById11);
                                view2 = null;
                            }
                            if (findViewById10 != null || view2 != null) {
                                AlertController.RecycleListView recycleListView3 = alertController.f96e;
                                if (recycleListView3 != null) {
                                    recycleListView3.setOnScrollListener(new C0260d(findViewById10, view2));
                                    alertController.f96e.post(new RunnableC0261e(alertController, findViewById10, view2));
                                } else {
                                    if (findViewById10 != null) {
                                        m1362b2.removeView(findViewById10);
                                    }
                                    if (view2 != null) {
                                        findViewById11 = view2;
                                        m1362b2.removeView(findViewById11);
                                    }
                                }
                            }
                        }
                    }
                }
                recycleListView2 = alertController.f96e;
                if (recycleListView2 != null || (listAdapter = alertController.f107p) == null) {
                }
                recycleListView2.setAdapter(listAdapter);
                int i5 = alertController.f108q;
                if (i5 > -1) {
                    recycleListView2.setItemChecked(i5, true);
                    recycleListView2.setSelection(i5);
                    return;
                }
                return;
            }
            window.findViewById(R.id.title_template).setVisibility(8);
            alertController.f103l.setVisibility(8);
            view = m1362b;
        }
        view.setVisibility(8);
        if (viewGroup.getVisibility() == 8) {
        }
        if (m1362b != null) {
        }
        if (m1362b3.getVisibility() == 8) {
        }
        if (!z3) {
            findViewById2.setVisibility(0);
        }
        if (i == 0) {
        }
        recycleListView = alertController.f96e;
        if (recycleListView instanceof AlertController.RecycleListView) {
        }
        if (!z2) {
        }
        recycleListView2 = alertController.f96e;
        if (recycleListView2 != null) {
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        NestedScrollView nestedScrollView = this.f964d.f100i;
        if (nestedScrollView != null && nestedScrollView.m1233m(keyEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean z;
        NestedScrollView nestedScrollView = this.f964d.f100i;
        if (nestedScrollView != null && nestedScrollView.m1233m(keyEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // p004b.DialogC0283p, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.f964d;
        alertController.f95d = charSequence;
        TextView textView = alertController.f104m;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
