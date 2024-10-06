package p040k0;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p039k.C0655b;
import p040k0.C0677f;
import p055q.C0834f;
import p061s.C0863a;
/* renamed from: k0.b */
/* loaded from: classes.dex */
public final class C0669b extends AbstractC0676e implements Animatable {

    /* renamed from: c */
    public final C0671b f2323c;

    /* renamed from: d */
    public final Context f2324d;

    /* renamed from: e */
    public final C0670a f2325e;

    /* renamed from: k0.b$a */
    /* loaded from: classes.dex */
    public class C0670a implements Drawable.Callback {
        public C0670a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            C0669b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C0669b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C0669b.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: k0.b$b */
    /* loaded from: classes.dex */
    public static class C0671b extends Drawable.ConstantState {

        /* renamed from: a */
        public C0677f f2327a;

        /* renamed from: b */
        public AnimatorSet f2328b;

        /* renamed from: c */
        public ArrayList<Animator> f2329c;

        /* renamed from: d */
        public C0655b<Animator, String> f2330d;

        public C0671b(C0670a c0670a) {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* renamed from: k0.b$c */
    /* loaded from: classes.dex */
    public static class C0672c extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f2331a;

        public C0672c(Drawable.ConstantState constantState) {
            this.f2331a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f2331a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f2331a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C0669b c0669b = new C0669b();
            Drawable newDrawable = this.f2331a.newDrawable();
            c0669b.f2334b = newDrawable;
            newDrawable.setCallback(c0669b.f2325e);
            return c0669b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C0669b c0669b = new C0669b();
            Drawable newDrawable = this.f2331a.newDrawable(resources);
            c0669b.f2334b = newDrawable;
            newDrawable.setCallback(c0669b.f2325e);
            return c0669b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0669b c0669b = new C0669b();
            Drawable newDrawable = this.f2331a.newDrawable(resources, theme);
            c0669b.f2334b = newDrawable;
            newDrawable.setCallback(c0669b.f2325e);
            return c0669b;
        }
    }

    public C0669b() {
        this(null);
    }

    public C0669b(Context context) {
        C0670a c0670a = new C0670a();
        this.f2325e = c0670a;
        this.f2324d = context;
        this.f2323c = new C0671b(c0670a);
    }

