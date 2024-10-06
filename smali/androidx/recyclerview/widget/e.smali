.class public final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$b;,
        Landroidx/recyclerview/widget/e$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroidx/recyclerview/widget/e$a;


# instance fields
.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/k;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/recyclerview/widget/e$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/e$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/k;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k;->getNanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->V:Landroidx/recyclerview/widget/e$b;

    .line 25
    .line 26
    iput p2, p1, Landroidx/recyclerview/widget/e$b;->a:I

    .line 27
    .line 28
    iput p3, p1, Landroidx/recyclerview/widget/e$b;->b:I

    .line 29
    .line 30
    return-void
.end method

.method public final b(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroidx/recyclerview/widget/k;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    iget-object v5, v5, Landroidx/recyclerview/widget/k;->V:Landroidx/recyclerview/widget/e$b;

    .line 25
    .line 26
    iput v2, v5, Landroidx/recyclerview/widget/e$b;->c:I

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget v5, v5, Landroidx/recyclerview/widget/e$b;->c:I

    .line 32
    .line 33
    add-int/2addr v4, v5

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_1
    if-ge v4, v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Landroidx/recyclerview/widget/k;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    iget-object v6, v6, Landroidx/recyclerview/widget/k;->V:Landroidx/recyclerview/widget/e$b;

    .line 60
    .line 61
    iget v7, v6, Landroidx/recyclerview/widget/e$b;->a:I

    .line 62
    .line 63
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 64
    .line 65
    .line 66
    iget v7, v6, Landroidx/recyclerview/widget/e$b;->b:I

    .line 67
    .line 68
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    iget v7, v6, Landroidx/recyclerview/widget/e$b;->c:I

    .line 72
    .line 73
    mul-int/lit8 v7, v7, 0x2

    .line 74
    .line 75
    if-lez v7, :cond_4

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-gtz p1, :cond_3

    .line 82
    .line 83
    new-instance p1, Landroidx/recyclerview/widget/e$c;

    .line 84
    .line 85
    invoke-direct {p1}, Landroidx/recyclerview/widget/e$c;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/recyclerview/widget/e$c;

    .line 97
    .line 98
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    throw p1

    .line 103
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    sget-object v0, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/e$a;

    .line 107
    .line 108
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_9

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroidx/recyclerview/widget/e$c;

    .line 122
    .line 123
    iget-object v1, v0, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/k;

    .line 124
    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    iget-boolean v3, v0, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 129
    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    const-wide p1, 0x7fffffffffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :cond_7
    iget v0, v0, Landroidx/recyclerview/widget/e$c;->e:I

    .line 138
    .line 139
    iget-object v3, v1, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->e()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/4 v4, 0x0

    .line 146
    if-gtz v3, :cond_8

    .line 147
    .line 148
    iget-object v3, v1, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/k$p;

    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->p()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v0, p1, p2}, Landroidx/recyclerview/widget/k$p;->e(IJ)V

    .line 154
    .line 155
    .line 156
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k;->q(Z)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_8
    iget-object p1, v1, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/b;

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->m(Landroid/view/View;)Landroidx/recyclerview/widget/k$v;

    .line 169
    .line 170
    .line 171
    throw v4

    .line 172
    :cond_9
    :goto_4
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "RV Prefetch"

    .line 4
    .line 5
    sget v3, Lu/a;->a:I

    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    move-wide v5, v0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroidx/recyclerview/widget/k;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    cmp-long v2, v5, v0

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iget-wide v4, p0, Landroidx/recyclerview/widget/e;->d:J

    .line 72
    .line 73
    add-long/2addr v2, v4

    .line 74
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/e;->b(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 78
    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v2

    .line 84
    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 85
    .line 86
    sget v0, Lu/a;->a:I

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 89
    .line 90
    .line 91
    throw v2
.end method
