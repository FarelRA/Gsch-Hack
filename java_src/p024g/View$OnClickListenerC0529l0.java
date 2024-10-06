package p024g;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import net.geschool.app.secure.R;
import p005b0.AbstractC0305c;
import p052p.C0819a;
/* renamed from: g.l0 */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0529l0 extends AbstractC0305c implements View.OnClickListener {

    /* renamed from: z */
    public static final /* synthetic */ int f1997z = 0;

    /* renamed from: m */
    public final SearchView f1998m;

    /* renamed from: n */
    public final SearchableInfo f1999n;

    /* renamed from: o */
    public final Context f2000o;

    /* renamed from: p */
    public final WeakHashMap<String, Drawable.ConstantState> f2001p;

    /* renamed from: q */
    public final int f2002q;

    /* renamed from: r */
    public int f2003r;

    /* renamed from: s */
    public ColorStateList f2004s;

    /* renamed from: t */
    public int f2005t;

    /* renamed from: u */
    public int f2006u;

    /* renamed from: v */
    public int f2007v;

    /* renamed from: w */
    public int f2008w;

    /* renamed from: x */
    public int f2009x;

    /* renamed from: y */
    public int f2010y;

    /* renamed from: g.l0$a */
    /* loaded from: classes.dex */
    public static final class C0530a {

        /* renamed from: a */
        public final TextView f2011a;

        /* renamed from: b */
        public final TextView f2012b;

        /* renamed from: c */
        public final ImageView f2013c;

        /* renamed from: d */
        public final ImageView f2014d;

        /* renamed from: e */
        public final ImageView f2015e;

        public C0530a(View view) {
            this.f2011a = (TextView) view.findViewById(16908308);
            this.f2012b = (TextView) view.findViewById(16908309);
            this.f2013c = (ImageView) view.findViewById(16908295);
            this.f2014d = (ImageView) view.findViewById(16908296);
            this.f2015e = (ImageView) view.findViewById(R.id.edit_query);
        }
    }

    public View$OnClickListenerC0529l0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout());
        this.f2003r = 1;
        this.f2005t = -1;
        this.f2006u = -1;
        this.f2007v = -1;
        this.f2008w = -1;
        this.f2009x = -1;
        this.f2010y = -1;
        SearchManager searchManager = (SearchManager) this.f1117e.getSystemService("search");
        this.f1998m = searchView;
        this.f1999n = searchableInfo;
        this.f2002q = searchView.getSuggestionCommitIconResId();
        this.f2000o = context;
        this.f2001p = weakHashMap;
    }

    /* renamed from: i */
    public static String m587i(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013f  */
    @Override // p005b0.AbstractC0300a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void mo594b(View view, Cursor cursor) {
        int i;
        Drawable m589g;
        Drawable m589g2;
        String obj;
        Drawable drawable;
        Drawable.ConstantState constantState;
        ActivityInfo activityInfo;
        int iconResource;
        String str;
        int i2;
        int i3;
        C0530a c0530a = (C0530a) view.getTag();
        int i4 = this.f2010y;
        if (i4 != -1) {
            i = cursor.getInt(i4);
        } else {
            i = 0;
        }
        TextView textView = c0530a.f2011a;
        if (textView != null) {
            String m587i = m587i(cursor, this.f2005t);
            textView.setText(m587i);
            if (TextUtils.isEmpty(m587i)) {
                i3 = 8;
            } else {
                i3 = 0;
            }
            textView.setVisibility(i3);
        }
        TextView textView2 = c0530a.f2012b;
        if (textView2 != null) {
            String m587i2 = m587i(cursor, this.f2007v);
            if (m587i2 != null) {
                if (this.f2004s == null) {
                    TypedValue typedValue = new TypedValue();
                    this.f1117e.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
                    this.f2004s = this.f1117e.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(m587i2);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f2004s, null), 0, m587i2.length(), 33);
                str = spannableString;
            } else {
                str = m587i(cursor, this.f2006u);
            }
            if (TextUtils.isEmpty(str)) {
                if (textView != null) {
                    textView.setSingleLine(false);
                    textView.setMaxLines(2);
                }
            } else if (textView != null) {
                textView.setSingleLine(true);
                textView.setMaxLines(1);
            }
            textView2.setText(str);
            if (TextUtils.isEmpty(str)) {
                i2 = 8;
            } else {
                i2 = 0;
            }
            textView2.setVisibility(i2);
        }
        ImageView imageView = c0530a.f2013c;
        if (imageView != null) {
            int i5 = this.f2008w;
            if (i5 == -1) {
                m589g2 = null;
            } else {
                m589g2 = m589g(cursor.getString(i5));
                if (m589g2 == null) {
                    ComponentName searchActivity = this.f1999n.getSearchActivity();
                    String flattenToShortString = searchActivity.flattenToShortString();
                    WeakHashMap<String, Drawable.ConstantState> weakHashMap = this.f2001p;
                    if (weakHashMap.containsKey(flattenToShortString)) {
                        Drawable.ConstantState constantState2 = weakHashMap.get(flattenToShortString);
                        if (constantState2 == null) {
                            m589g2 = null;
                        } else {
                            m589g2 = constantState2.newDrawable(this.f2000o.getResources());
                        }
                    } else {
                        PackageManager packageManager = this.f1117e.getPackageManager();
                        try {
                            activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            iconResource = activityInfo.getIconResource();
                        } catch (PackageManager.NameNotFoundException e) {
                            obj = e.toString();
                        }
                        if (iconResource != 0) {
                            drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                            if (drawable == null) {
                                obj = "Invalid icon resource " + iconResource + " for " + searchActivity.flattenToShortString();
                                Log.w("SuggestionsAdapter", obj);
                            }
                            if (drawable != null) {
                                constantState = null;
                            } else {
                                constantState = drawable.getConstantState();
                            }
                            weakHashMap.put(flattenToShortString, constantState);
                            m589g2 = drawable;
                        }
                        drawable = null;
                        if (drawable != null) {
                        }
                        weakHashMap.put(flattenToShortString, constantState);
                        m589g2 = drawable;
                    }
                    if (m589g2 == null) {
                        m589g2 = this.f1117e.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView.setImageDrawable(m589g2);
            if (m589g2 == null) {
                imageView.setVisibility(4);
            } else {
                imageView.setVisibility(0);
                m589g2.setVisible(false, false);
                m589g2.setVisible(true, false);
            }
        }
        ImageView imageView2 = c0530a.f2014d;
        if (imageView2 != null) {
            int i6 = this.f2009x;
            if (i6 == -1) {
                m589g = null;
            } else {
                m589g = m589g(cursor.getString(i6));
            }
            imageView2.setImageDrawable(m589g);
            if (m589g == null) {
                imageView2.setVisibility(8);
            } else {
                imageView2.setVisibility(0);
                m589g.setVisible(false, false);
                m589g.setVisible(true, false);
            }
        }
        int i7 = this.f2003r;
        ImageView imageView3 = c0530a.f2015e;
        if (i7 != 2 && (i7 != 1 || (i & 1) == 0)) {
            imageView3.setVisibility(8);
            return;
        }
        imageView3.setVisibility(0);
        imageView3.setTag(textView.getText());
        imageView3.setOnClickListener(this);
    }

    @Override // p005b0.AbstractC0300a
    /* renamed from: c */
    public final void mo593c(Cursor cursor) {
        try {
            super.mo593c(cursor);
            if (cursor != null) {
                this.f2005t = cursor.getColumnIndex("suggest_text_1");
                this.f2006u = cursor.getColumnIndex("suggest_text_2");
                this.f2007v = cursor.getColumnIndex("suggest_text_2_url");
                this.f2008w = cursor.getColumnIndex("suggest_icon_1");
                this.f2009x = cursor.getColumnIndex("suggest_icon_2");
                this.f2010y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // p005b0.AbstractC0300a
    /* renamed from: d */
    public final String mo592d(Cursor cursor) {
        String m587i;
        String m587i2;
        if (cursor == null) {
            return null;
        }
        String m587i3 = m587i(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (m587i3 != null) {
            return m587i3;
        }
        SearchableInfo searchableInfo = this.f1999n;
        if (searchableInfo.shouldRewriteQueryFromData() && (m587i2 = m587i(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return m587i2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (m587i = m587i(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return m587i;
    }

    @Override // p005b0.AbstractC0300a
    /* renamed from: e */
    public final View mo591e(ViewGroup viewGroup) {
        View inflate = this.f1127l.inflate(this.f1125j, viewGroup, false);
        inflate.setTag(new C0530a(inflate));
        ((ImageView) inflate.findViewById(R.id.edit_query)).setImageResource(this.f2002q);
        return inflate;
    }

    /* renamed from: f */
    public final Drawable m590f(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1117e.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size != 2) {
                throw new FileNotFoundException("More than two path segments: " + uri);
            } else {
                parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (parseInt != 0) {
                return resourcesForApplication.getDrawable(parseInt);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x010e  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable m589g(String str) {
        Drawable newDrawable;
        Drawable newDrawable2;
        WeakHashMap<String, Drawable.ConstantState> weakHashMap = this.f2001p;
        Context context = this.f2000o;
        Drawable drawable = null;
        if (str != null && !str.isEmpty() && !"0".equals(str)) {
            try {
                int parseInt = Integer.parseInt(str);
                String str2 = "android.resource://" + context.getPackageName() + "/" + parseInt;
                Drawable.ConstantState constantState = weakHashMap.get(str2);
                if (constantState == null) {
                    newDrawable2 = null;
                } else {
                    newDrawable2 = constantState.newDrawable();
                }
                if (newDrawable2 != null) {
                    return newDrawable2;
                }
                Object obj = C0819a.f2712a;
                Drawable drawable2 = context.getDrawable(parseInt);
                if (drawable2 != null) {
                    weakHashMap.put(str2, drawable2.getConstantState());
                }
                return drawable2;
            } catch (Resources.NotFoundException unused) {
                Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(str));
                return null;
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = weakHashMap.get(str);
                if (constantState2 == null) {
                    newDrawable = null;
                } else {
                    newDrawable = constantState2.newDrawable();
                }
                if (newDrawable != null) {
                    return newDrawable;
                }
                Uri parse = Uri.parse(str);
                try {
                } catch (FileNotFoundException e) {
                    Log.w("SuggestionsAdapter", "Icon not found: " + parse + ", " + e.getMessage());
                    if (drawable != null) {
                    }
                    return drawable;
                }
                if ("android.resource".equals(parse.getScheme())) {
                    try {
                        drawable = m590f(parse);
                        if (drawable != null) {
                            weakHashMap.put(str, drawable.getConstantState());
                        }
                    } catch (Resources.NotFoundException unused3) {
                        throw new FileNotFoundException("Resource does not exist: " + parse);
                    }
                } else {
                    InputStream openInputStream = context.getContentResolver().openInputStream(parse);
                    if (openInputStream != null) {
                        Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                        try {
                            openInputStream.close();
                        } catch (IOException e2) {
                            Log.e("SuggestionsAdapter", "Error closing icon stream for " + parse, e2);
                        }
                        drawable = createFromStream;
                        if (drawable != null) {
                        }
                    } else {
                        throw new FileNotFoundException("Failed to open " + parse);
                    }
                }
                Log.w("SuggestionsAdapter", "Icon not found: " + parse + ", " + e.getMessage());
                if (drawable != null) {
                }
            }
        }
        return drawable;
    }

    @Override // p005b0.AbstractC0300a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View inflate = this.f1127l.inflate(this.f1126k, viewGroup, false);
            if (inflate != null) {
                ((C0530a) inflate.getTag()).f2011a.setText(e.toString());
            }
            return inflate;
        }
    }

    @Override // p005b0.AbstractC0300a, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo591e = mo591e(viewGroup);
            ((C0530a) mo591e.getTag()).f2011a.setText(e.toString());
            return mo591e;
        }
    }

    /* renamed from: h */
    public final Cursor m588h(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        fragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f1117e.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        Bundle bundle;
        super.notifyDataSetChanged();
        Cursor cursor = this.f1116d;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        Bundle bundle;
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f1116d;
        if (cursor != null) {
            bundle = cursor.getExtras();
        } else {
            bundle = null;
        }
        if (bundle != null) {
            bundle.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1998m.m1305o((CharSequence) tag);
        }
    }
}
