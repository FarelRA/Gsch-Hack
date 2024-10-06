.class public final Lg/v;
.super Landroid/widget/Spinner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/v$b;,
        Lg/v$a;
    }
.end annotation


# static fields
.field public static final j:[I


# instance fields
.field public final b:Lg/d;

.field public final c:Landroid/content/Context;

.field public final d:Lg/u;

.field public e:Landroid/widget/SpinnerAdapter;

.field public final f:Z

.field public final g:Lg/v$b;

.field public h:I

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Lg/v;->j:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/v;->i:Landroid/graphics/Rect;

    .line 10
    .line 11
    sget-object v0, Lm1/h;->B:[I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lg/d;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Lg/d;-><init>(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lg/v;->b:Lg/d;

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v5, Le/c;

    .line 34
    .line 35
    invoke-direct {v5, p1, v3}, Le/c;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    iput-object v5, p0, Lg/v;->c:Landroid/content/Context;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v5, 0x17

    .line 44
    .line 45
    if-ge v3, v5, :cond_1

    .line 46
    .line 47
    move-object v3, p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v4

    .line 50
    :goto_0
    iput-object v3, p0, Lg/v;->c:Landroid/content/Context;

    .line 51
    .line 52
    :goto_1
    iget-object v3, p0, Lg/v;->c:Landroid/content/Context;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    const/4 v3, -0x1

    .line 58
    :try_start_0
    sget-object v6, Lg/v;->j:[I

    .line 59
    .line 60
    invoke-virtual {p1, p2, v6, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 61
    .line 62
    .line 63
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_3

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    move-object v4, v6

    .line 77
    goto :goto_4

    .line 78
    :catch_0
    move-exception v7

    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :catch_1
    move-exception v6

    .line 83
    move-object v7, v6

    .line 84
    move-object v6, v4

    .line 85
    :goto_2
    :try_start_2
    const-string v8, "AppCompatSpinner"

    .line 86
    .line 87
    const-string v9, "Could not read android:spinnerMode"

    .line 88
    .line 89
    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    :cond_2
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    :cond_3
    if-ne v3, v5, :cond_5

    .line 98
    .line 99
    new-instance v3, Lg/v$b;

    .line 100
    .line 101
    iget-object v6, p0, Lg/v;->c:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v3, p0, v6, p2, p3}, Lg/v$b;-><init>(Lg/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    .line 105
    .line 106
    iget-object v6, p0, Lg/v;->c:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v6, p2, v0, p3}, Lg/r0;->l(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lg/r0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v6, v0, Lg/r0;->b:Landroid/content/res/TypedArray;

    .line 113
    .line 114
    const/4 v7, 0x3

    .line 115
    const/4 v8, -0x2

    .line 116
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    iput v6, p0, Lg/v;->h:I

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Lg/r0;->e(I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    iget-object v7, v3, Lg/g0;->z:Lg/o;

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    const/4 v6, 0x2

    .line 132
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iput-object v6, v3, Lg/v$b;->D:Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-virtual {v0}, Lg/r0;->m()V

    .line 139
    .line 140
    .line 141
    iput-object v3, p0, Lg/v;->g:Lg/v$b;

    .line 142
    .line 143
    new-instance v0, Lg/u;

    .line 144
    .line 145
    invoke-direct {v0, p0, p0, v3}, Lg/u;-><init>(Lg/v;Landroid/view/View;Lg/v$b;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lg/v;->d:Lg/u;

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :goto_4
    if-eqz v4, :cond_4

    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    .line 155
    .line 156
    :cond_4
    throw p1

    .line 157
    :cond_5
    :goto_5
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 164
    .line 165
    const v3, 0x1090008

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const p1, 0x7f0b003b

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lg/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .line 182
    .line 183
    iput-boolean v5, p0, Lg/v;->f:Z

    .line 184
    .line 185
    iget-object p1, p0, Lg/v;->e:Landroid/widget/SpinnerAdapter;

    .line 186
    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lg/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    .line 191
    .line 192
    iput-object v4, p0, Lg/v;->e:Landroid/widget/SpinnerAdapter;

    .line 193
    .line 194
    :cond_7
    iget-object p1, p0, Lg/v;->b:Lg/d;

    .line 195
    .line 196
    invoke-virtual {p1, p2, p3}, Lg/d;->d(Landroid/util/AttributeSet;I)V

    .line 197
    .line 198
    .line 199
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {p1, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lg/v;->i:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v3, p2

    :cond_4
    return v3
.end method

.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/d;->a()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lg/g0;->g:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lg/g0;->j:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, v0, Lg/g0;->h:I

    .line 12
    .line 13
    :goto_0
    return v0

    .line 14
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_0

    iget v0, p0, Lg/v;->h:I

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lg/g0;->z:Lg/o;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/v;->c:Landroid/content/Context;

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lg/v$b;->D:Ljava/lang/CharSequence;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/d;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g0;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/g0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Lg/v;->g:Lg/v$b;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lg/v;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lg/v;->d:Lg/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lg/e0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final performClick()Z
    .locals 2

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/g0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/v$b;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lg/v;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    iget-boolean v0, p0, Lg/v;->f:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lg/v;->e:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/v;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_1
    new-instance v2, Lg/v$a;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lg/v$a;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v0, v2}, Lg/v$b;->e(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lg/v;->b:Lg/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/d;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/d;->f(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lg/g0;->g:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lg/g0;->h:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lg/g0;->j:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    if-eqz v0, :cond_0

    iput p1, p0, Lg/v;->h:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lg/g0;->z:Lg/o;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lg/v;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/v;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/v;->g:Lg/v$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lg/v$b;->D:Ljava/lang/CharSequence;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/d;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lg/v;->b:Lg/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
