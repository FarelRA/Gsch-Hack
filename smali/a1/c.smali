.class public final La1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La1/a;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/content/res/ColorStateList;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public final l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/drawable/GradientDrawable;

.field public n:Landroid/graphics/drawable/GradientDrawable;

.field public o:Landroid/graphics/drawable/GradientDrawable;

.field public p:Z


# direct methods
.method public constructor <init>(La1/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, La1/c;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La1/c;->p:Z

    iput-object p1, p0, La1/c;->a:La1/a;

    return-void
.end method


# virtual methods
.method public final a()La1/b;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, La1/c;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    iget v1, p0, La1/c;->f:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 12
    .line 13
    .line 14
    add-float/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, La1/c;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, La1/c;->b()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, La1/c;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 33
    .line 34
    iget v3, p0, La1/c;->f:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    add-float/2addr v3, v2

    .line 38
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, La1/c;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, La1/c;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 48
    .line 49
    iget v4, p0, La1/c;->g:I

    .line 50
    .line 51
    iget-object v5, p0, La1/c;->j:Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    new-array v4, v0, [Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    iget-object v5, p0, La1/c;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 62
    .line 63
    aput-object v5, v4, v3

    .line 64
    .line 65
    iget-object v5, p0, La1/c;->n:Landroid/graphics/drawable/GradientDrawable;

    .line 66
    .line 67
    const/4 v12, 0x1

    .line 68
    aput-object v5, v4, v12

    .line 69
    .line 70
    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    .line 74
    .line 75
    iget v8, p0, La1/c;->b:I

    .line 76
    .line 77
    iget v9, p0, La1/c;->d:I

    .line 78
    .line 79
    iget v10, p0, La1/c;->c:I

    .line 80
    .line 81
    iget v11, p0, La1/c;->e:I

    .line 82
    .line 83
    move-object v6, v4

    .line 84
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 88
    .line 89
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v5, p0, La1/c;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 93
    .line 94
    iget v6, p0, La1/c;->f:I

    .line 95
    .line 96
    int-to-float v6, v6

    .line 97
    add-float/2addr v6, v2

    .line 98
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, La1/c;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance v1, La1/b;

    .line 107
    .line 108
    iget-object v2, p0, La1/c;->k:Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    new-array v5, v0, [[I

    .line 111
    .line 112
    new-array v0, v0, [I

    .line 113
    .line 114
    sget-object v6, Lg1/a;->c:[I

    .line 115
    .line 116
    aput-object v6, v5, v3

    .line 117
    .line 118
    sget-object v6, Lg1/a;->b:[I

    .line 119
    .line 120
    invoke-static {v2, v6}, Lg1/a;->a(Landroid/content/res/ColorStateList;[I)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    aput v6, v0, v3

    .line 125
    .line 126
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    .line 127
    .line 128
    aput-object v3, v5, v12

    .line 129
    .line 130
    sget-object v3, Lg1/a;->a:[I

    .line 131
    .line 132
    invoke-static {v2, v3}, Lg1/a;->a(Landroid/content/res/ColorStateList;[I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    aput v2, v0, v12

    .line 137
    .line 138
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 139
    .line 140
    invoke-direct {v2, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, La1/c;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 144
    .line 145
    invoke-direct {v1, v2, v4, v0}, La1/b;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 146
    .line 147
    .line 148
    return-object v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/c;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, La1/c;->i:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, La1/c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, La1/c;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
