package p046m1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import net.geschool.app.secure.R;
import p002a2.C0031e;
import p008c.C0315a;
import p023f2.C0486a;
import p024g.InterfaceC0566z0;
import p027g2.C0569a;
import p027g2.C0570b;
import p034i2.ILoggerFactory;
import p034i2.InterfaceC0598a;
import p038j2.C0652b;
import p051o1.C0808l;
import p051o1.InterfaceC0797a;
import p057q1.C0844h;
import p075x1.C0935a;
import p075x1.C0937c;
import p075x1.InterfaceC0936b;
import p075x1.InterfaceC0938d;
import p076y.InterfaceC0961r;
/* renamed from: m1.h */
/* loaded from: classes.dex */
public class C0736h implements ILoggerFactory, InterfaceC0797a, InterfaceC0961r {

    /* renamed from: a */
    public static C0735g f2554a;

    /* renamed from: b */
    public static Method f2556b;

    /* renamed from: c */
    public static boolean f2558c;

    /* renamed from: d */
    public static final int[] f2560d = {R.attr.background, R.attr.backgroundSplit, R.attr.backgroundStacked, R.attr.contentInsetEnd, R.attr.contentInsetEndWithActions, R.attr.contentInsetLeft, R.attr.contentInsetRight, R.attr.contentInsetStart, R.attr.contentInsetStartWithNavigation, R.attr.customNavigationLayout, R.attr.displayOptions, R.attr.divider, R.attr.elevation, R.attr.height, R.attr.hideOnContentScroll, R.attr.homeAsUpIndicator, R.attr.homeLayout, R.attr.icon, R.attr.indeterminateProgressStyle, R.attr.itemPadding, R.attr.logo, R.attr.navigationMode, R.attr.popupTheme, R.attr.progressBarPadding, R.attr.progressBarStyle, R.attr.subtitle, R.attr.subtitleTextStyle, R.attr.title, R.attr.titleTextStyle};

    /* renamed from: e */
    public static final int[] f2562e = {16842931};

    /* renamed from: f */
    public static final int[] f2564f = {16843071};

    /* renamed from: g */
    public static final int[] f2566g = {R.attr.background, R.attr.backgroundSplit, R.attr.closeItemLayout, R.attr.height, R.attr.subtitleTextStyle, R.attr.titleTextStyle};

    /* renamed from: h */
    public static final int[] f2568h = {16842994, R.attr.buttonIconDimen, R.attr.buttonPanelSideLayout, R.attr.listItemLayout, R.attr.listLayout, R.attr.multiChoiceItemLayout, R.attr.showTitle, R.attr.singleChoiceItemLayout};

    /* renamed from: i */
    public static final int[] f2569i = {16843036, 16843156, 16843157, 16843158, 16843532, 16843533};

    /* renamed from: j */
    public static final int[] f2570j = {16842960, 16843161};

    /* renamed from: k */
    public static final int[] f2571k = {16843161, 16843849, 16843850, 16843851};

    /* renamed from: l */
    public static final int[] f2572l = {16843033, R.attr.srcCompat, R.attr.tint, R.attr.tintMode};

    /* renamed from: m */
    public static final int[] f2573m = {16843074, R.attr.tickMark, R.attr.tickMarkTint, R.attr.tickMarkTintMode};

    /* renamed from: n */
    public static final int[] f2574n = {16842804, 16843117, 16843118, 16843119, 16843120, 16843666, 16843667};

    /* renamed from: o */
    public static final int[] f2575o = {16842804, R.attr.autoSizeMaxTextSize, R.attr.autoSizeMinTextSize, R.attr.autoSizePresetSizes, R.attr.autoSizeStepGranularity, R.attr.autoSizeTextType, R.attr.firstBaselineToTopHeight, R.attr.fontFamily, R.attr.lastBaselineToBottomHeight, R.attr.lineHeight, R.attr.textAllCaps};

