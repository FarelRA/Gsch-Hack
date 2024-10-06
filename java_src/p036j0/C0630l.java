package p036j0;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import p028h.AbstractC0574c;
import p036j0.AbstractC0619g;
import p044m.C0696a;
/* renamed from: j0.l */
/* loaded from: classes.dex */
public class C0630l extends AbstractC0619g {

    /* renamed from: y */
    public int f2217y;

    /* renamed from: w */
    public ArrayList<AbstractC0619g> f2215w = new ArrayList<>();

    /* renamed from: x */
    public boolean f2216x = true;

    /* renamed from: z */
    public boolean f2218z = false;

    /* renamed from: A */
    public int f2214A = 0;

    /* renamed from: j0.l$a */
    /* loaded from: classes.dex */
    public class C0631a extends C0626j {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0619g f2219a;

        public C0631a(AbstractC0619g abstractC0619g) {
            this.f2219a = abstractC0619g;
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
            this.f2219a.mo459y();
            abstractC0619g.mo462v(this);
        }
    }

    /* renamed from: j0.l$b */
    /* loaded from: classes.dex */
    public static class C0632b extends C0626j {

        /* renamed from: a */
        public final C0630l f2220a;

        public C0632b(C0630l c0630l) {
            this.f2220a = c0630l;
        }

        @Override // p036j0.C0626j, p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: a */
        public final void mo444a() {
            C0630l c0630l = this.f2220a;
            if (c0630l.f2218z) {
                return;
            }
            c0630l.m489F();
            c0630l.f2218z = true;
        }

