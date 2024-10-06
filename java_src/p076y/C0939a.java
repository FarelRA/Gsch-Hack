package p076y;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p079z.C0971d;
import p079z.C0973e;
/* renamed from: y.a */
/* loaded from: classes.dex */
public class C0939a {

    /* renamed from: c */
    public static final View.AccessibilityDelegate f2917c = new View.AccessibilityDelegate();

    /* renamed from: a */
    public final View.AccessibilityDelegate f2918a = f2917c;

    /* renamed from: b */
    public final C0940a f2919b = new C0940a(this);

    /* renamed from: y.a$a */
    /* loaded from: classes.dex */
    public static final class C0940a extends View.AccessibilityDelegate {

        /* renamed from: a */
        public final C0939a f2920a;

        public C0940a(C0939a c0939a) {
            this.f2920a = c0939a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f2920a.f2918a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0973e c0973e;
            AccessibilityNodeProvider accessibilityNodeProvider = this.f2920a.f2918a.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                c0973e = new C0973e(accessibilityNodeProvider);
            } else {
                c0973e = null;
            }
            if (c0973e == null) {
                return null;
            }
            return (AccessibilityNodeProvider) c0973e.f2984a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2920a.mo69a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            boolean z;
            Object tag;
            boolean booleanValue;
            boolean z2;
            Object tag2;
            boolean booleanValue2;
            Object tag3;
            int i;
            boolean isAccessibilityHeading;
            boolean isScreenReaderFocusable;
            C0971d c0971d = new C0971d(accessibilityNodeInfo);
            WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
            int i2 = Build.VERSION.SDK_INT;
            boolean z3 = true;
            if (i2 >= 28) {
                z = true;
            } else {
                z = false;
            }
            ClickableSpan[] clickableSpanArr = null;
            if (z) {
                isScreenReaderFocusable = view.isScreenReaderFocusable();
                tag = Boolean.valueOf(isScreenReaderFocusable);
            } else {
                tag = view.getTag(R.id.tag_screen_reader_focusable);
                if (!Boolean.class.isInstance(tag)) {
                    tag = null;
                }
            }
            Boolean bool = (Boolean) tag;
            if (bool == null) {
                booleanValue = false;
            } else {
                booleanValue = bool.booleanValue();
            }
            if (i2 >= 28) {
                accessibilityNodeInfo.setScreenReaderFocusable(booleanValue);
            } else {
                c0971d.m7b(1, booleanValue);
            }
            if (i2 >= 28) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                isAccessibilityHeading = view.isAccessibilityHeading();
                tag2 = Boolean.valueOf(isAccessibilityHeading);
            } else {
                tag2 = view.getTag(R.id.tag_accessibility_heading);
                if (!Boolean.class.isInstance(tag2)) {
                    tag2 = null;
                }
            }
            Boolean bool2 = (Boolean) tag2;
            if (bool2 == null) {
                booleanValue2 = false;
            } else {
                booleanValue2 = bool2.booleanValue();
            }
            if (i2 >= 28) {
                accessibilityNodeInfo.setHeading(booleanValue2);
            } else {
                c0971d.m7b(2, booleanValue2);
            }
            if (i2 < 28) {
                z3 = false;
            }
            if (z3) {
                tag3 = view.getAccessibilityPaneTitle();
            } else {
                tag3 = view.getTag(R.id.tag_accessibility_pane_title);
                if (!CharSequence.class.isInstance(tag3)) {
                    tag3 = null;
                }
            }
            CharSequence charSequence = (CharSequence) tag3;
            if (i2 >= 28) {
                accessibilityNodeInfo.setPaneTitle(charSequence);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
            }
            this.f2920a.mo68b(view, c0971d);
            CharSequence text = accessibilityNodeInfo.getText();
            AccessibilityNodeInfo accessibilityNodeInfo2 = c0971d.f2978a;
            if (i2 < 26) {
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        if (((WeakReference) sparseArray.valueAt(i3)).get() == null) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        sparseArray.remove(((Integer) arrayList.get(i4)).intValue());
                    }
                }
                if (text instanceof Spanned) {
                    clickableSpanArr = (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class);
                }
                if (clickableSpanArr != null && clickableSpanArr.length > 0) {
                    accessibilityNodeInfo2.getExtras().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.accessibility_action_clickable_span);
                    SparseArray sparseArray2 = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        view.setTag(R.id.tag_accessibility_clickable_spans, sparseArray2);
                    }
                    for (int i5 = 0; i5 < clickableSpanArr.length; i5++) {
                        ClickableSpan clickableSpan = clickableSpanArr[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 < sparseArray2.size()) {
                                if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i6)).get())) {
                                    i = sparseArray2.keyAt(i6);
                                    break;
                                }
                                i6++;
                            } else {
                                i = C0971d.f2977b;
                                C0971d.f2977b = i + 1;
                                break;
                            }
                        }
                        sparseArray2.put(i, new WeakReference(clickableSpanArr[i5]));
                        ClickableSpan clickableSpan2 = clickableSpanArr[i5];
                        Spanned spanned = (Spanned) text;
                        c0971d.m8a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        c0971d.m8a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        c0971d.m8a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        c0971d.m8a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
                    }
                }
            }
            List list = (List) view.getTag(R.id.tag_accessibility_actions);
            if (list == null) {
                list = Collections.emptyList();
            }
            for (int i7 = 0; i7 < list.size(); i7++) {
                accessibilityNodeInfo2.addAction((AccessibilityNodeInfo.AccessibilityAction) ((C0971d.C0972a) list.get(i7)).f2983a);
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2920a.mo67c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f2920a.f2918a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f2920a.mo66d(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i) {
            this.f2920a.f2918a.sendAccessibilityEvent(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f2920a.f2918a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    /* renamed from: a */
    public void mo69a(View view, AccessibilityEvent accessibilityEvent) {
        this.f2918a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: b */
    public void mo68b(View view, C0971d c0971d) {
        this.f2918a.onInitializeAccessibilityNodeInfo(view, c0971d.f2978a);
    }

    /* renamed from: c */
    public void mo67c(View view, AccessibilityEvent accessibilityEvent) {
        this.f2918a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public boolean mo66d(View view, int i, Bundle bundle) {
        WeakReference weakReference;
        boolean z;
        ClickableSpan[] clickableSpanArr;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.emptyList();
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < list.size() && ((AccessibilityNodeInfo.AccessibilityAction) ((C0971d.C0972a) list.get(i2)).f2983a).getId() != i; i2++) {
        }
        boolean performAccessibilityAction = this.f2918a.performAccessibilityAction(view, i, bundle);
        if (!performAccessibilityAction && i == R.id.accessibility_action_clickable_span) {
            int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
            SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
            if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i3)) != null) {
                ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                if (clickableSpan != null) {
                    CharSequence text = view.createAccessibilityNodeInfo().getText();
                    if (text instanceof Spanned) {
                        clickableSpanArr = (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class);
                    } else {
                        clickableSpanArr = null;
                    }
                    for (int i4 = 0; clickableSpanArr != null && i4 < clickableSpanArr.length; i4++) {
                        if (clickableSpan.equals(clickableSpanArr[i4])) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    clickableSpan.onClick(view);
                    z2 = true;
                }
            }
            return z2;
        }
        return performAccessibilityAction;
    }
}
