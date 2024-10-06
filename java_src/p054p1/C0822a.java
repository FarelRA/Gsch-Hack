package p054p1;

import android.util.Log;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DefaultHandler2;
import p020f.C0460c;
import p045m0.C0716n;
import p057q1.C0842f;
import p057q1.C0843g;
/* renamed from: p1.a */
/* loaded from: classes.dex */
public final class C0822a extends DefaultHandler2 {

    /* renamed from: a */
    public final C0460c f2713a = new C0460c(7);

    /* renamed from: b */
    public C0460c f2714b;

    /* renamed from: c */
    public C0842f f2715c;

    /* renamed from: d */
    public String f2716d;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        C0460c c0460c = this.f2713a;
        StringBuilder m697h = c0460c.m697h();
        m697h.append("PListXMLHandler");
        m697h.append("#characters");
        String sb = m697h.toString();
        StringBuilder m697h2 = c0460c.m697h();
        m697h2.append(cArr);
        m697h2.append("|");
        m697h2.append(i);
        m697h2.append("|");
        m697h2.append(i2);
        m697h2.append("|");
        Log.v(sb, m697h2.toString());
        ((StringBuilder) this.f2714b.f1797a).append(new String(cArr, i, i2));
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        String str4;
        C0460c c0460c = this.f2713a;
        StringBuilder m697h = c0460c.m697h();
        m697h.append("PListXMLHandler");
        m697h.append("#endElement");
        String sb = m697h.toString();
        StringBuilder m697h2 = c0460c.m697h();
        m697h2.append("localName|qName|uri|tempVal: ");
        m697h2.append(str2);
        m697h2.append("|");
        m697h2.append(str3);
        m697h2.append("|");
        m697h2.append(str);
        m697h2.append("|");
        m697h2.append(((StringBuilder) this.f2714b.f1797a).toString());
        Log.v(sb, m697h2.toString());
        if (str2.equalsIgnoreCase("key")) {
            str4 = ((StringBuilder) this.f2714b.f1797a).toString().trim();
        } else {
            if (!str2.equalsIgnoreCase("dict") && !str2.equalsIgnoreCase("array")) {
                if (!str2.equalsIgnoreCase("plist")) {
                    try {
                        C0842f c0842f = this.f2715c;
                        String sb2 = ((StringBuilder) this.f2714b.f1797a).toString();
                        c0842f.getClass();
                        this.f2715c.m188c(C0842f.m189b(str2, sb2), this.f2716d);
                        str4 = null;
                    } catch (Exception e) {
                        throw new SAXException(e);
                    }
                } else {
                    str2.equalsIgnoreCase("plist");
                }
            } else {
                C0842f c0842f2 = this.f2715c;
                Stack<C0843g> stack = c0842f2.f2743f;
                if (!stack.isEmpty()) {
                    stack.pop();
                    c0842f2.f2742e--;
                    if (!stack.isEmpty()) {
                        int m330a = C0716n.m330a(stack.lastElement().f2744a);
                        if (m330a != 0) {
                            if (m330a == 3) {
                                c0842f2.f2741d = false;
                                c0842f2.f2740c = true;
                            }
                        } else {
                            c0842f2.f2741d = true;
                        }
                    } else {
                        c0842f2.f2741d = false;
                    }
                    c0842f2.f2740c = false;
                }
            }
            this.f2714b.m697h();
        }
        this.f2716d = str4;
        this.f2714b.m697h();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startDocument() {
        super.startDocument();
        this.f2714b = new C0460c(7);
        this.f2715c = null;
        this.f2716d = null;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        C0460c c0460c = this.f2713a;
        StringBuilder m697h = c0460c.m697h();
        m697h.append("PListXMLHandler");
        m697h.append("#startElement");
        String sb = m697h.toString();
        StringBuilder m697h2 = c0460c.m697h();
        m697h2.append("Start Element lname|uri|attr.length :");
        m697h2.append(str2);
        m697h2.append("|");
        m697h2.append(str);
        m697h2.append("|");
        m697h2.append(attributes.getLength());
        Log.v(sb, m697h2.toString());
        this.f2714b.m697h();
        if (str2.equalsIgnoreCase("plist")) {
            if (this.f2715c == null) {
                this.f2715c = new C0842f();
                return;
            }
            throw new SAXException("there should only be one PList element in PList XML");
        } else if (this.f2715c != null) {
            if (str2.equalsIgnoreCase("dict") || str2.equalsIgnoreCase("array")) {
                try {
                    C0842f c0842f = this.f2715c;
                    String sb2 = ((StringBuilder) this.f2714b.f1797a).toString();
                    c0842f.getClass();
                    this.f2715c.m188c(C0842f.m189b(str2, sb2), this.f2716d);
                } catch (Exception e) {
                    throw new SAXException(e);
                }
            }
        } else {
            throw new SAXException("invalid PList - please see http://www.apple.com/DTDs/PropertyList-1.0.dtd");
        }
    }
}
