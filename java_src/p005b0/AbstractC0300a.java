package p005b0;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import p005b0.C0303b;
/* renamed from: b0.a */
/* loaded from: classes.dex */
public abstract class AbstractC0300a extends BaseAdapter implements Filterable, C0303b.InterfaceC0304a {

    /* renamed from: e */
    public Context f1117e;

    /* renamed from: i */
    public C0303b f1121i;

    /* renamed from: c */
    public boolean f1115c = true;

    /* renamed from: d */
    public Cursor f1116d = null;

    /* renamed from: b */
    public boolean f1114b = false;

    /* renamed from: f */
    public int f1118f = -1;

    /* renamed from: g */
    public C0301a f1119g = new C0301a();

    /* renamed from: h */
    public C0302b f1120h = new C0302b();

    /* renamed from: b0.a$a */
    /* loaded from: classes.dex */
    public class C0301a extends ContentObserver {
        public C0301a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Cursor cursor;
            AbstractC0300a abstractC0300a = AbstractC0300a.this;
            if (abstractC0300a.f1115c && (cursor = abstractC0300a.f1116d) != null && !cursor.isClosed()) {
                abstractC0300a.f1114b = abstractC0300a.f1116d.requery();
            }
        }
    }

    /* renamed from: b0.a$b */
    /* loaded from: classes.dex */
    public class C0302b extends DataSetObserver {
        public C0302b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            AbstractC0300a abstractC0300a = AbstractC0300a.this;
            abstractC0300a.f1114b = true;
            abstractC0300a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            AbstractC0300a abstractC0300a = AbstractC0300a.this;
            abstractC0300a.f1114b = false;
            abstractC0300a.notifyDataSetInvalidated();
        }
    }

    public AbstractC0300a(Context context) {
        this.f1117e = context;
    }

    /* renamed from: b */
    public abstract void mo594b(View view, Cursor cursor);

    /* renamed from: c */
    public void mo593c(Cursor cursor) {
        Cursor cursor2 = this.f1116d;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                C0301a c0301a = this.f1119g;
                if (c0301a != null) {
                    cursor2.unregisterContentObserver(c0301a);
                }
                C0302b c0302b = this.f1120h;
                if (c0302b != null) {
                    cursor2.unregisterDataSetObserver(c0302b);
                }
            }
            this.f1116d = cursor;
            if (cursor != null) {
                C0301a c0301a2 = this.f1119g;
                if (c0301a2 != null) {
                    cursor.registerContentObserver(c0301a2);
                }
                C0302b c0302b2 = this.f1120h;
                if (c0302b2 != null) {
                    cursor.registerDataSetObserver(c0302b2);
                }
                this.f1118f = cursor.getColumnIndexOrThrow("_id");
                this.f1114b = true;
                notifyDataSetChanged();
            } else {
                this.f1118f = -1;
                this.f1114b = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    /* renamed from: d */
    public abstract String mo592d(Cursor cursor);

    /* renamed from: e */
    public abstract View mo591e(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f1114b || (cursor = this.f1116d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f1114b) {
            this.f1116d.moveToPosition(i);
            if (view == null) {
                AbstractC0305c abstractC0305c = (AbstractC0305c) this;
                view = abstractC0305c.f1127l.inflate(abstractC0305c.f1126k, viewGroup, false);
            }
            mo594b(view, this.f1116d);
            return view;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f1121i == null) {
            this.f1121i = new C0303b(this);
        }
        return this.f1121i;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        Cursor cursor;
        if (!this.f1114b || (cursor = this.f1116d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f1116d;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        Cursor cursor;
        if (this.f1114b && (cursor = this.f1116d) != null && cursor.moveToPosition(i)) {
            return this.f1116d.getLong(this.f1118f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f1114b) {
            if (!this.f1116d.moveToPosition(i)) {
                throw new IllegalStateException("couldn't move cursor to position " + i);
            }
            if (view == null) {
                view = mo591e(viewGroup);
            }
            mo594b(view, this.f1116d);
            return view;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }
}
