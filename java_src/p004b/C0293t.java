package p004b;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;
import p046m1.C0736h;
/* renamed from: b.t */
/* loaded from: classes.dex */
public final class C0293t {

    /* renamed from: d */
    public static C0293t f1073d;

    /* renamed from: a */
    public final Context f1074a;

    /* renamed from: b */
    public final LocationManager f1075b;

    /* renamed from: c */
    public final C0294a f1076c = new C0294a();

    /* renamed from: b.t$a */
    /* loaded from: classes.dex */
    public static class C0294a {

        /* renamed from: a */
        public boolean f1077a;

        /* renamed from: b */
        public long f1078b;
    }

    public C0293t(Context context, LocationManager locationManager) {
        this.f1074a = context;
        this.f1075b = locationManager;
    }

    /* renamed from: a */
    public final boolean m1012a() {
        boolean z;
        Location location;
        long j;
        long j2;
        Location location2;
        C0294a c0294a = this.f1076c;
        boolean z2 = false;
        if (c0294a.f1078b > System.currentTimeMillis()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return c0294a.f1077a;
        }
        Context context = this.f1074a;
        int m288l = C0736h.m288l(context, "android.permission.ACCESS_COARSE_LOCATION");
        LocationManager locationManager = this.f1075b;
        Location location3 = null;
        if (m288l == 0) {
            try {
            } catch (Exception e) {
                Log.d("TwilightManager", "Failed to get last known location", e);
            }
            if (locationManager.isProviderEnabled("network")) {
                location2 = locationManager.getLastKnownLocation("network");
                location = location2;
            }
            location2 = null;
            location = location2;
        } else {
            location = null;
        }
        if (C0736h.m288l(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            try {
                if (locationManager.isProviderEnabled("gps")) {
                    location3 = locationManager.getLastKnownLocation("gps");
                }
            } catch (Exception e2) {
                Log.d("TwilightManager", "Failed to get last known location", e2);
            }
        }
        if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
            location = location3;
        }
        if (location != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (C0292s.f1069d == null) {
                C0292s.f1069d = new C0292s();
            }
            C0292s c0292s = C0292s.f1069d;
            c0292s.m1013a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
            c0292s.m1013a(currentTimeMillis, location.getLatitude(), location.getLongitude());
            if (c0292s.f1072c == 1) {
                z2 = true;
            }
            long j3 = c0292s.f1071b;
            long j4 = c0292s.f1070a;
            c0292s.m1013a(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
            long j5 = c0292s.f1071b;
            if (j3 != -1 && j4 != -1) {
                if (currentTimeMillis > j4) {
                    j2 = j5 + 0;
                } else if (currentTimeMillis > j3) {
                    j2 = j4 + 0;
                } else {
                    j2 = j3 + 0;
                }
                j = j2 + 60000;
            } else {
                j = 43200000 + currentTimeMillis;
            }
            c0294a.f1077a = z2;
            c0294a.f1078b = j;
            return z2;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        if (i >= 6 && i < 22) {
            return false;
        }
        return true;
    }
}
