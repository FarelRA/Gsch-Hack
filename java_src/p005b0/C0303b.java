package p005b0;

import android.database.Cursor;
import android.util.Log;
import android.widget.Filter;
import androidx.appcompat.widget.SearchView;
import p024g.View$OnClickListenerC0529l0;
/* renamed from: b0.b */
/* loaded from: classes.dex */
public final class C0303b extends Filter {

    /* renamed from: a */
    public final InterfaceC0304a f1124a;

    /* renamed from: b0.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0304a {
    }

    public C0303b(InterfaceC0304a interfaceC0304a) {
        this.f1124a = interfaceC0304a;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return ((View$OnClickListenerC0529l0) this.f1124a).mo592d((Cursor) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        String charSequence2;
        Cursor cursor;
        View$OnClickListenerC0529l0 view$OnClickListenerC0529l0 = (View$OnClickListenerC0529l0) this.f1124a;
        if (charSequence == null) {
            charSequence2 = "";
        } else {
            view$OnClickListenerC0529l0.getClass();
            charSequence2 = charSequence.toString();
        }
        SearchView searchView = view$OnClickListenerC0529l0.f1998m;
        if (searchView.getVisibility() == 0 && searchView.getWindowVisibility() == 0) {
            try {
                cursor = view$OnClickListenerC0529l0.m588h(view$OnClickListenerC0529l0.f1999n, charSequence2);
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            }
            if (cursor != null) {
                cursor.getCount();
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (cursor == null) {
                    filterResults.count = cursor.getCount();
                    filterResults.values = cursor;
                } else {
                    filterResults.count = 0;
                    filterResults.values = null;
                }
                return filterResults;
            }
        }
        cursor = null;
        Filter.FilterResults filterResults2 = new Filter.FilterResults();
        if (cursor == null) {
        }
        return filterResults2;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        InterfaceC0304a interfaceC0304a = this.f1124a;
        Cursor cursor = ((AbstractC0300a) interfaceC0304a).f1116d;
        Object obj = filterResults.values;
        if (obj != null && obj != cursor) {
            ((View$OnClickListenerC0529l0) interfaceC0304a).mo593c((Cursor) obj);
        }
    }
}