    /* renamed from: p */
    public static final int[] f2576p = {16842839, 16842926, R.attr.actionBarDivider, R.attr.actionBarItemBackground, R.attr.actionBarPopupTheme, R.attr.actionBarSize, R.attr.actionBarSplitStyle, R.attr.actionBarStyle, R.attr.actionBarTabBarStyle, R.attr.actionBarTabStyle, R.attr.actionBarTabTextStyle, R.attr.actionBarTheme, R.attr.actionBarWidgetTheme, R.attr.actionButtonStyle, R.attr.actionDropDownStyle, R.attr.actionMenuTextAppearance, R.attr.actionMenuTextColor, R.attr.actionModeBackground, R.attr.actionModeCloseButtonStyle, R.attr.actionModeCloseDrawable, R.attr.actionModeCopyDrawable, R.attr.actionModeCutDrawable, R.attr.actionModeFindDrawable, R.attr.actionModePasteDrawable, R.attr.actionModePopupWindowStyle, R.attr.actionModeSelectAllDrawable, R.attr.actionModeShareDrawable, R.attr.actionModeSplitBackground, R.attr.actionModeStyle, R.attr.actionModeWebSearchDrawable, R.attr.actionOverflowButtonStyle, R.attr.actionOverflowMenuStyle, R.attr.activityChooserViewStyle, R.attr.alertDialogButtonGroupStyle, R.attr.alertDialogCenterButtons, R.attr.alertDialogStyle, R.attr.alertDialogTheme, R.attr.autoCompleteTextViewStyle, R.attr.borderlessButtonStyle, R.attr.buttonBarButtonStyle, R.attr.buttonBarNegativeButtonStyle, R.attr.buttonBarNeutralButtonStyle, R.attr.buttonBarPositiveButtonStyle, R.attr.buttonBarStyle, R.attr.buttonStyle, R.attr.buttonStyleSmall, R.attr.checkboxStyle, R.attr.checkedTextViewStyle, R.attr.colorAccent, R.attr.colorBackgroundFloating, R.attr.colorButtonNormal, R.attr.colorControlActivated, R.attr.colorControlHighlight, R.attr.colorControlNormal, R.attr.colorError, R.attr.colorPrimary, R.attr.colorPrimaryDark, R.attr.colorSwitchThumbNormal, R.attr.controlBackground, R.attr.dialogCornerRadius, R.attr.dialogPreferredPadding, R.attr.dialogTheme, R.attr.dividerHorizontal, R.attr.dividerVertical, R.attr.dropDownListViewStyle, R.attr.dropdownListPreferredItemHeight, R.attr.editTextBackground, R.attr.editTextColor, R.attr.editTextStyle, R.attr.homeAsUpIndicator, R.attr.imageButtonStyle, R.attr.listChoiceBackgroundIndicator, R.attr.listDividerAlertDialog, R.attr.listMenuViewStyle, R.attr.listPopupWindowStyle, R.attr.listPreferredItemHeight, R.attr.listPreferredItemHeightLarge, R.attr.listPreferredItemHeightSmall, R.attr.listPreferredItemPaddingLeft, R.attr.listPreferredItemPaddingRight, R.attr.panelBackground, R.attr.panelMenuListTheme, R.attr.panelMenuListWidth, R.attr.popupMenuStyle, R.attr.popupWindowStyle, R.attr.radioButtonStyle, R.attr.ratingBarStyle, R.attr.ratingBarStyleIndicator, R.attr.ratingBarStyleSmall, R.attr.searchViewStyle, R.attr.seekBarStyle, R.attr.selectableItemBackground, R.attr.selectableItemBackgroundBorderless, R.attr.spinnerDropDownItemStyle, R.attr.spinnerStyle, R.attr.switchStyle, R.attr.textAppearanceLargePopupMenu, R.attr.textAppearanceListItem, R.attr.textAppearanceListItemSecondary, R.attr.textAppearanceListItemSmall, R.attr.textAppearancePopupMenuHeader, R.attr.textAppearanceSearchResultSubtitle, R.attr.textAppearanceSearchResultTitle, R.attr.textAppearanceSmallPopupMenu, R.attr.textColorAlertDialogListItem, R.attr.textColorSearchUrl, R.attr.toolbarNavigationButtonStyle, R.attr.toolbarStyle, R.attr.tooltipForegroundColor, R.attr.tooltipFrameBackground, R.attr.viewInflaterClass, R.attr.windowActionBar, R.attr.windowActionBarOverlay, R.attr.windowActionModeOverlay, R.attr.windowFixedHeightMajor, R.attr.windowFixedHeightMinor, R.attr.windowFixedWidthMajor, R.attr.windowFixedWidthMinor, R.attr.windowMinWidthMajor, R.attr.windowMinWidthMinor, R.attr.windowNoTitle};

    /* renamed from: q */
    public static final int[] f2577q = {R.attr.allowStacking};

    /* renamed from: r */
    public static final int[] f2578r = {16843015, R.attr.buttonTint, R.attr.buttonTintMode};

