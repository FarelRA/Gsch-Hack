.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    sget-object v0, Lm1/h;->q:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setStacked(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    .line 48
    if-ne v1, v4, :cond_4

    .line 49
    .line 50
    const/high16 v1, -0x80000000

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v0, p1

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_2
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v2, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    :goto_3
    if-nez v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/high16 v4, -0x1000000

    .line 83
    .line 84
    and-int/2addr v0, v4

    .line 85
    const/high16 v4, 0x1000000

    .line 86
    .line 87
    if-ne v0, v4, :cond_6

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    const/4 v0, 0x0

    .line 92
    :goto_4
    if-eqz v0, :cond_7

    .line 93
    .line 94
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    :cond_7
    if-eqz v1, :cond_8

    .line 99
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/4 p2, 0x0

    .line 108
    :goto_5
    const/4 v0, -0x1

    .line 109
    if-ge p2, p1, :cond_a

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_9

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_a
    const/4 p2, -0x1

    .line 126
    :goto_6
    if-ltz p2, :cond_10

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    add-int/2addr p1, v4

    .line 147
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 148
    .line 149
    add-int/2addr p1, v4

    .line 150
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 151
    .line 152
    add-int/2addr p1, v1

    .line 153
    add-int/2addr p1, v3

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-ne v1, v2, :cond_b

    .line 159
    .line 160
    const/4 v3, 0x1

    .line 161
    :cond_b
    if-eqz v3, :cond_f

    .line 162
    .line 163
    add-int/2addr p2, v2

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    :goto_7
    if-ge p2, v1, :cond_d

    .line 169
    .line 170
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_c

    .line 179
    .line 180
    move v0, p2

    .line 181
    goto :goto_8

    .line 182
    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_d
    :goto_8
    if-ltz v0, :cond_e

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 204
    .line 205
    const/high16 v1, 0x41800000    # 16.0f

    .line 206
    .line 207
    mul-float v0, v0, v1

    .line 208
    .line 209
    float-to-int v0, v0

    .line 210
    add-int/2addr p2, v0

    .line 211
    goto :goto_9

    .line 212
    :cond_e
    move v3, p1

    .line 213
    goto :goto_a

    .line 214
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    :goto_9
    add-int v3, p2, p1

    .line 219
    .line 220
    :cond_10
    :goto_a
    sget-object p1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getMinimumHeight()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eq p1, v3, :cond_11

    .line 227
    .line 228
    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 229
    .line 230
    .line 231
    :cond_11
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
