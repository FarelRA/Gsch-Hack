package p044m;

import android.util.Log;
import android.util.SparseArray;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import p020f.C0460c;
import p039k.C0655b;
import p039k.C0658e;
import p039k.C0666h;
import p054p1.C0822a;
import p073x.C0928b;
/* renamed from: m.a */
/* loaded from: classes.dex */
public final class C0696a {

    /* renamed from: a */
    public final Object f2439a;

    /* renamed from: b */
    public Object f2440b;

    /* renamed from: c */
    public Object f2441c;

    /* renamed from: d */
    public Object f2442d;

    public C0696a(int i) {
        if (i != 1) {
            if (i != 2) {
                this.f2439a = new C0928b(10);
                this.f2440b = new C0666h();
                this.f2441c = new ArrayList();
                this.f2442d = new HashSet();
                return;
            }
            this.f2439a = new C0460c(7);
            return;
        }
        this.f2439a = new C0655b();
        this.f2440b = new SparseArray();
        this.f2441c = new C0658e();
        this.f2442d = new C0655b();
    }

    /* renamed from: a */
    public final void m347a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (!hashSet.contains(obj)) {
            hashSet.add(obj);
            ArrayList arrayList2 = (ArrayList) ((C0666h) this.f2440b).getOrDefault(obj, null);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    m347a(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(obj);
            arrayList.add(obj);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:7|(1:9)|(2:10|11)|12|13|14|15) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        r0 = ((p020f.C0460c) r1).m697h();
        r0.append("BaseXMLParser");
        r0.append("#parse");
        r0 = r0.toString();
        r4 = "IOException";
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0086, code lost:
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0087, code lost:
        r4 = ((p020f.C0460c) r1).m697h();
        r4.append("BaseXMLParser");
        r4.append("#parse");
        r4 = r4.toString();
        r4 = "SAXException";
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009b, code lost:
        android.util.Log.e(r0, r4);
        r9.printStackTrace();
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m346b(String str) {
        String sb;
        String str2;
        Object obj = this.f2439a;
        C0822a c0822a = (C0822a) ((DefaultHandler) this.f2440b);
        if (c0822a != null) {
            if (str == null) {
                c0822a.f2715c = null;
                return;
            }
            if (((SAXParserFactory) this.f2441c) == null) {
                this.f2441c = SAXParserFactory.newInstance();
            }
            try {
                this.f2442d = ((SAXParserFactory) this.f2441c).newSAXParser();
            } catch (ParserConfigurationException e) {
                e = e;
                StringBuilder m697h = ((C0460c) obj).m697h();
                m697h.append("BaseXMLParser");
                m697h.append("#parse");
                sb = m697h.toString();
                str2 = "ParserConfigurationException";
                Log.e(sb, str2);
                e.printStackTrace();
                ((SAXParser) this.f2442d).parse(new InputSource(new StringReader(str)), (DefaultHandler) this.f2440b);
                StringBuilder m697h2 = ((C0460c) obj).m697h();
                m697h2.append("BaseXMLParser");
                m697h2.append("#parse");
                Log.v(m697h2.toString(), "done parsing xml");
                return;
            } catch (SAXException e2) {
                e = e2;
                StringBuilder m697h3 = ((C0460c) obj).m697h();
                m697h3.append("BaseXMLParser");
                m697h3.append("#parse");
                sb = m697h3.toString();
                str2 = "SAXException";
                Log.e(sb, str2);
                e.printStackTrace();
                ((SAXParser) this.f2442d).parse(new InputSource(new StringReader(str)), (DefaultHandler) this.f2440b);
                StringBuilder m697h22 = ((C0460c) obj).m697h();
                m697h22.append("BaseXMLParser");
                m697h22.append("#parse");
                Log.v(m697h22.toString(), "done parsing xml");
                return;
            }
            ((SAXParser) this.f2442d).parse(new InputSource(new StringReader(str)), (DefaultHandler) this.f2440b);
            StringBuilder m697h222 = ((C0460c) obj).m697h();
            m697h222.append("BaseXMLParser");
            m697h222.append("#parse");
            Log.v(m697h222.toString(), "done parsing xml");
            return;
        }
        throw new IllegalStateException("handler is null, must set a document handler before calling parse");
    }
}