    /* renamed from: s */
    public static final int[] f2579s = {16842927, 16842948, 16843046, 16843047, 16843048, R.attr.divider, R.attr.dividerPadding, R.attr.measureWithLargestChild, R.attr.showDividers};

    /* renamed from: t */
    public static final int[] f2580t = {16842931, 16842996, 16842997, 16843137};

    /* renamed from: u */
    public static final int[] f2581u = {16843436, 16843437};

    /* renamed from: v */
    public static final int[] f2582v = {16842766, 16842960, 16843156, 16843230, 16843231, 16843232};

    /* renamed from: w */
    public static final int[] f2583w = {16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, R.attr.actionLayout, R.attr.actionProviderClass, R.attr.actionViewClass, R.attr.alphabeticModifiers, R.attr.contentDescription, R.attr.iconTint, R.attr.iconTintMode, R.attr.numericModifiers, R.attr.showAsAction, R.attr.tooltipText};

    /* renamed from: x */
    public static final int[] f2584x = {16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, R.attr.preserveIconSpacing, R.attr.subMenuArrow};

    /* renamed from: y */
    public static final int[] f2585y = {16843126, 16843465, R.attr.overlapAnchor};

    /* renamed from: z */
    public static final int[] f2586z = {R.attr.paddingBottomNoButtons, R.attr.paddingTopNoTitle};

    /* renamed from: A */
    public static final int[] f2528A = {16842970, 16843039, 16843296, 16843364, R.attr.closeIcon, R.attr.commitIcon, R.attr.defaultQueryHint, R.attr.goIcon, R.attr.iconifiedByDefault, R.attr.layout, R.attr.queryBackground, R.attr.queryHint, R.attr.searchHintIcon, R.attr.searchIcon, R.attr.submitBackground, R.attr.suggestionRowLayout, R.attr.voiceIcon};

    /* renamed from: B */
    public static final int[] f2529B = {16842930, 16843126, 16843131, 16843362, R.attr.popupTheme};

    /* renamed from: C */
    public static final int[] f2530C = {16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, R.attr.fontFamily, R.attr.textAllCaps};

    /* renamed from: D */
    public static final int[] f2531D = {16842927, 16843072, R.attr.buttonGravity, R.attr.collapseContentDescription, R.attr.collapseIcon, R.attr.contentInsetEnd, R.attr.contentInsetEndWithActions, R.attr.contentInsetLeft, R.attr.contentInsetRight, R.attr.contentInsetStart, R.attr.contentInsetStartWithNavigation, R.attr.logo, R.attr.logoDescription, R.attr.maxButtonHeight, R.attr.navigationContentDescription, R.attr.navigationIcon, R.attr.popupTheme, R.attr.subtitle, R.attr.subtitleTextAppearance, R.attr.subtitleTextColor, R.attr.title, R.attr.titleMargin, R.attr.titleMarginBottom, R.attr.titleMarginEnd, R.attr.titleMarginStart, R.attr.titleMarginTop, R.attr.titleMargins, R.attr.titleTextAppearance, R.attr.titleTextColor};

    /* renamed from: E */
    public static final int[] f2532E = {16842752, 16842970, R.attr.paddingEnd, R.attr.paddingStart, R.attr.theme};

    /* renamed from: F */
    public static final int[] f2533F = {16842964, R.attr.backgroundTint, R.attr.backgroundTintMode};

    /* renamed from: G */
    public static final int[] f2534G = {16842960, 16842994, 16842995};

    /* renamed from: H */
    public static final int[] f2535H = {R.attr.colorPrimary};

    /* renamed from: I */
    public static final int[] f2536I = {R.attr.colorSecondary};

    /* renamed from: J */
    public static final byte[] f2537J = new byte[0];

    /* renamed from: K */
    public static final int[] f2538K = {16842948, 16842993, R.attr.fastScrollEnabled, R.attr.fastScrollHorizontalThumbDrawable, R.attr.fastScrollHorizontalTrackDrawable, R.attr.fastScrollVerticalThumbDrawable, R.attr.fastScrollVerticalTrackDrawable, R.attr.layoutManager, R.attr.reverseLayout, R.attr.spanCount, R.attr.stackFromEnd};

    /* renamed from: L */
    public static final int[] f2539L = new int[0];

    /* renamed from: M */
    public static final Object[] f2540M = new Object[0];

    /* renamed from: N */
    public static final int[] f2541N = {R.attr.keylines, R.attr.statusBarBackground};

