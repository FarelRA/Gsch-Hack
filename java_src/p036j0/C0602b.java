package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.WeakHashMap;
import p076y.C0954m;
import p076y.C0960q;
/* renamed from: j0.b */
/* loaded from: classes.dex */
public final class C0602b extends AbstractC0619g {

    /* renamed from: A */
    public static final C0607e f2151A;

    /* renamed from: B */
    public static final C0608f f2152B;

    /* renamed from: w */
    public static final String[] f2153w = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: x */
    public static final C0604b f2154x;

    /* renamed from: y */
    public static final C0605c f2155y;

    /* renamed from: z */
    public static final C0606d f2156z;

    /* renamed from: j0.b$a */
    /* loaded from: classes.dex */
    public static class C0603a extends Property<Drawable, PointF> {

        /* renamed from: a */
        public final Rect f2157a;

        public C0603a() {
            super(PointF.class, "boundsOrigin");
            this.f2157a = new Rect();
        }

        @Override // android.util.Property
        public final PointF get(Drawable drawable) {
            Rect rect = this.f2157a;
            drawable.copyBounds(rect);
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public final void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            Rect rect = this.f2157a;
            drawable2.copyBounds(rect);
            rect.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(rect);
        }
    }

    /* renamed from: j0.b$b */
    /* loaded from: classes.dex */
    public static class C0604b extends Property<C0611i, PointF> {
        public C0604b() {
            super(PointF.class, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(C0611i c0611i) {
            return null;
        }

        @Override // android.util.Property
        public final void set(C0611i c0611i, PointF pointF) {
            C0611i c0611i2 = c0611i;
            PointF pointF2 = pointF;
            c0611i2.getClass();
            c0611i2.f2159a = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c0611i2.f2160b = round;
            int i = c0611i2.f2164f + 1;
            c0611i2.f2164f = i;
            if (i == c0611i2.f2165g) {
                C0637q.m455a(c0611i2.f2163e, c0611i2.f2159a, round, c0611i2.f2161c, c0611i2.f2162d);
                c0611i2.f2164f = 0;
                c0611i2.f2165g = 0;
            }
        }
    }

    /* renamed from: j0.b$c */
    /* loaded from: classes.dex */
    public static class C0605c extends Property<C0611i, PointF> {
        public C0605c() {
            super(PointF.class, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(C0611i c0611i) {
            return null;
        }

        @Override // android.util.Property
        public final void set(C0611i c0611i, PointF pointF) {
            C0611i c0611i2 = c0611i;
            PointF pointF2 = pointF;
            c0611i2.getClass();
            c0611i2.f2161c = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c0611i2.f2162d = round;
            int i = c0611i2.f2165g + 1;
            c0611i2.f2165g = i;
            if (c0611i2.f2164f == i) {
                C0637q.m455a(c0611i2.f2163e, c0611i2.f2159a, c0611i2.f2160b, c0611i2.f2161c, round);
                c0611i2.f2164f = 0;
                c0611i2.f2165g = 0;
            }
        }
    }

    /* renamed from: j0.b$d */
    /* loaded from: classes.dex */
    public static class C0606d extends Property<View, PointF> {
        public C0606d() {
            super(PointF.class, "bottomRight");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C0637q.m455a(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* renamed from: j0.b$e */
    /* loaded from: classes.dex */
    public static class C0607e extends Property<View, PointF> {
        public C0607e() {
            super(PointF.class, "topLeft");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C0637q.m455a(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* renamed from: j0.b$f */
    /* loaded from: classes.dex */
    public static class C0608f extends Property<View, PointF> {
        public C0608f() {
            super(PointF.class, "position");
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            C0637q.m455a(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    /* renamed from: j0.b$g */
    /* loaded from: classes.dex */
    public class C0609g extends AnimatorListenerAdapter {
        private C0611i mViewBounds;

        public C0609g(C0611i c0611i) {
            this.mViewBounds = c0611i;
        }
    }

    /* renamed from: j0.b$h */
    /* loaded from: classes.dex */
    public class C0610h extends C0626j {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f2158a;

        public C0610h(ViewGroup viewGroup) {
            this.f2158a = viewGroup;
        }

        @Override // p036j0.C0626j, p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: b */
        public final void mo443b() {
            C0636p.m456a(this.f2158a, false);
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
            C0636p.m456a(this.f2158a, false);
            abstractC0619g.mo462v(this);
        }

        @Override // p036j0.C0626j, p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: d */
        public final void mo441d() {
            C0636p.m456a(this.f2158a, true);
        }
    }

    /* renamed from: j0.b$i */
    /* loaded from: classes.dex */
    public static class C0611i {

        /* renamed from: a */
        public int f2159a;

        /* renamed from: b */
        public int f2160b;

        /* renamed from: c */
        public int f2161c;

        /* renamed from: d */
        public int f2162d;

        /* renamed from: e */
        public final View f2163e;

        /* renamed from: f */
        public int f2164f;

        /* renamed from: g */
        public int f2165g;

        public C0611i(View view) {
            this.f2163e = view;
        }
    }

    static {
        new C0603a();
        f2154x = new C0604b();
        f2155y = new C0605c();
        f2156z = new C0606d();
        f2151A = new C0607e();
        f2152B = new C0608f();
    }

    /* renamed from: H */
    public final void m503H(C0634n c0634n) {
        View view = c0634n.f2225b;
        WeakHashMap<View, C0960q> weakHashMap = C0954m.f2934a;
        if (view.isLaidOut() || view.getWidth() != 0 || view.getHeight() != 0) {
            HashMap hashMap = c0634n.f2224a;
            hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            hashMap.put("android:changeBounds:parent", c0634n.f2225b.getParent());
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: d */
    public final void mo448d(C0634n c0634n) {
        m503H(c0634n);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: g */
    public final void mo466g(C0634n c0634n) {
        m503H(c0634n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010e  */
    @Override // p036j0.AbstractC0619g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Animator mo447k(ViewGroup viewGroup, C0634n c0634n, C0634n c0634n2) {
        int i;
        C0602b c0602b;
        Path mo478b;
        Property property;
        ObjectAnimator objectAnimator;
        if (c0634n != null && c0634n2 != null) {
            HashMap hashMap = c0634n.f2224a;
            HashMap hashMap2 = c0634n2.f2224a;
            ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
            ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
            if (viewGroup2 != null && viewGroup3 != null) {
                View view = c0634n2.f2225b;
                Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
                Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
                int i2 = rect.left;
                int i3 = rect2.left;
                int i4 = rect.top;
                int i5 = rect2.top;
                int i6 = rect.right;
                int i7 = rect2.right;
                int i8 = rect.bottom;
                int i9 = rect2.bottom;
                int i10 = i6 - i2;
                int i11 = i8 - i4;
                int i12 = i7 - i3;
                int i13 = i9 - i5;
                Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
                Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
                if ((i10 != 0 && i11 != 0) || (i12 != 0 && i13 != 0)) {
                    if (i2 == i3 && i4 == i5) {
                        i = 0;
                    } else {
                        i = 1;
                    }
                    if (i6 != i7 || i8 != i9) {
                        i++;
                    }
                } else {
                    i = 0;
                }
                if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                    i++;
                }
                int i14 = i;
                if (i14 > 0) {
                    C0637q.m455a(view, i2, i4, i6, i8);
                    if (i14 == 2) {
                        if (i10 == i12 && i11 == i13) {
                            c0602b = this;
                            mo478b = c0602b.f2199s.mo478b(i2, i4, i3, i5);
                            property = f2152B;
                        } else {
                            c0602b = this;
                            C0611i c0611i = new C0611i(view);
                            ObjectAnimator ofObject = ObjectAnimator.ofObject(c0611i, f2154x, (TypeConverter) null, c0602b.f2199s.mo478b(i2, i4, i3, i5));
                            ObjectAnimator ofObject2 = ObjectAnimator.ofObject(c0611i, f2155y, (TypeConverter) null, c0602b.f2199s.mo478b(i6, i8, i7, i9));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(ofObject, ofObject2);
                            animatorSet.addListener(new C0609g(c0611i));
                            objectAnimator = animatorSet;
                            if (view.getParent() instanceof ViewGroup) {
                                ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                                C0636p.m456a(viewGroup4, true);
                                c0602b.mo469a(new C0610h(viewGroup4));
                            }
                            return objectAnimator;
                        }
                    } else {
                        c0602b = this;
                        if (i2 == i3 && i4 == i5) {
                            mo478b = c0602b.f2199s.mo478b(i6, i8, i7, i9);
                            property = f2156z;
                        } else {
                            mo478b = c0602b.f2199s.mo478b(i2, i4, i3, i5);
                            property = f2151A;
                        }
                    }
                    objectAnimator = ObjectAnimator.ofObject(view, property, (TypeConverter) null, mo478b);
                    if (view.getParent() instanceof ViewGroup) {
                    }
                    return objectAnimator;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: p */
    public final String[] mo446p() {
        return f2153w;
    }
}
