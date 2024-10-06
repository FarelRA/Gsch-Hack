package p057q1;

import android.util.Log;
import java.text.ParseException;
import java.util.Date;
import java.util.Scanner;
import java.util.Stack;
import p020f.C0460c;
import p045m0.C0716n;
/* renamed from: q1.f */
/* loaded from: classes.dex */
public final class C0842f {

    /* renamed from: b */
    public C0843g f2739b;

    /* renamed from: a */
    public final C0460c f2738a = new C0460c(7);

    /* renamed from: c */
    public boolean f2740c = false;

    /* renamed from: d */
    public boolean f2741d = false;

    /* renamed from: e */
    public int f2742e = 0;

    /* renamed from: f */
    public final Stack<C0843g> f2743f = new Stack<>();

    /* renamed from: b */
    public static C0843g m189b(String str, String str2) {
        if (str != null) {
            if (str.equalsIgnoreCase("integer")) {
                C0841e c0841e = new C0841e();
                new Integer(Integer.parseInt(str2.trim()));
                return c0841e;
            } else if (str.equalsIgnoreCase("string")) {
                C0846j c0846j = new C0846j();
                c0846j.f2745b.m697h().append(str2);
                return c0846j;
            } else if (str.equalsIgnoreCase("real")) {
                C0845i c0845i = new C0845i();
                new Float(Float.parseFloat(str2.trim()));
                return c0845i;
            } else if (str.equalsIgnoreCase("date")) {
                C0839c c0839c = new C0839c();
                if (str2 != null && str2.length() >= 1) {
                    if (new Scanner(str2).useDelimiter("-").hasNextInt()) {
                        try {
                            c0839c.f2736b.parse(str2);
                            return c0839c;
                        } catch (ParseException e) {
                            Log.e("Date", "#setValue - error parsing val=".concat(str2), e);
                            return c0839c;
                        }
                    }
                    new Date(Date.parse(str2.trim()));
                    return c0839c;
                }
                return c0839c;
            } else if (str.equalsIgnoreCase("false")) {
                return new C0838b(0);
            } else {
                if (str.equalsIgnoreCase("true")) {
                    return new C0838b(1);
                }
                if (str.equalsIgnoreCase("data")) {
                    C0838b c0838b = new C0838b();
                    str2.trim().getBytes();
                    return c0838b;
                } else if (str.equalsIgnoreCase("dict")) {
                    return new C0840d();
                } else {
                    if (str.equalsIgnoreCase("array")) {
                        return new C0837a();
                    }
                    return null;
                }
            }
        }
        throw new Exception("Cannot add a child with a null tag to a PList.");
    }

    /* renamed from: a */
    public final void m190a(C0843g c0843g, String str) {
        boolean z = this.f2741d;
        C0460c c0460c = this.f2738a;
        Stack<C0843g> stack = this.f2743f;
        if (z) {
            StringBuilder m697h = c0460c.m697h();
            m697h.append("PList");
            m697h.append("#attachPListObjToArrayParent");
            String sb = m697h.toString();
            StringBuilder m697h2 = c0460c.m697h();
            m697h2.append("obj-type|obj: ");
            m697h2.append("|");
            m697h2.append(C0844h.m183e(c0843g.f2744a));
            m697h2.append("|");
            m697h2.append(c0843g.toString());
            m697h2.append("|");
            Log.v(sb, m697h2.toString());
            C0837a c0837a = (C0837a) stack.pop();
            c0837a.f2735b.add(c0843g);
            stack.push(c0837a);
        } else if (this.f2740c) {
            StringBuilder m697h3 = c0460c.m697h();
            m697h3.append("PList");
            m697h3.append("#attachPListObjToDictParent");
            String sb2 = m697h3.toString();
            StringBuilder m697h4 = c0460c.m697h();
            m697h4.append("key|obj-type|obj: ");
            m697h4.append(str);
            m697h4.append("|");
            m697h4.append(C0844h.m183e(c0843g.f2744a));
            m697h4.append("|");
            m697h4.append(c0843g.toString());
            m697h4.append("|");
            Log.v(sb2, m697h4.toString());
            C0840d c0840d = (C0840d) stack.pop();
            c0840d.f2737b.put(str, c0843g);
            stack.push(c0840d);
        } else if (this.f2742e == 0) {
            this.f2739b = c0843g;
        }
    }

    /* renamed from: c */
    public final void m188c(C0843g c0843g, String str) {
        if (str == null && this.f2740c) {
            throw new Exception("PList objects with Dict parents require a key.");
        }
        if (this.f2742e > 0 && !this.f2740c && !this.f2741d) {
            throw new Exception("PList elements that are not at the root should have an Array or Dict parent.");
        }
        int m330a = C0716n.m330a(c0843g.f2744a);
        Stack<C0843g> stack = this.f2743f;
        if (m330a != 0) {
            m190a(c0843g, str);
            if (m330a == 3) {
                stack.push(c0843g);
                this.f2741d = false;
                this.f2740c = true;
            } else {
                return;
            }
        } else {
            m190a(c0843g, str);
            stack.push(c0843g);
            this.f2741d = true;
            this.f2740c = false;
        }
        this.f2742e++;
    }

    public final String toString() {
        C0843g c0843g = this.f2739b;
        if (c0843g == null) {
            return null;
        }
        return c0843g.toString();
    }
}
