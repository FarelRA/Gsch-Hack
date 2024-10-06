.class public final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
.super Ld0/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ld0/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;I)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 15
    .line 16
    :goto_0
    invoke-static {p2, v0, p1}, Lm1/h;->o(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    return v0

    :cond_0
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    return v0
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method

.method public final h(Landroid/view/View;FF)V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    cmpg-float v4, p3, v3

    .line 7
    .line 8
    if-gez v4, :cond_1

    .line 9
    .line 10
    iget-boolean p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 23
    .line 24
    if-le p2, p3, :cond_7

    .line 25
    .line 26
    move p2, p3

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    iget-boolean v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {v2, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w(Landroid/view/View;F)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget v5, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 44
    .line 45
    if-gt v4, v5, :cond_2

    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    cmpg-float v4, v4, v5

    .line 56
    .line 57
    if-gez v4, :cond_3

    .line 58
    .line 59
    :cond_2
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/4 v4, 0x4

    .line 64
    cmpl-float v3, p3, v3

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    cmpl-float p2, p2, p3

    .line 77
    .line 78
    if-lez p2, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 82
    .line 83
    const/4 v1, 0x4

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iget-boolean p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    .line 90
    .line 91
    if-eqz p3, :cond_6

    .line 92
    .line 93
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 94
    .line 95
    sub-int p3, p2, p3

    .line 96
    .line 97
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    iget v0, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 102
    .line 103
    sub-int/2addr p2, v0

    .line 104
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-ge p3, p2, :cond_a

    .line 109
    .line 110
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 114
    .line 115
    if-ge p2, p3, :cond_8

    .line 116
    .line 117
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 118
    .line 119
    sub-int p3, p2, p3

    .line 120
    .line 121
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-ge p2, p3, :cond_9

    .line 126
    .line 127
    :cond_7
    const/4 p2, 0x0

    .line 128
    :goto_1
    const/4 v0, 0x3

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    sub-int p3, p2, p3

    .line 131
    .line 132
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    iget v1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 137
    .line 138
    sub-int/2addr p2, v1

    .line 139
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-ge p3, p2, :cond_a

    .line 144
    .line 145
    :cond_9
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    iget p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 149
    .line 150
    const/4 v0, 0x4

    .line 151
    :goto_2
    move v1, v0

    .line 152
    :goto_3
    iget-object p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ld0/a;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p3, v0, p2}, Ld0/a;->q(II)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_b

    .line 163
    .line 164
    const/4 p2, 0x2

    .line 165
    invoke-virtual {v2, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 166
    .line 167
    .line 168
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 169
    .line 170
    invoke-direct {p2, v2, p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    sget-object p3, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_b
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 180
    .line 181
    .line 182
    :goto_4
    return-void
.end method

.method public final i(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    if-eqz v4, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:I

    if-ne v1, p2, :cond_2

    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    :cond_2
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
