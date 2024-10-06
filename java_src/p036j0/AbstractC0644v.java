package p036j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import java.util.HashMap;
import p020f.C0460c;
import p036j0.AbstractC0619g;
/* renamed from: j0.v */
/* loaded from: classes.dex */
public abstract class AbstractC0644v extends AbstractC0619g {

    /* renamed from: x */
    public static final String[] f2243x = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: w */
    public int f2244w = 3;

    /* renamed from: j0.v$a */
    /* loaded from: classes.dex */
    public static class C0645a extends AnimatorListenerAdapter implements AbstractC0619g.InterfaceC0623d {

        /* renamed from: a */
        public final View f2245a;

        /* renamed from: b */
        public final int f2246b;

        /* renamed from: c */
        public final ViewGroup f2247c;

        /* renamed from: e */
        public boolean f2249e;

        /* renamed from: f */
        public boolean f2250f = false;

        /* renamed from: d */
        public final boolean f2248d = true;

        public C0645a(View view, int i) {
            this.f2245a = view;
            this.f2246b = i;
            this.f2247c = (ViewGroup) view.getParent();
            m440e(true);
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: a */
        public final void mo444a() {
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: b */
        public final void mo443b() {
            m440e(false);
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
            if (!this.f2250f) {
                C0637q.m453c(this.f2245a, this.f2246b);
                ViewGroup viewGroup = this.f2247c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m440e(false);
            abstractC0619g.mo462v(this);
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: d */
        public final void mo441d() {
            m440e(true);
        }

        /* renamed from: e */
        public final void m440e(boolean z) {
            ViewGroup viewGroup;
            if (!this.f2248d || this.f2249e == z || (viewGroup = this.f2247c) == null) {
                return;
            }
            this.f2249e = z;
            C0636p.m456a(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f2250f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.f2250f) {
                C0637q.m453c(this.f2245a, this.f2246b);
                ViewGroup viewGroup = this.f2247c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m440e(false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            if (this.f2250f) {
                return;
            }
            C0637q.m453c(this.f2245a, this.f2246b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            if (this.f2250f) {
                return;
            }
            C0637q.m453c(this.f2245a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: j0.v$b */
    /* loaded from: classes.dex */
    public static class C0646b {

        /* renamed from: a */
        public boolean f2251a;

        /* renamed from: b */
        public boolean f2252b;

        /* renamed from: c */
        public int f2253c;

        /* renamed from: d */
        public int f2254d;

        /* renamed from: e */
        public ViewGroup f2255e;

        /* renamed from: f */
        public ViewGroup f2256f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if (r9 == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
        if (r0.f2255e == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
        if (r0.f2253c == 0) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0035  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0646b m449I(C0634n c0634n, C0634n c0634n2) {
        C0646b c0646b = new C0646b();
        c0646b.f2251a = false;
        c0646b.f2252b = false;
        if (c0634n != null) {
            HashMap hashMap = c0634n.f2224a;
            if (hashMap.containsKey("android:visibility:visibility")) {
                c0646b.f2253c = ((Integer) hashMap.get("android:visibility:visibility")).intValue();
                c0646b.f2255e = (ViewGroup) hashMap.get("android:visibility:parent");
                if (c0634n2 != null) {
                    HashMap hashMap2 = c0634n2.f2224a;
                    if (hashMap2.containsKey("android:visibility:visibility")) {
                        c0646b.f2254d = ((Integer) hashMap2.get("android:visibility:visibility")).intValue();
                        c0646b.f2256f = (ViewGroup) hashMap2.get("android:visibility:parent");
                        if (c0634n != null || c0634n2 == null) {
                            if (c0634n == null || c0646b.f2254d != 0) {
                                if (c0634n2 == null) {
                                }
                                return c0646b;
                            }
                            c0646b.f2252b = true;
                        } else {
                            int i = c0646b.f2253c;
                            int i2 = c0646b.f2254d;
                            if (i == i2 && c0646b.f2255e == c0646b.f2256f) {
                                return c0646b;
                            }
                            if (i != i2) {
                                if (i != 0) {
                                }
                                c0646b.f2252b = false;
                            } else {
                                if (c0646b.f2256f != null) {
                                }
                                c0646b.f2252b = false;
                            }
                        }
                        c0646b.f2251a = true;
                        return c0646b;
                    }
                }
                c0646b.f2254d = -1;
                c0646b.f2256f = null;
                if (c0634n != null) {
                }
                if (c0634n == null) {
                }
                if (c0634n2 == null) {
                }
                return c0646b;
            }
        }
        c0646b.f2253c = -1;
        c0646b.f2255e = null;
        if (c0634n2 != null) {
        }
        c0646b.f2254d = -1;
        c0646b.f2256f = null;
        if (c0634n != null) {
        }
        if (c0634n == null) {
        }
        if (c0634n2 == null) {
        }
        return c0646b;
    }

    /* renamed from: H */
    public final void m450H(C0634n c0634n) {
        int visibility = c0634n.f2225b.getVisibility();
        HashMap hashMap = c0634n.f2224a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        hashMap.put("android:visibility:parent", c0634n.f2225b.getParent());
        int[] iArr = new int[2];
        c0634n.f2225b.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: d */
    public final void mo448d(C0634n c0634n) {
        m450H(c0634n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (m449I(m483n(r1, false), m481q(r1, false)).f2251a != false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x020f  */
    @Override // p036j0.AbstractC0619g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Animator mo447k(ViewGroup viewGroup, C0634n c0634n, C0634n c0634n2) {
        ImageView imageView;
        View view;
        int i;
        Object obj;
        View view2;
        int id;
        AbstractC0644v abstractC0644v;
        C0634n c0634n3;
        float f;
        float f2;
        Float f3;
        float f4;
        float f5;
        boolean z;
        boolean z2;
        boolean z3;
        ViewGroup viewGroup2;
        int i2;
        int round;
        Bitmap bitmap;
        float f6;
        Float f7;
        C0646b m449I = m449I(c0634n, c0634n2);
        if (m449I.f2251a && (m449I.f2255e != null || m449I.f2256f != null)) {
            float f8 = 0.0f;
            if (m449I.f2252b) {
                if ((this.f2244w & 1) == 1 && c0634n2 != null) {
                    if (c0634n == null) {
                        View view3 = (View) c0634n2.f2225b.getParent();
                    }
                    View view4 = c0634n2.f2225b;
                    C0613d c0613d = (C0613d) this;
                    if (c0634n != null && (f7 = (Float) c0634n.f2224a.get("android:fade:transitionAlpha")) != null) {
                        f6 = f7.floatValue();
                    } else {
                        f6 = 0.0f;
                    }
                    if (f6 != 1.0f) {
                        f8 = f6;
                    }
                    return c0613d.m502J(view4, f8, 1.0f);
                }
                return null;
            }
            int i3 = m449I.f2254d;
            if ((this.f2244w & 2) == 2) {
                if (c0634n != null) {
                    imageView = c0634n.f2225b;
                } else {
                    imageView = null;
                }
                if (c0634n2 != null) {
                    view = c0634n2.f2225b;
                } else {
                    view = null;
                }
                if (view != null && view.getParent() != null) {
                    if (i3 == 4 || imageView == view) {
                        i = i3;
                        obj = "android:fade:transitionAlpha";
                        imageView = null;
                        if (imageView != null) {
                        }
                        Object obj2 = obj;
                        if (view != null) {
                        }
                    } else {
                        view2 = (View) imageView.getParent();
                        boolean z4 = C0633m.f2221a;
                        Matrix matrix = new Matrix();
                        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
                        C0641s c0641s = C0637q.f2227a;
                        c0641s.m452R(imageView, matrix);
                        c0641s.m451S(viewGroup, matrix);
                        RectF rectF = new RectF(0.0f, 0.0f, imageView.getWidth(), imageView.getHeight());
                        matrix.mapRect(rectF);
                        int round2 = Math.round(rectF.left);
                        int round3 = Math.round(rectF.top);
                        int round4 = Math.round(rectF.right);
                        int round5 = Math.round(rectF.bottom);
                        ImageView imageView2 = new ImageView(imageView.getContext());
                        imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        if (!C0633m.f2221a) {
                        }
                        z3 = C0633m.f2222b;
                        if (!z3) {
                        }
                        viewGroup2 = null;
                        i2 = 0;
                        i = i3;
                        round = Math.round(rectF.width());
                        obj = "android:fade:transitionAlpha";
                        int round6 = Math.round(rectF.height());
                        if (round <= 0) {
                        }
                        bitmap = null;
                        if (z3) {
                            viewGroup.getOverlay().remove(imageView);
                            viewGroup2.addView(imageView, i2);
                        }
                        if (bitmap != null) {
                        }
                        imageView2.measure(View.MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824), View.MeasureSpec.makeMeasureSpec(round5 - round3, 1073741824));
                        imageView2.layout(round2, round3, round4, round5);
                        imageView = imageView2;
                        view = null;
                        if (imageView != null) {
                        }
                        Object obj22 = obj;
                        if (view != null) {
                        }
                    }
                } else {
                    if (view != null) {
                        imageView = view;
                    } else {
                        if (imageView != null) {
                            if (imageView.getParent() != null) {
                                if (imageView.getParent() instanceof View) {
                                    view2 = (View) imageView.getParent();
                                    if (m449I(m481q(view2, true), m483n(view2, true)).f2251a) {
                                        i = i3;
                                        obj = "android:fade:transitionAlpha";
                                        if (view2.getParent() == null && (id = view2.getId()) != -1) {
                                            viewGroup.findViewById(id);
                                        }
                                        imageView = null;
                                        view = null;
                                        if (imageView != null) {
                                            c0634n3 = c0634n;
                                            if (c0634n3 != null) {
                                                HashMap hashMap = c0634n3.f2224a;
                                                int[] iArr = (int[]) hashMap.get("android:visibility:screenLocation");
                                                int i4 = iArr[0];
                                                int i5 = iArr[1];
                                                int[] iArr2 = new int[2];
                                                viewGroup.getLocationOnScreen(iArr2);
                                                imageView.offsetLeftAndRight((i4 - iArr2[0]) - imageView.getLeft());
                                                imageView.offsetTopAndBottom((i5 - iArr2[1]) - imageView.getTop());
                                                C0460c c0460c = new C0460c(viewGroup);
                                                ((ViewGroupOverlay) c0460c.f1797a).add(imageView);
                                                C0613d c0613d2 = (C0613d) this;
                                                C0637q.f2227a.getClass();
                                                Float f9 = (Float) hashMap.get(obj);
                                                if (f9 != null) {
                                                    f5 = f9.floatValue();
                                                    f4 = 0.0f;
                                                } else {
                                                    f4 = 0.0f;
                                                    f5 = 1.0f;
                                                }
                                                ObjectAnimator m502J = c0613d2.m502J(imageView, f5, f4);
                                                if (m502J == null) {
                                                    c0460c.mo457b(imageView);
                                                    return m502J;
                                                }
                                                m502J.addListener(new C0643u(c0460c, imageView));
                                                return m502J;
                                            }
                                            abstractC0644v = this;
                                        } else {
                                            abstractC0644v = this;
                                            c0634n3 = c0634n;
                                        }
                                        Object obj222 = obj;
                                        if (view != null) {
                                            int visibility = view.getVisibility();
                                            C0637q.m453c(view, 0);
                                            C0613d c0613d3 = (C0613d) abstractC0644v;
                                            C0637q.f2227a.getClass();
                                            if (c0634n3 != null && (f3 = (Float) c0634n3.f2224a.get(obj222)) != null) {
                                                f2 = f3.floatValue();
                                                f = 0.0f;
                                            } else {
                                                f = 0.0f;
                                                f2 = 1.0f;
                                            }
                                            ObjectAnimator m502J2 = c0613d3.m502J(view, f2, f);
                                            if (m502J2 != null) {
                                                C0645a c0645a = new C0645a(view, i);
                                                m502J2.addListener(c0645a);
                                                m502J2.addPauseListener(c0645a);
                                                abstractC0644v.mo469a(c0645a);
                                                return m502J2;
                                            }
                                            C0637q.m453c(view, visibility);
                                            return m502J2;
                                        }
                                    }
                                    boolean z42 = C0633m.f2221a;
                                    Matrix matrix2 = new Matrix();
                                    matrix2.setTranslate(-view2.getScrollX(), -view2.getScrollY());
                                    C0641s c0641s2 = C0637q.f2227a;
                                    c0641s2.m452R(imageView, matrix2);
                                    c0641s2.m451S(viewGroup, matrix2);
                                    RectF rectF2 = new RectF(0.0f, 0.0f, imageView.getWidth(), imageView.getHeight());
                                    matrix2.mapRect(rectF2);
                                    int round22 = Math.round(rectF2.left);
                                    int round32 = Math.round(rectF2.top);
                                    int round42 = Math.round(rectF2.right);
                                    int round52 = Math.round(rectF2.bottom);
                                    ImageView imageView22 = new ImageView(imageView.getContext());
                                    imageView22.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    if (!C0633m.f2221a) {
                                        z = !imageView.isAttachedToWindow();
                                        z2 = viewGroup.isAttachedToWindow();
                                    } else {
                                        z = false;
                                        z2 = false;
                                    }
                                    z3 = C0633m.f2222b;
                                    if (!z3 && z) {
                                        if (!z2) {
                                            i = i3;
                                            obj = "android:fade:transitionAlpha";
                                            bitmap = null;
                                            if (bitmap != null) {
                                                imageView22.setImageBitmap(bitmap);
                                            }
                                            imageView22.measure(View.MeasureSpec.makeMeasureSpec(round42 - round22, 1073741824), View.MeasureSpec.makeMeasureSpec(round52 - round32, 1073741824));
                                            imageView22.layout(round22, round32, round42, round52);
                                            imageView = imageView22;
                                            view = null;
                                            if (imageView != null) {
                                            }
                                            Object obj2222 = obj;
                                            if (view != null) {
                                            }
                                        } else {
                                            viewGroup2 = (ViewGroup) imageView.getParent();
                                            int indexOfChild = viewGroup2.indexOfChild(imageView);
                                            viewGroup.getOverlay().add(imageView);
                                            i2 = indexOfChild;
                                        }
                                    } else {
                                        viewGroup2 = null;
                                        i2 = 0;
                                    }
                                    i = i3;
                                    round = Math.round(rectF2.width());
                                    obj = "android:fade:transitionAlpha";
                                    int round62 = Math.round(rectF2.height());
                                    if (round <= 0 && round62 > 0) {
                                        float min = Math.min(1.0f, 1048576.0f / (round * round62));
                                        int round7 = Math.round(round * min);
                                        int round8 = Math.round(round62 * min);
                                        matrix2.postTranslate(-rectF2.left, -rectF2.top);
                                        matrix2.postScale(min, min);
                                        if (C0633m.f2223c) {
                                            Picture picture = new Picture();
                                            Canvas beginRecording = picture.beginRecording(round7, round8);
                                            beginRecording.concat(matrix2);
                                            imageView.draw(beginRecording);
                                            picture.endRecording();
                                            bitmap = Bitmap.createBitmap(picture);
                                        } else {
                                            bitmap = Bitmap.createBitmap(round7, round8, Bitmap.Config.ARGB_8888);
                                            Canvas canvas = new Canvas(bitmap);
                                            canvas.concat(matrix2);
                                            imageView.draw(canvas);
                                        }
                                    } else {
                                        bitmap = null;
                                    }
                                    if (z3 && z) {
                                        viewGroup.getOverlay().remove(imageView);
                                        viewGroup2.addView(imageView, i2);
                                    }
                                    if (bitmap != null) {
                                    }
                                    imageView22.measure(View.MeasureSpec.makeMeasureSpec(round42 - round22, 1073741824), View.MeasureSpec.makeMeasureSpec(round52 - round32, 1073741824));
                                    imageView22.layout(round22, round32, round42, round52);
                                    imageView = imageView22;
                                    view = null;
                                    if (imageView != null) {
                                    }
                                    Object obj22222 = obj;
                                    if (view != null) {
                                    }
                                }
                            }
                        }
                        i = i3;
                        obj = "android:fade:transitionAlpha";
                        view = null;
                        imageView = null;
                        if (imageView != null) {
                        }
                        Object obj222222 = obj;
                        if (view != null) {
                        }
                    }
                    i = i3;
                    obj = "android:fade:transitionAlpha";
                    view = null;
                    if (imageView != null) {
                    }
                    Object obj2222222 = obj;
                    if (view != null) {
                    }
                }
                return null;
            }
        }
        return null;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: p */
    public final String[] mo446p() {
        return f2243x;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: r */
    public final boolean mo445r(C0634n c0634n, C0634n c0634n2) {
        if (c0634n == null && c0634n2 == null) {
            return false;
        }
        if (c0634n == null || c0634n2 == null || c0634n2.f2224a.containsKey("android:visibility:visibility") == c0634n.f2224a.containsKey("android:visibility:visibility")) {
            C0646b m449I = m449I(c0634n, c0634n2);
            if (m449I.f2251a) {
                return m449I.f2253c == 0 || m449I.f2254d == 0;
            }
            return false;
        }
        return false;
    }
}