    /* renamed from: O */
    public static final int[] f2542O = {16842931, R.attr.layout_anchor, R.attr.layout_anchorGravity, R.attr.layout_behavior, R.attr.layout_dodgeInsetEdges, R.attr.layout_insetEdge, R.attr.layout_keyline};

    /* renamed from: P */
    public static final int[] f2543P = {16843173, 16843551, R.attr.alpha};

    /* renamed from: Q */
    public static final int[] f2544Q = {R.attr.fontProviderAuthority, R.attr.fontProviderCerts, R.attr.fontProviderFetchStrategy, R.attr.fontProviderFetchTimeout, R.attr.fontProviderPackage, R.attr.fontProviderQuery};

    /* renamed from: R */
    public static final int[] f2545R = {16844082, 16844083, 16844095, 16844143, 16844144, R.attr.font, R.attr.fontStyle, R.attr.fontVariationSettings, R.attr.fontWeight, R.attr.ttcIndex};

    /* renamed from: S */
    public static final int[] f2546S = {16843165, 16843166, 16843169, 16843170, 16843171, 16843172, 16843265, 16843275, 16844048, 16844049, 16844050, 16844051};

    /* renamed from: T */
    public static final int[] f2547T = {16843173, 16844052};

    /* renamed from: U */
    public static final String[] f2548U = {"com.noshufou.android.su", "com.noshufou.android.su.elite", "eu.chainfire.supersu", "com.koushikdutta.superuser", "com.thirdparty.superuser", "com.yellowes.su", "com.topjohnwu.magisk", "com.kingroot.kinguser", "com.kingo.root", "com.smedialink.oneclickroot", "com.zhiqupk.root.global", "com.alephzain.framaroot"};

    /* renamed from: V */
    public static final String[] f2549V = {"com.koushikdutta.rommanager", "com.koushikdutta.rommanager.license", "com.dimonvideo.luckypatcher", "com.chelpus.lackypatch", "com.ramdroid.appquarantine", "com.ramdroid.appquarantinepro", "com.android.vending.billing.InAppBillingService.COIN", "com.android.vending.billing.InAppBillingService.LUCK", "com.chelpus.luckypatcher", "com.blackmartalpha", "org.blackmart.market", "com.allinone.free", "com.repodroid.app", "org.creeplays.hack", "com.baseappfull.fwd", "com.zmapp", "com.dv.marketmod.installer", "org.mobilism.android", "com.android.wp.net.log", "com.android.camera.update", "cc.madkite.freedom", "com.solohsu.android.edxp.manager", "org.meowcat.edxposed.manager", "com.xmodgame", "com.cih.game_cih", "com.charles.lpoqasert", "catch_.me_.if_.you_.can_"};

    /* renamed from: W */
    public static final String[] f2550W = {"/data/local/", "/data/local/bin/", "/data/local/xbin/", "/sbin/", "/su/bin/", "/system/bin/", "/system/bin/.ext/", "/system/bin/failsafe/", "/system/sd/xbin/", "/system/usr/we-need-root/", "/system/xbin/", "/cache/", "/data/", "/dev/"};

    /* renamed from: X */
    public static final String[] f2551X = {"/system", "/system/bin", "/system/sbin", "/system/xbin", "/vendor/bin", "/sbin", "/etc"};

    /* renamed from: Y */
    public static final int[] f2552Y = {R.attr.layout_scrollFlags, R.attr.layout_scrollInterpolator};

    /* renamed from: Z */
    public static final int[] f2553Z = {R.attr.behavior_fitToContents, R.attr.behavior_hideable, R.attr.behavior_peekHeight, R.attr.behavior_skipCollapsed};

    /* renamed from: a0 */
    public static final int[] f2555a0 = {R.attr.behavior_autoHide};

    /* renamed from: b0 */
    public static final int[] f2557b0 = {16843017, 16843264, R.attr.foregroundInsidePadding};

    /* renamed from: c0 */
    public static final int[] f2559c0 = {16843191, 16843192, 16843193, 16843194, R.attr.backgroundTint, R.attr.backgroundTintMode, R.attr.cornerRadius, R.attr.icon, R.attr.iconGravity, R.attr.iconPadding, R.attr.iconSize, R.attr.iconTint, R.attr.iconTintMode, R.attr.rippleColor, R.attr.strokeColor, R.attr.strokeWidth};

    /* renamed from: d0 */
    public static final int[] f2561d0 = {R.attr.behavior_overlapTop};

