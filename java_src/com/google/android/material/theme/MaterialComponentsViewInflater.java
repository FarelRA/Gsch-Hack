package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import androidx.appcompat.app.AppCompatViewInflater;
import p001a1.C0012a;
import p024g.C0501e;
@Keep
/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    @Override // androidx.appcompat.app.AppCompatViewInflater
    public C0501e createButton(Context context, AttributeSet attributeSet) {
        return new C0012a(context, attributeSet);
    }
}
