.class public final La0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:La0/a;


# direct methods
.method public constructor <init>(La0/a;)V
    .locals 0

    iput-object p1, p0, La0/a$b;->b:La0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La0/a$b;->b:La0/a;

    .line 4
    .line 5
    iget-boolean v2, v1, La0/a;->p:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, v1, La0/a;->n:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iget-object v4, v1, La0/a;->b:La0/a$a;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iput-boolean v3, v1, La0/a;->n:Z

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    iput-wide v5, v4, La0/a$a;->e:J

    .line 27
    .line 28
    const-wide/16 v7, -0x1

    .line 29
    .line 30
    iput-wide v7, v4, La0/a$a;->g:J

    .line 31
    .line 32
    iput-wide v5, v4, La0/a$a;->f:J

    .line 33
    .line 34
    const/high16 v2, 0x3f000000    # 0.5f

    .line 35
    .line 36
    iput v2, v4, La0/a$a;->h:F

    .line 37
    .line 38
    :cond_1
    iget-wide v5, v4, La0/a$a;->g:J

    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    cmp-long v2, v5, v7

    .line 43
    .line 44
    if-lez v2, :cond_2

    .line 45
    .line 46
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    iget-wide v9, v4, La0/a$a;->g:J

    .line 51
    .line 52
    iget v2, v4, La0/a$a;->i:I

    .line 53
    .line 54
    int-to-long v11, v2

    .line 55
    add-long/2addr v9, v11

    .line 56
    cmp-long v2, v5, v9

    .line 57
    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_0
    if-nez v2, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1}, La0/a;->e()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-boolean v2, v1, La0/a;->o:Z

    .line 73
    .line 74
    iget-object v5, v1, La0/a;->d:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    iput-boolean v3, v1, La0/a;->o:Z

    .line 79
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v11

    .line 84
    const/4 v13, 0x3

    .line 85
    const/4 v14, 0x0

    .line 86
    const/4 v15, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    move-wide v9, v11

    .line 90
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-wide v2, v4, La0/a$a;->f:J

    .line 101
    .line 102
    cmp-long v6, v2, v7

    .line 103
    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {v4, v2, v3}, La0/a$a;->a(J)F

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/high16 v7, -0x3f800000    # -4.0f

    .line 115
    .line 116
    mul-float v7, v7, v6

    .line 117
    .line 118
    mul-float v7, v7, v6

    .line 119
    .line 120
    const/high16 v8, 0x40800000    # 4.0f

    .line 121
    .line 122
    mul-float v6, v6, v8

    .line 123
    .line 124
    add-float/2addr v6, v7

    .line 125
    iget-wide v7, v4, La0/a$a;->f:J

    .line 126
    .line 127
    sub-long v7, v2, v7

    .line 128
    .line 129
    iput-wide v2, v4, La0/a$a;->f:J

    .line 130
    .line 131
    long-to-float v2, v7

    .line 132
    mul-float v2, v2, v6

    .line 133
    .line 134
    iget v3, v4, La0/a$a;->d:F

    .line 135
    .line 136
    mul-float v2, v2, v3

    .line 137
    .line 138
    float-to-int v2, v2

    .line 139
    check-cast v1, La0/e;

    .line 140
    .line 141
    iget-object v1, v1, La0/e;->s:Landroid/widget/ListView;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 144
    .line 145
    .line 146
    sget-object v1, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 147
    .line 148
    invoke-virtual {v5, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 153
    .line 154
    const-string v2, "Cannot compute scroll delta before calling start()"

    .line 155
    .line 156
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v1

    .line 160
    :cond_6
    :goto_1
    iput-boolean v3, v1, La0/a;->p:Z

    .line 161
    .line 162
    return-void
.end method
