package net.geschool.app.student;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.IOException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import javax.crypto.spec.SecretKeySpec;
import net.geschool.app.secure.R;
import org.json.JSONObject;
import org.xml.sax.helpers.DefaultHandler;
import p002a2.C0039j;
import p004b.ActivityC0263g;
import p015d2.C0383d;
import p019e2.AbstractC0457b;
import p044m.C0696a;
import p045m0.C0720p;
import p045m0.C0724r;
import p046m1.AbstractC0732d;
import p046m1.C0733e;
import p046m1.C0735g;
import p046m1.C0736h;
import p046m1.InterfaceC0729a;
import p047n0.C0758i;
import p047n0.C0760k;
import p054p1.C0822a;
import p057q1.C0840d;
import p057q1.C0844h;
import p060r1.C0862a;
import p066u0.C0888l;
import p066u0.InterfaceC0878b;
/* loaded from: classes.dex */
public class MainActivity extends ActivityC0263g {
    public MainActivity mActivity;
    public View mAlertSplash;
    public String mBaseUrl;
    public WebView mBrowser;
    public ImageView mBrowserCloseButton;
    public ProgressBar mBrowserProgress;
    public View mBrowserView;
    public View mMain;
    public View mMultiWindowSplash;
    public View mScreenPinned;
    public Button mScreenPinnedButton;
    public View mSplash;
    public WebView mWebView;

    /* renamed from: q */
    public Timer f2639q;

    /* renamed from: s */
    public String f2641s;

    /* renamed from: t */
    public ValueCallback<Uri[]> f2642t;

    /* renamed from: v */
    public TextView f2644v;

    /* renamed from: w */
    public TextView f2645w;

    /* renamed from: p */
    public boolean f2638p = false;

    /* renamed from: r */
    public long f2640r = 0;

    /* renamed from: u */
    public final int f2643u = 51426;

    /* renamed from: net.geschool.app.student.MainActivity$a */
    /* loaded from: classes.dex */
    public class C0762a implements C0720p.InterfaceC0722b<String> {
        public C0762a() {
        }