    /* renamed from: e0 */
    public static final int[] f2563e0 = {16843039, R.attr.elevation, R.attr.maxActionInlineWidth};

    /* renamed from: f0 */
    public static final int[] f2565f0 = {16842906, 16843088, R.attr.boxBackgroundColor, R.attr.boxBackgroundMode, R.attr.boxCollapsedPaddingTop, R.attr.boxCornerRadiusBottomEnd, R.attr.boxCornerRadiusBottomStart, R.attr.boxCornerRadiusTopEnd, R.attr.boxCornerRadiusTopStart, R.attr.boxStrokeColor, R.attr.boxStrokeWidth, R.attr.counterEnabled, R.attr.counterMaxLength, R.attr.counterOverflowTextAppearance, R.attr.counterTextAppearance, R.attr.errorEnabled, R.attr.errorTextAppearance, R.attr.helperText, R.attr.helperTextEnabled, R.attr.helperTextTextAppearance, R.attr.hintAnimationEnabled, R.attr.hintEnabled, R.attr.hintTextAppearance, R.attr.passwordToggleContentDescription, R.attr.passwordToggleDrawable, R.attr.passwordToggleEnabled, R.attr.passwordToggleTint, R.attr.passwordToggleTintMode};

    /* renamed from: g0 */
    public static final int[] f2567g0 = {16842804, R.attr.enforceMaterialTheme, R.attr.enforceTextAppearance};

    public /* synthetic */ C0736h() {
    }