        @Override // p036j0.AbstractC0619g.InterfaceC0623d
        /* renamed from: c */
        public final void mo442c(AbstractC0619g abstractC0619g) {
            C0630l c0630l = this.f2220a;
            int i = c0630l.f2217y - 1;
            c0630l.f2217y = i;
            if (i == 0) {
                c0630l.f2218z = false;
                c0630l.m484m();
            }
            abstractC0619g.mo462v(this);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: A */
    public final void mo476A(AbstractC0619g.AbstractC0622c abstractC0622c) {
        this.f2214A |= 8;
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            this.f2215w.get(i).mo476A(abstractC0622c);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: B */
    public final void mo475B(TimeInterpolator timeInterpolator) {
        this.f2214A |= 1;
        ArrayList<AbstractC0619g> arrayList = this.f2215w;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2215w.get(i).mo475B(timeInterpolator);
            }
        }
        this.f2184d = timeInterpolator;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: C */
    public final void mo474C(AbstractC0574c abstractC0574c) {
        super.mo474C(abstractC0574c);
        this.f2214A |= 4;
        for (int i = 0; i < this.f2215w.size(); i++) {
            this.f2215w.get(i).mo474C(abstractC0574c);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: D */
    public final void mo473D() {
        this.f2214A |= 2;
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            this.f2215w.get(i).mo473D();
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: E */
    public final void mo472E(long j) {
        this.f2182b = j;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: G */
    public final String mo471G(String str) {
        String mo471G = super.mo471G(str);
        for (int i = 0; i < this.f2215w.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(mo471G);
            sb.append("\n");
            sb.append(this.f2215w.get(i).mo471G(str + "  "));
            mo471G = sb.toString();
        }
        return mo471G;
    }

    /* renamed from: H */
    public final void m470H(AbstractC0619g abstractC0619g) {
        this.f2215w.add(abstractC0619g);
        abstractC0619g.f2189i = this;
        long j = this.f2183c;
        if (j >= 0) {
            abstractC0619g.mo458z(j);
        }
        if ((this.f2214A & 1) != 0) {
            abstractC0619g.mo475B(this.f2184d);
        }
        if ((this.f2214A & 2) != 0) {
            abstractC0619g.mo473D();
        }
        if ((this.f2214A & 4) != 0) {
            abstractC0619g.mo474C(this.f2199s);
        }
        if ((this.f2214A & 8) != 0) {
            abstractC0619g.mo476A(null);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: a */
    public final void mo469a(AbstractC0619g.InterfaceC0623d interfaceC0623d) {
        super.mo469a(interfaceC0623d);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: b */
    public final void mo468b(View view) {
        for (int i = 0; i < this.f2215w.size(); i++) {
            this.f2215w.get(i).mo468b(view);
        }
        this.f2186f.add(view);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: d */
    public final void mo448d(C0634n c0634n) {
        if (m480s(c0634n.f2225b)) {
            Iterator<AbstractC0619g> it = this.f2215w.iterator();
            while (it.hasNext()) {
                AbstractC0619g next = it.next();
                if (next.m480s(c0634n.f2225b)) {
                    next.mo448d(c0634n);
                    c0634n.f2226c.add(next);
                }
            }
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: f */
    public final void mo467f(C0634n c0634n) {
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            this.f2215w.get(i).mo467f(c0634n);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: g */
    public final void mo466g(C0634n c0634n) {
        if (m480s(c0634n.f2225b)) {
            Iterator<AbstractC0619g> it = this.f2215w.iterator();
            while (it.hasNext()) {
                AbstractC0619g next = it.next();
                if (next.m480s(c0634n.f2225b)) {
                    next.mo466g(c0634n);
                    c0634n.f2226c.add(next);
                }
            }
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: j */
    public final AbstractC0619g clone() {
        C0630l c0630l = (C0630l) super.clone();
        c0630l.f2215w = new ArrayList<>();
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            c0630l.m470H(this.f2215w.get(i).clone());
        }
        return c0630l;
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: l */
    public final void mo464l(ViewGroup viewGroup, C0696a c0696a, C0696a c0696a2, ArrayList<C0634n> arrayList, ArrayList<C0634n> arrayList2) {
        long j = this.f2182b;
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            AbstractC0619g abstractC0619g = this.f2215w.get(i);
            if (j > 0 && (this.f2216x || i == 0)) {
                long j2 = abstractC0619g.f2182b;
                if (j2 > 0) {
                    abstractC0619g.mo472E(j2 + j);
                } else {
                    abstractC0619g.mo472E(j);
                }
            }
            abstractC0619g.mo464l(viewGroup, c0696a, c0696a2, arrayList, arrayList2);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: u */
    public final void mo463u(View view) {
        super.mo463u(view);
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            this.f2215w.get(i).mo463u(view);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: v */
    public final void mo462v(AbstractC0619g.InterfaceC0623d interfaceC0623d) {
        super.mo462v(interfaceC0623d);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: w */
    public final void mo461w(View view) {
        for (int i = 0; i < this.f2215w.size(); i++) {
            this.f2215w.get(i).mo461w(view);
        }
        this.f2186f.remove(view);
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: x */
    public final void mo460x(ViewGroup viewGroup) {
        super.mo460x(viewGroup);
        int size = this.f2215w.size();
        for (int i = 0; i < size; i++) {
            this.f2215w.get(i).mo460x(viewGroup);
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: y */
    public final void mo459y() {
        if (this.f2215w.isEmpty()) {
            m489F();
            m484m();
            return;
        }
        C0632b c0632b = new C0632b(this);
        Iterator<AbstractC0619g> it = this.f2215w.iterator();
        while (it.hasNext()) {
            it.next().mo469a(c0632b);
        }
        this.f2217y = this.f2215w.size();
        if (!this.f2216x) {
            for (int i = 1; i < this.f2215w.size(); i++) {
                this.f2215w.get(i - 1).mo469a(new C0631a(this.f2215w.get(i)));
            }
            AbstractC0619g abstractC0619g = this.f2215w.get(0);
            if (abstractC0619g != null) {
                abstractC0619g.mo459y();
                return;
            }
            return;
        }
        Iterator<AbstractC0619g> it2 = this.f2215w.iterator();
        while (it2.hasNext()) {
            it2.next().mo459y();
        }
    }

    @Override // p036j0.AbstractC0619g
    /* renamed from: z */
    public final void mo458z(long j) {
        this.f2183c = j;
        if (j >= 0) {
            int size = this.f2215w.size();
            for (int i = 0; i < size; i++) {
                this.f2215w.get(i).mo458z(j);
            }
        }
    }
}