        @Override // p045m0.C0720p.InterfaceC0722b
        /* renamed from: a */
        public final void mo233a(String str) {
            C0696a c0696a = new C0696a(2);
            c0696a.f2440b = new C0822a();
            c0696a.m346b(str);
            C0840d c0840d = (C0840d) ((C0822a) ((DefaultHandler) c0696a.f2440b)).f2715c.f2739b;
            String sb = ((StringBuilder) c0840d.m191a("startURL").f2745b.f1797a).toString();
            String replace = ((StringBuilder) c0840d.m191a("whitelistURLFilter").f2745b.f1797a).toString().replace("*", "");
            MainActivity mainActivity = MainActivity.this;
            mainActivity.mWebView.loadUrl(sb);
            mainActivity.mBaseUrl = replace;
            mainActivity.lockdown();
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$b */
    /* loaded from: classes.dex */
    public class C0763b implements C0720p.InterfaceC0721a {

        /* renamed from: a */
        public final /* synthetic */ String f2647a;

        public C0763b(String str) {
            this.f2647a = str;
        }

        @Override // p045m0.C0720p.InterfaceC0721a
        /* renamed from: a */
        public final void mo232a(C0724r c0724r) {
            Log.d("GESCHOOL", c0724r.toString());
            MainActivity.this.loadSebUrl2(this.f2647a);
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$c */
    /* loaded from: classes.dex */
    public class C0764c implements C0720p.InterfaceC0722b<String> {
        public C0764c() {
        }

        @Override // p045m0.C0720p.InterfaceC0722b
        /* renamed from: a */
        public final void mo233a(String str) {
            C0696a c0696a = new C0696a(2);
            c0696a.f2440b = new C0822a();
            c0696a.m346b(str);
            C0840d c0840d = (C0840d) ((C0822a) ((DefaultHandler) c0696a.f2440b)).f2715c.f2739b;
            String sb = ((StringBuilder) c0840d.m191a("startURL").f2745b.f1797a).toString();
            String replace = ((StringBuilder) c0840d.m191a("whitelistURLFilter").f2745b.f1797a).toString().replace("*", "");
            MainActivity mainActivity = MainActivity.this;
            mainActivity.mWebView.clearHistory();
            mainActivity.mWebView.loadUrl(sb);
            mainActivity.mBaseUrl = replace;
            mainActivity.lockdown();
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$d */
    /* loaded from: classes.dex */
    public class C0765d implements C0720p.InterfaceC0721a {
        public C0765d() {
        }

        @Override // p045m0.C0720p.InterfaceC0721a
        /* renamed from: a */
        public final void mo232a(C0724r c0724r) {
            Log.d("GESCHOOL", c0724r.toString());
            Toast.makeText(MainActivity.this.mActivity, "Error Loading Tryout", 1).show();
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$e */
    /* loaded from: classes.dex */
    public class C0766e implements InterfaceC0878b<AbstractC0732d> {
        public C0766e() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
        @Override // p066u0.InterfaceC0878b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void mo127b(C0888l c0888l) {
            boolean z;
            boolean z2;
            boolean z3;
            String mo313a;
            byte[] decode;
            boolean equals;
            String m859f;
            if (c0888l.m118d()) {
                MainActivity mainActivity = MainActivity.this;
                SharedPreferences preferences = mainActivity.getPreferences(0);
                Long valueOf = Long.valueOf(preferences.getLong("deviceCheckLast", 0L));
                Long valueOf2 = Long.valueOf(System.currentTimeMillis() / 1000);
                if (valueOf2.longValue() - valueOf.longValue() < 259200) {
                    try {
                        z = !new JSONObject(preferences.getString("deviceCheckPayload", "")).getJSONObject("deviceIntegrity").getJSONArray("deviceRecognitionVerdict").toString().contains("MEETS_DEVICE_INTEGRITY");
                        try {
                            Log.d("GESCHOOL/CHECK", "Token still valid skipping check");
                            z2 = false;
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                    }
                    if (!z2) {
                        Log.d("GESCHOOL/CHECK", "Checking token");
                        try {
                            mo313a = ((AbstractC0732d) c0888l.m119c()).mo313a();
                            decode = Base64.decode("7Z4TXOUFKjqZSqh6zcSVzm7vfPYv10/PVW67GxzR6tM=", 0);
                            z3 = z;
                        } catch (Exception e) {
                            e = e;
                            z3 = z;
                        }
                        try {
                            SecretKeySpec secretKeySpec = new SecretKeySpec(decode, 0, decode.length, "AES");
                            PublicKey generatePublic = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(Base64.decode("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEfvd/FkjF7UIvJ+/nmJLh1w9ot13pslT27KICN4l9SuEMKfN0Rk8i5KOMLYhCSv4pTf0qIHPGewDIWI7eE3pkOg==", 0)));
                            C0039j c0039j = (C0039j) AbstractC0457b.m705c(mo313a);
                            secretKeySpec.equals(c0039j.f1772d);
                            c0039j.f1772d = secretKeySpec;
                            C0383d c0383d = (C0383d) AbstractC0457b.m705c(c0039j.m1367f());
                            Key key = c0383d.f1772d;
                            if (generatePublic == null) {
                                if (key == null) {
                                    equals = true;
                                } else {
                                    equals = false;
                                }
                            } else {
                                equals = generatePublic.equals(key);
                            }
                            if (!equals) {
                                c0383d.m858g();
                            }
                            c0383d.f1772d = generatePublic;
                            m859f = c0383d.m859f();
                            Log.d("GESCHOOL/TOKEN", m859f);
                            if (new JSONObject(m859f).getJSONObject("deviceIntegrity").getJSONArray("deviceRecognitionVerdict").toString().contains("MEETS_DEVICE_INTEGRITY")) {
                                z = false;
                            } else {
                                z = z3;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            z = z3;
                            e.printStackTrace();
                            if (!z) {
                            }
                        }
                        try {
                            SharedPreferences.Editor edit = preferences.edit();
                            edit.putString("deviceCheckPayload", m859f);
                            edit.putLong("deviceCheckLast", valueOf2.longValue());
                            edit.commit();
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            if (!z) {
                            }
                        }
                    }
                    if (!z) {
                        Log.d("GESCHOOL/CHECK", "FAILED CHECK");
                        mainActivity.mWebView.loadUrl("javascript: window.GS_OVERLAY=2;");
                        mainActivity.mWebView.loadUrl("javascript: window.GS_SECURE=-2;");
                        mainActivity.mAlertSplash.setVisibility(0);
                        mainActivity.mAlertSplash.setBackgroundColor(-11534336);
                        return;
                    }
                    return;
                }
                z = true;
                z2 = true;
                if (!z2) {
                }
                if (!z) {
                }
            } else {
                Exception m120b = c0888l.m120b();
                Log.d("GESCHOOL/CHECK", "ERROR CHECK" + m120b.toString());
            }
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$f */
    /* loaded from: classes.dex */
    public class RunnableC0767f implements Runnable {

        /* renamed from: net.geschool.app.student.MainActivity$f$a */
        /* loaded from: classes.dex */
        public class RunnableC0768a implements Runnable {
            public RunnableC0768a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC0767f runnableC0767f = RunnableC0767f.this;
                MainActivity.this.mWebView.loadUrl("javascript: window.GS_OVERLAY=2;");
                MainActivity.this.mWebView.loadUrl("javascript: window.GS_SECURE=-2;");
                MainActivity.this.mAlertSplash.setVisibility(0);
                MainActivity.this.mAlertSplash.setBackgroundColor(-11534336);
            }
        }

        public RunnableC0767f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            if (new C0862a(mainActivity.mActivity).m144c()) {
                mainActivity.mActivity.runOnUiThread(new RunnableC0768a());
            }
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$g */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0769g implements View.OnClickListener {
        public View$OnClickListenerC0769g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.mBrowser.loadUrl("about:blank");
            mainActivity.mBrowserView.setVisibility(8);
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$h */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0770h implements View.OnClickListener {
        public View$OnClickListenerC0770h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Log.d("GESCHOOL", "Click Screen Pinned");
            MainActivity.this.startLockTask();
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$i */
    /* loaded from: classes.dex */
    public class C0771i extends WebViewClient {
        public C0771i() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            MainActivity mainActivity = MainActivity.this;
            ProgressBar progressBar = mainActivity.mBrowserProgress;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            mainActivity.f2644v.setText(webView.getTitle());
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            MainActivity mainActivity = MainActivity.this;
            ProgressBar progressBar = mainActivity.mBrowserProgress;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
            mainActivity.f2644v.setText("Loading...");
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            MainActivity mainActivity = MainActivity.this;
            MainActivity mainActivity2 = mainActivity.mActivity;
            Toast.makeText(mainActivity2, "Cannot load page  " + webResourceRequest.getUrl().toString(), 0).show();
            ProgressBar progressBar = mainActivity.mBrowserProgress;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$j */
    /* loaded from: classes.dex */
    public class C0772j extends WebChromeClient {

        /* renamed from: net.geschool.app.student.MainActivity$j$a */
        /* loaded from: classes.dex */
        public class DialogInterface$OnClickListenerC0773a implements DialogInterface.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ JsResult f2658b;

            public DialogInterface$OnClickListenerC0773a(JsResult jsResult) {
                this.f2658b = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f2658b.confirm();
            }
        }

        /* renamed from: net.geschool.app.student.MainActivity$j$b */
        /* loaded from: classes.dex */
        public class DialogInterface$OnClickListenerC0774b implements DialogInterface.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ JsResult f2659b;

            public DialogInterface$OnClickListenerC0774b(JsResult jsResult) {
                this.f2659b = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f2659b.confirm();
            }
        }

        /* renamed from: net.geschool.app.student.MainActivity$j$c */
        /* loaded from: classes.dex */
        public class DialogInterface$OnClickListenerC0775c implements DialogInterface.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ JsResult f2660b;

            public DialogInterface$OnClickListenerC0775c(JsResult jsResult) {
                this.f2660b = jsResult;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f2660b.cancel();
            }
        }

        public C0772j() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Log.d("Geschool", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            new AlertDialog.Builder(webView.getContext()).setMessage(str2).setPositiveButton(17039370, new DialogInterface$OnClickListenerC0773a(jsResult)).setCancelable(false).create().show();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            new AlertDialog.Builder(webView.getContext()).setMessage(str2).setNegativeButton("Tidak", new DialogInterface$OnClickListenerC0775c(jsResult)).setPositiveButton("Ya", new DialogInterface$OnClickListenerC0774b(jsResult)).create().show();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            boolean isCaptureEnabled = fileChooserParams.isCaptureEnabled();
            Uri uri = null;
            MainActivity mainActivity = MainActivity.this;
            if (isCaptureEnabled) {
                ValueCallback<Uri[]> valueCallback2 = mainActivity.f2642t;
                if (valueCallback2 != null) {
                    valueCallback2.onReceiveValue(null);
                }
                mainActivity.f2642t = valueCallback;
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if (intent.resolveActivity(mainActivity.mActivity.getPackageManager()) != null) {
                    try {
                        uri = FileProvider.m1242a(mainActivity, "net.geschool.app.secure.fileprovider").mo1239b(mainActivity.m234d());
                    } catch (IOException e) {
                        e.printStackTrace();
                        Toast.makeText(mainActivity, "Error opening Camera - TEMPFILE", 0).show();
                    }
                    if (uri != null) {
                        intent.putExtra("output", uri);
                        mainActivity.startActivityForResult(intent, 4000);
                        return true;
                    }
                    return true;
                }
                return true;
            }
            ValueCallback<Uri[]> valueCallback3 = mainActivity.f2642t;
            if (valueCallback3 != null) {
                valueCallback3.onReceiveValue(null);
            }
            mainActivity.f2642t = valueCallback;
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.addCategory("android.intent.category.OPENABLE");
            intent2.setType("image/*");
            intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/jpeg", "image/png"});
            mainActivity.startActivityForResult(Intent.createChooser(intent2, "Pilih Foto"), mainActivity.f2643u);
            return true;
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$k */
    /* loaded from: classes.dex */
    public class C0776k extends WebViewClient {
        public C0776k() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.mSplash.setVisibility(8);
            mainActivity.mWebView.clearHistory();
            mainActivity.getClass();
            mainActivity.checkIntegrity(UUID.randomUUID().toString());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url = webResourceRequest.getUrl();
            int compareToIgnoreCase = url.toString().compareToIgnoreCase("https://tryout.geschool.net/?mode=logout");
            MainActivity mainActivity = MainActivity.this;
            if (compareToIgnoreCase == 0) {
                mainActivity.finish();
                System.exit(0);
                return true;
            } else if (url.toString().startsWith(mainActivity.mBaseUrl)) {
                mainActivity.mSplash.setVisibility(0);
                return false;
            } else {
                mainActivity.mBrowserView.setVisibility(0);
                mainActivity.mBrowser.loadUrl(url.toString());
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return true;
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$l */
    /* loaded from: classes.dex */
    public class View$OnTouchListenerC0777l implements View.OnTouchListener {
        public View$OnTouchListenerC0777l() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z = (motionEvent.getFlags() & 1) != 0;
            if (!z) {
                z = (motionEvent.getFlags() & 2) != 0;
            }
            MainActivity mainActivity = MainActivity.this;
            if (!z) {
                mainActivity.mAlertSplash.setVisibility(8);
                return false;
            }
            mainActivity.mWebView.loadUrl("javascript: window.GS_OVERLAY=1;");
            mainActivity.mAlertSplash.setVisibility(0);
            return false;
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$m */
    /* loaded from: classes.dex */
    public class RunnableC0778m implements Runnable {

        /* renamed from: net.geschool.app.student.MainActivity$m$a */
        /* loaded from: classes.dex */
        public class RunnableC0779a implements Runnable {

            /* renamed from: net.geschool.app.student.MainActivity$m$a$a */
            /* loaded from: classes.dex */
            public class DialogInterface$OnClickListenerC0780a implements DialogInterface.OnClickListener {
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    System.exit(0);
                }
            }

            public RunnableC0779a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                new AlertDialog.Builder(MainActivity.this.mActivity).setTitle("Unsupported Device").setMessage("Rooted device detected.").setCancelable(false).setPositiveButton("ok", new DialogInterface$OnClickListenerC0780a()).show();
            }
        }

        public RunnableC0778m() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            if (new C0862a(mainActivity.mActivity).m144c()) {
                mainActivity.mActivity.runOnUiThread(new RunnableC0779a());
            }
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$n */
    /* loaded from: classes.dex */
    public class C0781n {

        /* renamed from: net.geschool.app.student.MainActivity$n$a */
        /* loaded from: classes.dex */
        public class RunnableC0782a implements Runnable {
            public RunnableC0782a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lockdown();
            }
        }

        /* renamed from: net.geschool.app.student.MainActivity$n$b */
        /* loaded from: classes.dex */
        public class RunnableC0783b implements Runnable {
            public RunnableC0783b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.unlockdown();
            }
        }

        public C0781n() {
        }

        @JavascriptInterface
        public void lock() {
            MainActivity.this.mActivity.runOnUiThread(new RunnableC0782a());
        }

        @JavascriptInterface
        public void unlock() {
            MainActivity.this.mActivity.runOnUiThread(new RunnableC0783b());
        }
    }

    /* renamed from: net.geschool.app.student.MainActivity$o */
    /* loaded from: classes.dex */
    public class C0784o extends TimerTask {

        /* renamed from: net.geschool.app.student.MainActivity$o$a */
        /* loaded from: classes.dex */
        public class RunnableC0785a implements Runnable {
            public RunnableC0785a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.mScreenPinned.setVisibility(0);
            }
        }

        /* renamed from: net.geschool.app.student.MainActivity$o$b */
        /* loaded from: classes.dex */
        public class RunnableC0786b implements Runnable {
            public RunnableC0786b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = new int[2];
                C0784o c0784o = C0784o.this;
                MainActivity.this.mWebView.getLocationOnScreen(iArr);
                if (iArr[0] == 0 && iArr[1] == 0) {
                    MainActivity.this.mScreenPinned.setVisibility(0);
                } else {
                    MainActivity.this.mScreenPinned.setVisibility(8);
                }
                MainActivity.this.mScreenPinned.setVisibility(8);
            }
        }

        public C0784o() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.mActivity.runOnUiThread(!mainActivity.mActivity.isLockMode() ? new RunnableC0785a() : new RunnableC0786b());
        }
    }

    public static boolean isFileUploadAvailable() {
        return isFileUploadAvailable(false);
    }

    public static boolean isFileUploadAvailable(boolean z) {
        return true;
    }

    public void checkIntegrity(String str) {
        C0735g c0735g;
        Context applicationContext = getApplicationContext();
        synchronized (C0736h.class) {
            if (C0736h.f2554a == null) {
                Context applicationContext2 = applicationContext.getApplicationContext();
                if (applicationContext2 != null) {
                    applicationContext = applicationContext2;
                }
                C0736h.f2554a = new C0735g(applicationContext);
            }
            c0735g = C0736h.f2554a;
        }
        InterfaceC0729a interfaceC0729a = (InterfaceC0729a) c0735g.f2527a.mo207a();
        if (str != null) {
            interfaceC0729a.mo273a(new C0733e(str)).m121a(new C0766e());
            new Thread(new RunnableC0767f()).start();
            return;
        }
        throw new NullPointerException("Null nonce");
    }

    /* renamed from: d */
    public final File m234d() {
        File createTempFile = File.createTempFile(C0844h.m187a("JPEG_", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()), "_"), ".jpg", getCacheDir());
        this.f2641s = createTempFile.getAbsolutePath();
        createTempFile.deleteOnExit();
        return createTempFile;
    }

    public void doDisabledMode() {
        this.mMultiWindowSplash.setVisibility(0);
        this.mMultiWindowSplash.setBackgroundColor(-65536);
        this.f2645w.setText("UNAUTHORIZED APPLICATION DETECTED.\n\nTerdapat aplikasi yang tidak diizikan. \n\n Hapus Aplikasi Terlebih dahulu untuk memulai");
        this.f2645w.setTextSize(20.0f);
        this.f2645w.setTextColor(-1);
        Toast.makeText(this.mActivity, "UNAUTHORIZED APPLICATION DETECTED", 0).show();
    }

    public void goBack() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f2640r > 2000) {
            this.f2640r = currentTimeMillis;
            Toast.makeText(this, "Tekan Back sekali lagi untuk keluar", 0).show();
            return;
        }
        unlockdown();
        finish();
    }

    public boolean isLockMode() {
        int lockTaskModeState;
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (Build.VERSION.SDK_INT >= 23) {
            lockTaskModeState = activityManager.getLockTaskModeState();
            if (lockTaskModeState != 0) {
                return true;
            }
        }
        return activityManager.isInLockTaskMode();
    }

    public void loadSebUrl(String str) {
        String replace = str.replace("seb://", "https://");
        Log.i("GESCHOOL", "Querying:".concat(str));
        C0760k.m235a(this).m328a(new C0758i(replace, new C0762a(), new C0763b(str)));
    }

    public void loadSebUrl2(String str) {
        String replace = str.replace("seb://", "http://");
        Log.i("GESCHOOL", "Querying:".concat(str));
        C0760k.m235a(this).m328a(new C0758i(replace, new C0764c(), new C0765d()));
    }

    public void lockdown() {
        if (this.f2638p) {
            this.mScreenPinned.setVisibility(8);
            startLockTask();
        } else if (isLockMode()) {
        } else {
            getWindow().getDecorView().setSystemUiVisibility(4102);
            getWindow().addFlags(128);
            getWindow().setFlags(8192, 8192);
            if (!this.mActivity.isLockMode()) {
                startLockTask();
            }
            this.mScreenPinned.setVisibility(8);
            if (this.f2639q == null) {
                Timer timer = new Timer();
                this.f2639q = timer;
                timer.scheduleAtFixedRate(new C0784o(), 0L, 500L);
            }
        }
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ValueCallback<Uri[]> valueCallback;
        Uri[] uriArr;
        super.onActivityResult(i, i2, intent);
        if (i == this.f2643u) {
            valueCallback = this.f2642t;
            if (i2 != -1) {
                if (valueCallback == null) {
                    return;
                }
                valueCallback.onReceiveValue(null);
            } else if (valueCallback == null) {
                return;
            } else {
                try {
                    uriArr = new Uri[]{Uri.parse(intent.getDataString())};
                } catch (Exception unused) {
                    uriArr = null;
                }
                this.f2642t.onReceiveValue(uriArr);
            }
        } else if (i != 4000) {
            return;
        } else {
            if (i2 == -1) {
                this.f2642t.onReceiveValue(new Uri[]{Uri.fromFile(new File(this.f2641s))});
            } else {
                valueCallback = this.f2642t;
                if (valueCallback == null) {
                    return;
                }
                valueCallback.onReceiveValue(null);
            }
        }
        this.f2642t = null;
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public void onBackPressed() {
        goBack();
    }

    @Override // p004b.ActivityC0263g, p017e0.ActivityC0415d, p049o.ActivityC0789c, android.app.Activity
    @SuppressLint({"ClickableViewAccessibility"})
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mActivity = this;
        setContentView(R.layout.activity_main);
        this.mMain = findViewById(R.id.frame);
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.mSplash = findViewById(R.id.splash);
        this.mAlertSplash = findViewById(R.id.alertSplash);
        this.mScreenPinned = findViewById(R.id.pinnedSplash);
        this.mMultiWindowSplash = findViewById(R.id.multiWindowSplash);
        this.mBrowserView = findViewById(R.id.browser);
        this.mBrowser = (WebView) findViewById(R.id.browser_wv);
        this.mBrowserProgress = (ProgressBar) findViewById(R.id.progressBar2);
        this.mBrowserCloseButton = (ImageView) findViewById(R.id.btnClose);
        this.f2644v = (TextView) findViewById(R.id.textView3);
        this.f2645w = (TextView) findViewById(R.id.textAlert);
        this.mBrowserCloseButton.setOnClickListener(new View$OnClickListenerC0769g());
        this.mScreenPinned.setOnClickListener(new View$OnClickListenerC0770h());
        CookieManager.getInstance().setAcceptCookie(true);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.mWebView.getSettings().setLoadWithOverviewMode(true);
        this.mWebView.getSettings().setUseWideViewPort(true);
        this.mWebView.getSettings().setBuiltInZoomControls(true);
        this.mWebView.getSettings().setDisplayZoomControls(false);
        this.mWebView.getSettings().setSavePassword(false);
        this.mWebView.getSettings().setSaveFormData(false);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setAllowContentAccess(true);
        this.mWebView.getSettings().setAllowFileAccess(true);
        this.mWebView.getSettings().setAllowFileAccessFromFileURLs(true);
        this.mWebView.getSettings().setAllowUniversalAccessFromFileURLs(true);
        WebSettings settings = this.mWebView.getSettings();
        settings.setUserAgentString(this.mWebView.getSettings().getUserAgentString() + " SEB/1.0 Geschool/1.13");
        this.mWebView.addJavascriptInterface(new C0781n(), "NATIVE");
        this.mBrowser.getSettings().setJavaScriptEnabled(true);
        this.mBrowser.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.mBrowser.getSettings().setLoadWithOverviewMode(true);
        this.mBrowser.getSettings().setUseWideViewPort(true);
        this.mBrowser.getSettings().setBuiltInZoomControls(true);
        this.mBrowser.getSettings().setDisplayZoomControls(false);
        this.mBrowser.getSettings().setSavePassword(false);
        this.mBrowser.getSettings().setSaveFormData(false);
        this.mBrowser.setWebViewClient(new C0771i());
        this.mWebView.setWebChromeClient(new C0772j());
        this.mWebView.setWebViewClient(new C0776k());
        this.mWebView.setOnTouchListener(new View$OnTouchListenerC0777l());
        int i = Build.VERSION.SDK_INT;
        if ((getApplicationInfo().flags & 2) != 0) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        if (i >= 24 && this.mActivity.isInMultiWindowMode()) {
            this.mAlertSplash.setVisibility(0);
            Toast.makeText(this.mActivity, "MULTIWINDOW DETECTED", 0).show();
        }
        PackageManager packageManager = getPackageManager();
        if (packageManager.hasSystemFeature("org.chromium.arc") || packageManager.hasSystemFeature("org.chromium.arc.device_management")) {
            this.f2638p = true;
        }
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
        Log.d("GESCHOOL/APP", "" + installedApplications.size());
        for (int i2 = 0; i2 < installedApplications.size(); i2++) {
            Log.d("GESCHOOL/APP", installedApplications.get(i2).packageName);
            if (installedApplications.get(i2).packageName.equals("com.lwi.android.flapps")) {
                doDisabledMode();
                return;
            }
            installedApplications.get(i2).packageName.equals("com.inventivestudio.floating_menu");
        }
        Intent intent = getIntent();
        String string = getResources().getString(R.string.base_url);
        if (intent != null) {
            intent.getAction();
            Uri data = intent.getData();
            if (data != null) {
                String uri = data.toString();
                if (uri.startsWith("seb://")) {
                    loadSebUrl(uri);
                    return;
                }
                string = uri.replace("https://student.geschool.net", "https://tryout.geschool.net");
            }
        }
        this.mBaseUrl = string;
        this.mWebView.loadUrl(string);
        new Thread(new RunnableC0778m()).start();
        if (Build.VERSION.SDK_INT < 24 || !this.mActivity.isInMultiWindowMode()) {
            return;
        }
        this.mAlertSplash.setVisibility(0);
        this.f2645w.setText("MULTIWINDOW DETECTED");
        Toast.makeText(this.mActivity, "MULTIWINDOW DETECTED", 0).show();
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (z) {
            this.mWebView.loadUrl("javascript: window.GS_OVERLAY=1;");
            this.mMultiWindowSplash.setVisibility(0);
            Toast.makeText(this.mActivity, "MULTIWINDOW DETECTED", 0).show();
        }
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public void onNewIntent(Intent intent) {
        if (intent != null) {
            intent.getAction();
            Uri data = intent.getData();
            if (data != null) {
                String replace = data.toString().replace("https://student.geschool.net", "https://tryout.geschool.net");
                Log.d("GESCHOOL", replace);
                if (replace.startsWith("seb://")) {
                    loadSebUrl(replace);
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        goBack();
        return true;
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.f2638p) {
            System.exit(0);
        }
    }

    @Override // p017e0.ActivityC0415d, android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    public void unlockdown() {
        if (this.mActivity.isLockMode()) {
            stopLockTask();
        }
        this.mWebView.loadUrl("about:blank");
        finish();
    }
}