    /* renamed from: C */
    public static void m310C(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof InterfaceC0566z0) {
                editorInfo.hintText = ((InterfaceC0566z0) parent).m524a();
                return;
            }
        }
    }

    /* renamed from: D */
    public static void m309D(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            j = Math.max(j, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j);
        arrayList.add(0, ofInt);
        animatorSet.playTogether(arrayList);
    }

    /* renamed from: E */
    public static final void m308E(String str) {
        PrintStream printStream = System.err;
        printStream.println("SLF4J: " + str);
    }

    /* renamed from: F */
    public static final void m307F(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    /* renamed from: G */
    public static boolean m306G(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = f2537J;
        if (bArr == null) {
            bArr = bArr3;
        }
        if (bArr2 == null) {
            bArr2 = bArr3;
        }
        int min = Math.min(bArr.length, bArr2.length);
        int max = Math.max(bArr.length, bArr2.length);
        int i = 0;
        for (int i2 = 0; i2 < min; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0 && min == max;
    }

    /* renamed from: I */
    public static byte[] m304I(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    /* renamed from: J */
    public static byte[] m303J(BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            byte[] byteArray = bigInteger.toByteArray();
            return (bigInteger.bitLength() % 8 == 0 && byteArray[0] == 0 && byteArray.length > 1) ? m304I(byteArray, 1, byteArray.length - 1) : byteArray;
        }
        throw new IllegalArgumentException("Cannot convert negative values to an unsigned magnitude byte array: " + bigInteger);
    }

    /* renamed from: K */
    public static String m302K(Throwable th) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            sb.append(th);
            if (th.getCause() == null) {
                return sb.toString();
            }
            th = th.getCause();
            sb.append("; caused by: ");
        }
    }

    /* renamed from: L */
    public static void m301L(String str) {
        Log.v("RootBeer", m274z() + String.valueOf(str));
    }

    /* renamed from: M */
    public static void m300M(Key key, String str, int i) {
        int length;
        if (key != null) {
            String algorithm = key.getAlgorithm();
            if ("AES".equals(algorithm)) {
                if (key.getEncoded() != null && (length = key.getEncoded().length) != i) {
                    throw new C0569a("Invalid key for JWE " + str + ", expected a " + (i * 8) + " bit key but a " + (length * 8) + " bit key was provided.");
                }
                return;
            }
            throw new C0569a("Invalid key for JWE " + str + ", expected an AES key but an " + algorithm + " key was provided.");
        }
        throw new C0569a("The key must not be null.");
    }

    /* renamed from: N */
    public static void m299N(Object obj, StringWriter stringWriter) {
        if (obj == null) {
            stringWriter.write("null");
        } else if (obj instanceof String) {
            stringWriter.write(34);
            stringWriter.write(m281s((String) obj));
            stringWriter.write(34);
        } else if (obj instanceof Double) {
            Double d = (Double) obj;
            if (!d.isInfinite() && !d.isNaN()) {
                stringWriter.write(obj.toString());
            } else {
                stringWriter.write("null");
            }
        } else if (obj instanceof Float) {
            Float f = (Float) obj;
            if (!f.isInfinite() && !f.isNaN()) {
                stringWriter.write(obj.toString());
            } else {
                stringWriter.write("null");
            }
        } else if (obj instanceof Number) {
            stringWriter.write(obj.toString());
        } else if (obj instanceof Boolean) {
            stringWriter.write(obj.toString());
        } else if (obj instanceof InterfaceC0938d) {
            ((InterfaceC0938d) obj).m70b(stringWriter);
        } else if (obj instanceof InterfaceC0936b) {
            stringWriter.write(((InterfaceC0936b) obj).m72a());
        } else if (obj instanceof Map) {
            C0937c.m71c((Map) obj, stringWriter);
        } else if (obj instanceof Collection) {
            C0935a.m73c((Collection) obj, stringWriter);
        } else {
            int i = 1;
            String str = "]";
            String str2 = "[]";
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int i2 = C0935a.f2916a;
                if (bArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf((int) bArr[0]));
                    while (i < bArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf((int) bArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                int i3 = C0935a.f2916a;
                if (sArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf((int) sArr[0]));
                    while (i < sArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf((int) sArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int i4 = C0935a.f2916a;
                if (iArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf(iArr[0]));
                    while (i < iArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf(iArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int i5 = C0935a.f2916a;
                if (jArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf(jArr[0]));
                    while (i < jArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf(jArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof float[]) {
                float[] fArr = (float[]) obj;
                int i6 = C0935a.f2916a;
                if (fArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf(fArr[0]));
                    while (i < fArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf(fArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int i7 = C0935a.f2916a;
                if (dArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf(dArr[0]));
                    while (i < dArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf(dArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int i8 = C0935a.f2916a;
                if (zArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    stringWriter.write(String.valueOf(zArr[0]));
                    while (i < zArr.length) {
                        stringWriter.write(",");
                        stringWriter.write(String.valueOf(zArr[i]));
                        i++;
                    }
                }
                stringWriter.write(str);
            } else if (obj instanceof char[]) {
                char[] cArr = (char[]) obj;
                int i9 = C0935a.f2916a;
                if (cArr.length != 0) {
                    stringWriter.write("[\"");
                    stringWriter.write(m281s(String.valueOf(cArr[0])));
                    while (i < cArr.length) {
                        stringWriter.write("\",\"");
                        stringWriter.write(m281s(String.valueOf(cArr[i])));
                        i++;
                    }
                    str2 = "\"]";
                }
                stringWriter.write(str2);
            } else if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                int i10 = C0935a.f2916a;
                if (objArr.length == 0) {
                    str = "[]";
                } else {
                    stringWriter.write("[");
                    m299N(objArr[0], stringWriter);
                    while (i < objArr.length) {
                        stringWriter.write(",");
                        m299N(objArr[i], stringWriter);
                        i++;
                    }
                }
                stringWriter.write(str);
            } else {
                m299N(obj.toString(), stringWriter);
            }
        }
    }

    /* renamed from: O */
    public static void m298O(Parcel parcel, int i, Parcelable parcelable, int i2) {
        if (parcelable == null) {
            return;
        }
        int m297P = m297P(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m296Q(parcel, m297P);
    }

    /* renamed from: P */
    public static int m297P(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: Q */
    public static void m296Q(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: f */
    public static int m294f(int i, int i2, int[] iArr) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    /* renamed from: g */
    public static int m293g(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = (jArr[i4] > j ? 1 : (jArr[i4] == j ? 0 : -1));
            if (i5 < 0) {
                i3 = i4 + 1;
            } else if (i5 <= 0) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    /* renamed from: h */
    public static void m292h(Object obj, StringBuilder sb) {
        String hexString;
        int lastIndexOf;
        if (obj == null) {
            hexString = "null";
        } else {
            String simpleName = obj.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(lastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            hexString = Integer.toHexString(System.identityHashCode(obj));
        }
        sb.append(hexString);
    }

    /* renamed from: i */
    public static Key m291i(Key key, Class cls) {
        if (key != null) {
            try {
                return (Key) cls.cast(key);
            } catch (ClassCastException e) {
                throw new C0569a("Invalid key " + e);
            }
        }
        throw new C0569a("The key must not be null.");
    }

    /* renamed from: j */
    public static void m290j(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2567g0, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            m286n(context, f2536I, "Theme.MaterialComponents");
        }
        m286n(context, f2535H, "Theme.AppCompat");
    }

    /* renamed from: k */
    public static void m289k(RSAKey rSAKey) {
        if (rSAKey == null) {
            throw new C0569a("The RSA key must not be null.");
        }
        int bitLength = rSAKey.getModulus().bitLength();
        if (bitLength >= 2048) {
            return;
        }
        throw new C0569a("An RSA key of size 2048 bits or larger MUST be used with the all JOSE RSA algorithms (given key was only " + bitLength + " bits).");
    }

    /* renamed from: l */
    public static int m288l(Context context, String str) {
        String str2;
        int i;
        Object systemService;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            str2 = AppOpsManager.permissionToOp(str);
        } else {
            str2 = null;
        }
        if (str2 != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            if (i2 >= 23) {
                systemService = context.getSystemService(AppOpsManager.class);
                i = ((AppOpsManager) systemService).noteProxyOpNoThrow(str2, packageName);
            } else {
                i = 1;
            }
            if (i != 0) {
                return -2;
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (r0.getResourceId(0, -1) != (-1)) goto L15;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m287m(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2567g0, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(2, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2.length != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            for (int i3 : iArr2) {
                if (obtainStyledAttributes2.getResourceId(i3, -1) == -1) {
                    obtainStyledAttributes2.recycle();
                    break;
                }
            }
            obtainStyledAttributes2.recycle();
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (z) {
            return;
        }
        throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
    }

    /* renamed from: n */
    public static void m286n(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean hasValue = obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        if (hasValue) {
            return;
        }
        throw new IllegalArgumentException(C0844h.m187a("The style on this component requires your app theme to be ", str, " (or a descendant)."));
    }

    /* renamed from: o */
    public static int m285o(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: p */
    public static byte[] m284p(byte[]... bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            for (byte[] bArr2 : bArr) {
                byteArrayOutputStream.write(bArr2);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new IllegalStateException("IOEx from ByteArrayOutputStream?!", e);
        }
    }

    /* renamed from: r */
    public static void m282r(Serializable serializable) {
        Log.e("RootBeer", m274z() + String.valueOf(serializable));
        Log.e("QLog", m274z() + String.valueOf(serializable));
    }

    /* renamed from: s */
    public static String m281s(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\f') {
                if (charAt != '\r') {
                    if (charAt != '\"') {
                        if (charAt != '\\') {
                            switch (charAt) {
                                case '\b':
                                    str2 = "\\b";
                                    break;
                                case '\t':
                                    str2 = "\\t";
                                    break;
                                case '\n':
                                    str2 = "\\n";
                                    break;
                                default:
                                    if ((charAt >= 0 && charAt <= 31) || ((charAt >= 127 && charAt <= 159) || (charAt >= 8192 && charAt <= 8447))) {
                                        String hexString = Integer.toHexString(charAt);
                                        sb.append("\\u");
                                        for (int i2 = 0; i2 < 4 - hexString.length(); i2++) {
                                            sb.append('0');
                                        }
                                        str2 = hexString.toUpperCase();
                                        break;
                                    } else {
                                        sb.append(charAt);
                                        continue;
                                    }
                                    break;
                            }
                        } else {
                            str2 = "\\\\";
                        }
                    } else {
                        str2 = "\\\"";
                    }
                } else {
                    str2 = "\\r";
                }
            } else {
                str2 = "\\f";
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    /* renamed from: t */
    public static byte[] m280t(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        return allocate.array();
    }

    /* renamed from: u */
    public static Cipher m279u(String str) {
        try {
            return Cipher.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            e = e;
            throw new C0570b(e.toString(), e);
        } catch (NoSuchProviderException e2) {
            throw new C0570b(C0844h.m187a("Unable to get a Cipher implementation of ", str, " using provider null"), e2);
        } catch (NoSuchPaddingException e3) {
            e = e3;
            throw new C0570b(e.toString(), e);
        }
    }

    /* renamed from: v */
    public static ColorStateList m278v(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList m995b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m995b = C0315a.m995b(context, resourceId)) == null) ? typedArray.getColorStateList(i) : m995b;
    }

    /* renamed from: x */
    public static Mac m276x(String str, Key key) {
        try {
            Mac mac = Mac.getInstance(str);
            try {
                mac.init(key);
                return mac;
            } catch (InvalidKeyException e) {
                throw new C0569a("Key is not valid for " + mac.getAlgorithm(), e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new C0570b("Unable to get a MAC implementation of algorithm name: " + str, e2);
        } catch (NoSuchProviderException e3) {
            throw new C0570b(C0844h.m187a("Unable to get a MAC implementation of algorithm name: ", str, " using provider null"), e3);
        }
    }

    /* renamed from: y */
    public static String[] m275y() {
        Object[] array;
        ArrayList arrayList = new ArrayList(Arrays.asList(f2550W));
        String str = System.getenv("PATH");
        if (str == null || "".equals(str)) {
            array = arrayList.toArray(new String[0]);
        } else {
            String[] split = str.split(":");
            int length = split.length;
            for (int i = 0; i < length; i++) {
                String str2 = split[i];
                if (!str2.endsWith("/")) {
                    str2 = str2.concat("/");
                }
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
            array = arrayList.toArray(new String[0]);
        }
        return (String[]) array;
    }

    /* renamed from: z */
    public static String m274z() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String methodName = stackTrace[2].getMethodName();
        String className = stackTrace[2].getClassName();
        int lineNumber = stackTrace[2].getLineNumber();
        String substring = className.substring(className.lastIndexOf(46) + 1);
        return substring + ": " + methodName + "() [" + lineNumber + "] - ";
    }

    /* renamed from: A */
    public float mo312A(View view) {
        Float f = (Float) view.getTag(R.id.save_non_transition_alpha);
        float alpha = view.getAlpha();
        return f != null ? alpha / f.floatValue() : alpha;
    }

    /* renamed from: B */
    public boolean m311B(InterfaceC0598a interfaceC0598a, int i, String str) {
        if (!C0031e.m1370a(i, "AES/GCM/NoPadding")) {
            return false;
        }
        byte[] bArr = {112, 108, 97, 105, 110, 116, 101, 120, 116};
        byte[] bArr2 = {97, 97, 100};
        try {
            Cipher m277w = m277w(new C0486a(0, new byte[i]), new byte[12], 1);
            m277w.updateAAD(bArr2);
            try {
                byte[] doFinal = m277w.doFinal(bArr);
                int length = doFinal.length - 16;
                m304I(doFinal, 0, length);
                m304I(doFinal, length, 16);
                return true;
            } catch (BadPaddingException e) {
                e = e;
                throw new C0570b(e.toString(), e);
            } catch (IllegalBlockSizeException e2) {
                e = e2;
                throw new C0570b(e.toString(), e);
            }
        } catch (Throwable th) {
            interfaceC0598a.mo435e(str, m302K(th), "{} is not available ({}).");
            return false;
        }
    }

    /* renamed from: H */
    public void mo305H(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }

    @Override // p051o1.InterfaceC0799c
    /* renamed from: a */
    public /* synthetic */ Object mo207a() {
        return new C0808l("IntegrityService");
    }

    @Override // p034i2.ILoggerFactory
    /* renamed from: c */
    public InterfaceC0598a mo295c(String str) {
        return C0652b.f2259a;
    }

    /* renamed from: d */
    public void mo18d(View view) {
    }

    /* renamed from: e */
    public void mo17e() {
    }

    /* renamed from: q */
    public byte[] m283q(Key key, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        Cipher m277w = m277w(key, bArr, 2);
        if (bArr4 != null && bArr4.length > 0) {
            m277w.updateAAD(bArr4);
        }
        try {
            return m277w.doFinal(m284p(bArr2, bArr3));
        } catch (BadPaddingException | IllegalBlockSizeException e) {
            throw new C0570b(e.toString(), e);
        }
    }

    /* renamed from: w */
    public Cipher m277w(Key key, byte[] bArr, int i) {
        Cipher m279u = m279u("AES/GCM/NoPadding");
        try {
            m279u.init(i, key, new GCMParameterSpec(128, bArr));
            return m279u;
        } catch (InvalidAlgorithmParameterException e) {
            throw new C0570b(e.toString(), e);
        } catch (InvalidKeyException e2) {
            throw new C0570b("Invalid key for AES/GCM/NoPadding", e2);
        }
    }

    public /* synthetic */ C0736h(SwipeDismissBehavior swipeDismissBehavior) {
        swipeDismissBehavior.getClass();
        swipeDismissBehavior.f1194e = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        swipeDismissBehavior.f1195f = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        swipeDismissBehavior.f1192c = 0;
    }
}