    @Override // p040k0.AbstractC0676e, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        C0671b c0671b = this.f2323c;
        c0671b.f2327a.draw(canvas);
        if (c0671b.f2328b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.f2323c.f2327a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f2323c.getClass();
        return changingConfigurations | 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2334b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0672c(this.f2334b.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f2323c.f2327a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f2323c.f2327a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.getOpacity() : this.f2323c.f2327a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x017a, code lost:
        if (r8.f2328b != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017c, code lost:
        r8.f2328b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0183, code lost:
        r8.f2328b.playTogether(r8.f2329c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x018a, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        XmlResourceParser animation;
        Animator m389a;
        C0677f c0677f;
        int next;
        C0677f c0677f2;
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            C0671b c0671b = this.f2323c;
            if (eventType == 1 || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                XmlResourceParser xmlResourceParser = null;
                if ("animated-vector".equals(name)) {
                    TypedArray m192f = C0834f.m192f(resources, theme, attributeSet, C0668a.f2316e);
                    int resourceId = m192f.getResourceId(0, 0);
                    if (resourceId != 0) {
                        PorterDuff.Mode mode = C0677f.f2335k;
                        if (Build.VERSION.SDK_INT >= 24) {
                            c0677f = new C0677f();
                            c0677f.f2334b = resources.getDrawable(resourceId, theme);
                            new C0677f.C0685h(c0677f.f2334b.getConstantState());
                        } else {
                            try {
                                XmlResourceParser xml = resources.getXml(resourceId);
                                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                                while (true) {
                                    next = xml.next();
                                    if (next == 2 || next == 1) {
                                        break;
                                    }
                                }
                                if (next == 2) {
                                    c0677f = new C0677f();
                                    c0677f.inflate(resources, xml, asAttributeSet, theme);
                                } else {
                                    throw new XmlPullParserException("No start tag found");
                                    break;
                                }
                            } catch (IOException e) {
                                e = e;
                                Log.e("VectorDrawableCompat", "parser error", e);
                                c0677f = null;
                                c0677f.f2340g = false;
                                c0677f.setCallback(this.f2325e);
                                c0677f2 = c0671b.f2327a;
                                if (c0677f2 != null) {
                                }
                                c0671b.f2327a = c0677f;
                                m192f.recycle();
                                eventType = xmlPullParser.next();
                            } catch (XmlPullParserException e2) {
                                e = e2;
                                Log.e("VectorDrawableCompat", "parser error", e);
                                c0677f = null;
                                c0677f.f2340g = false;
                                c0677f.setCallback(this.f2325e);
                                c0677f2 = c0671b.f2327a;
                                if (c0677f2 != null) {
                                }
                                c0671b.f2327a = c0677f;
                                m192f.recycle();
                                eventType = xmlPullParser.next();
                            }
                        }
                        c0677f.f2340g = false;
                        c0677f.setCallback(this.f2325e);
                        c0677f2 = c0671b.f2327a;
                        if (c0677f2 != null) {
                            c0677f2.setCallback(null);
                        }
                        c0671b.f2327a = c0677f;
                    }
                    m192f.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C0668a.f2317f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f2324d;
                        if (context != null) {
                            if (Build.VERSION.SDK_INT >= 24) {
                                m389a = AnimatorInflater.loadAnimator(context, resourceId2);
                            } else {
                                Resources resources2 = context.getResources();
                                Resources.Theme theme2 = context.getTheme();
                                try {
                                    try {
                                        animation = resources2.getAnimation(resourceId2);
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                } catch (IOException e3) {
                                    e = e3;
                                } catch (XmlPullParserException e4) {
                                    e = e4;
                                }
                                try {
                                    m389a = C0673c.m389a(context, resources2, theme2, animation, Xml.asAttributeSet(animation), null, 0);
                                    animation.close();
                                } catch (IOException e5) {
                                    e = e5;
                                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                    notFoundException.initCause(e);
                                    throw notFoundException;
                                } catch (XmlPullParserException e6) {
                                    e = e6;
                                    Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                    notFoundException2.initCause(e);
                                    throw notFoundException2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    xmlResourceParser = animation;
                                    if (xmlResourceParser != null) {
                                        xmlResourceParser.close();
                                    }
                                    throw th;
                                }
                            }
                            m389a.setTarget(c0671b.f2327a.f2336c.f2388b.f2386o.getOrDefault(string, null));
                            if (c0671b.f2329c == null) {
                                c0671b.f2329c = new ArrayList<>();
                                c0671b.f2330d = new C0655b<>();
                            }
                            c0671b.f2329c.add(m389a);
                            c0671b.f2330d.put(m389a, string);
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.f2323c.f2327a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f2334b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f2323c.f2328b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.isStateful() : this.f2323c.f2327a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f2323c.f2327a.setBounds(rect);
        }
    }

    @Override // p040k0.AbstractC0676e, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.setLevel(i) : this.f2323c.f2327a.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2334b;
        return drawable != null ? drawable.setState(iArr) : this.f2323c.f2327a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f2323c.f2327a.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f2323c.f2327a.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2323c.f2327a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            C0863a.m141c(drawable, i);
        } else {
            this.f2323c.f2327a.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            C0863a.m140d(drawable, colorStateList);
        } else {
            this.f2323c.f2327a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            C0863a.m139e(drawable, mode);
        } else {
            this.f2323c.f2327a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f2323c.f2327a.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        C0671b c0671b = this.f2323c;
        if (c0671b.f2328b.isStarted()) {
            return;
        }
        c0671b.f2328b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f2334b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f2323c.f2328b.end();
        }
    }
}
