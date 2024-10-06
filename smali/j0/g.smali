.class public abstract Lj0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/g$c;,
        Lj0/g$b;,
        Lj0/g$d;
    }
.end annotation


# static fields
.field public static final t:[I

.field public static final u:Lj0/g$a;

.field public static final v:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lk/b<",
            "Landroid/animation/Animator;",
            "Lj0/g$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Landroid/animation/TimeInterpolator;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lm/a;

.field public h:Lm/a;

.field public i:Lj0/l;

.field public final j:[I

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj0/n;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj0/g$d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lh/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj0/g;->t:[I

    new-instance v0, Lj0/g$a;

    invoke-direct {v0}, Lj0/g$a;-><init>()V

    sput-object v0, Lj0/g;->u:Lj0/g$a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lj0/g;->v:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj0/g;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lj0/g;->b:J

    iput-wide v0, p0, Lj0/g;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lj0/g;->d:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/g;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/g;->f:Ljava/util/ArrayList;

    new-instance v1, Lm/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lm/a;-><init>(I)V

    iput-object v1, p0, Lj0/g;->g:Lm/a;

    new-instance v1, Lm/a;

    invoke-direct {v1, v2}, Lm/a;-><init>(I)V

    iput-object v1, p0, Lj0/g;->h:Lm/a;

    iput-object v0, p0, Lj0/g;->i:Lj0/l;

    sget-object v1, Lj0/g;->t:[I

    iput-object v1, p0, Lj0/g;->j:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/g;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lj0/g;->n:I

    iput-boolean v1, p0, Lj0/g;->o:Z

    iput-boolean v1, p0, Lj0/g;->p:Z

    iput-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/g;->r:Ljava/util/ArrayList;

    sget-object v0, Lj0/g;->u:Lj0/g$a;

    iput-object v0, p0, Lj0/g;->s:Lh/c;

    return-void
.end method

.method public static c(Lm/a;Landroid/view/View;Lj0/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x0

    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lm/a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lm/a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lm/a;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    sget-object p2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lk/b;

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Lk/h;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lk/b;

    .line 61
    .line 62
    invoke-virtual {v1, p2, v0}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, p0, Lm/a;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lk/b;

    .line 69
    .line 70
    invoke-virtual {v1, p2, p1}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    instance-of p2, p2, Landroid/widget/ListView;

    .line 78
    .line 79
    if-eqz p2, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/ListView;

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    iget-object p2, p0, Lm/a;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p2, Lk/e;

    .line 108
    .line 109
    iget-boolean v3, p2, Lk/e;->a:Z

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {p2}, Lk/e;->d()V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v3, p2, Lk/e;->b:[J

    .line 117
    .line 118
    iget p2, p2, Lk/e;->d:I

    .line 119
    .line 120
    invoke-static {v3, p2, v1, v2}, Lm1/h;->g([JIJ)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-ltz p2, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lm/a;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Lk/e;

    .line 129
    .line 130
    invoke-virtual {p1, v1, v2, v0}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/view/View;

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lm/a;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lk/e;

    .line 145
    .line 146
    invoke-virtual {p0, v1, v2, v0}, Lk/e;->f(JLjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const/4 p2, 0x1

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lm/a;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lk/e;

    .line 157
    .line 158
    invoke-virtual {p0, v1, v2, p1}, Lk/e;->f(JLjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_2
    return-void
.end method

.method public static o()Lk/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b<",
            "Landroid/animation/Animator;",
            "Lj0/g$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lj0/g;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b;

    if-nez v1, :cond_0

    new-instance v1, Lk/b;

    invoke-direct {v1}, Lk/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static t(Lj0/n;Lj0/n;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public A(Lj0/g$c;)V
    .locals 0

    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lj0/g;->d:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public C(Lh/c;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lj0/g;->u:Lj0/g$a;

    :cond_0
    iput-object p1, p0, Lj0/g;->s:Lh/c;

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E(J)V
    .locals 0

    iput-wide p1, p0, Lj0/g;->b:J

    return-void
.end method

.method public final F()V
    .locals 5

    iget v0, p0, Lj0/g;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj0/g$d;

    invoke-interface {v4}, Lj0/g$d;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lj0/g;->p:Z

    :cond_1
    iget v0, p0, Lj0/g;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj0/g;->n:I

    return-void
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lj0/g;->c:J

    const-string v2, ") "

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lj0/g;->c:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v0, p0, Lj0/g;->b:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lj0/g;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lj0/g;->d:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lj0/g;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lj0/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lj0/g;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    if-lez v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    if-lez v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Lj0/g$d;)V
    .locals 1

    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lj0/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj0/g;->j()Lj0/g;

    move-result-object v0

    return-object v0
.end method

.method public abstract d(Lj0/n;)V
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lj0/n;

    invoke-direct {v0}, Lj0/n;-><init>()V

    iput-object p1, v0, Lj0/n;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lj0/g;->g(Lj0/n;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lj0/g;->d(Lj0/n;)V

    :goto_0
    iget-object v1, v0, Lj0/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lj0/g;->f(Lj0/n;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lj0/g;->g:Lm/a;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj0/g;->h:Lm/a;

    :goto_1
    invoke-static {v1, p1, v0}, Lj0/g;->c(Lm/a;Landroid/view/View;Lj0/n;)V

    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lj0/g;->e(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public f(Lj0/n;)V
    .locals 0

    return-void
.end method

.method public abstract g(Lj0/n;)V
.end method

.method public final h(Landroid/view/ViewGroup;Z)V
    .locals 7

    invoke-virtual {p0, p2}, Lj0/g;->i(Z)V

    iget-object v0, p0, Lj0/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lj0/g;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lj0/g;->e(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lj0/n;

    invoke-direct {v5}, Lj0/n;-><init>()V

    iput-object v4, v5, Lj0/n;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, Lj0/g;->g(Lj0/n;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lj0/g;->d(Lj0/n;)V

    :goto_2
    iget-object v6, v5, Lj0/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lj0/g;->f(Lj0/n;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, Lj0/g;->g:Lm/a;

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lj0/g;->h:Lm/a;

    :goto_3
    invoke-static {v6, v4, v5}, Lj0/g;->c(Lm/a;Landroid/view/View;Lj0/n;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lj0/n;

    invoke-direct {v0}, Lj0/n;-><init>()V

    iput-object p1, v0, Lj0/n;->b:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lj0/g;->g(Lj0/n;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, Lj0/g;->d(Lj0/n;)V

    :goto_5
    iget-object v3, v0, Lj0/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lj0/g;->f(Lj0/n;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, Lj0/g;->g:Lm/a;

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lj0/g;->h:Lm/a;

    :goto_6
    invoke-static {v3, p1, v0}, Lj0/g;->c(Lm/a;Landroid/view/View;Lj0/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public final i(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj0/g;->g:Lm/a;

    iget-object p1, p1, Lm/a;->a:Ljava/lang/Object;

    check-cast p1, Lk/b;

    invoke-virtual {p1}, Lk/h;->clear()V

    iget-object p1, p0, Lj0/g;->g:Lm/a;

    iget-object p1, p1, Lm/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lj0/g;->g:Lm/a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj0/g;->h:Lm/a;

    iget-object p1, p1, Lm/a;->a:Ljava/lang/Object;

    check-cast p1, Lk/b;

    invoke-virtual {p1}, Lk/h;->clear()V

    iget-object p1, p0, Lj0/g;->h:Lm/a;

    iget-object p1, p1, Lm/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lj0/g;->h:Lm/a;

    :goto_0
    iget-object p1, p1, Lm/a;->c:Ljava/lang/Object;

    check-cast p1, Lk/e;

    invoke-virtual {p1}, Lk/e;->b()V

    return-void
.end method

.method public j()Lj0/g;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/g;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lj0/g;->r:Ljava/util/ArrayList;

    new-instance v2, Lm/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lm/a;-><init>(I)V

    iput-object v2, v1, Lj0/g;->g:Lm/a;

    new-instance v2, Lm/a;

    invoke-direct {v2, v3}, Lm/a;-><init>(I)V

    iput-object v2, v1, Lj0/g;->h:Lm/a;

    iput-object v0, v1, Lj0/g;->k:Ljava/util/ArrayList;

    iput-object v0, v1, Lj0/g;->l:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public k(Landroid/view/ViewGroup;Lj0/n;Lj0/n;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Landroid/view/ViewGroup;Lm/a;Lm/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lm/a;",
            "Lm/a;",
            "Ljava/util/ArrayList<",
            "Lj0/n;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lj0/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-static {}, Lj0/g;->o()Lk/b;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    new-instance v9, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v10

    .line 18
    const/4 v12, 0x0

    .line 19
    :goto_0
    if-ge v12, v10, :cond_c

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lj0/n;

    .line 28
    .line 29
    move-object/from16 v14, p5

    .line 30
    .line 31
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lj0/n;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v3, v0, Lj0/n;->c:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v3, v1, Lj0/n;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :cond_1
    if-nez v0, :cond_3

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    :cond_2
    move-object/from16 v15, p3

    .line 65
    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :cond_3
    if-eqz v0, :cond_5

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-virtual {v6, v0, v1}, Lj0/g;->r(Lj0/n;Lj0/n;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v3, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 82
    :goto_2
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v6, v7, v0, v1}, Lj0/g;->k(Landroid/view/ViewGroup;Lj0/n;Lj0/n;)Landroid/animation/Animator;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    if-eqz v1, :cond_a

    .line 91
    .line 92
    iget-object v0, v1, Lj0/n;->b:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lj0/g;->p()[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    array-length v4, v1

    .line 103
    if-lez v4, :cond_9

    .line 104
    .line 105
    new-instance v4, Lj0/n;

    .line 106
    .line 107
    invoke-direct {v4}, Lj0/n;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v0, v4, Lj0/n;->b:Landroid/view/View;

    .line 111
    .line 112
    move-object/from16 v15, p3

    .line 113
    .line 114
    iget-object v5, v15, Lm/a;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Lk/b;

    .line 117
    .line 118
    invoke-virtual {v5, v0, v2}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lj0/n;

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    const/4 v11, 0x0

    .line 127
    :goto_3
    array-length v2, v1

    .line 128
    if-ge v11, v2, :cond_6

    .line 129
    .line 130
    iget-object v2, v4, Lj0/n;->a:Ljava/util/HashMap;

    .line 131
    .line 132
    move-object/from16 v17, v3

    .line 133
    .line 134
    aget-object v3, v1, v11

    .line 135
    .line 136
    move-object/from16 v18, v1

    .line 137
    .line 138
    iget-object v1, v5, Lj0/n;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v11, v11, 0x1

    .line 148
    .line 149
    move-object/from16 v3, v17

    .line 150
    .line 151
    move-object/from16 v1, v18

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    move-object/from16 v17, v3

    .line 155
    .line 156
    iget v1, v8, Lk/h;->c:I

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    :goto_4
    if-ge v2, v1, :cond_8

    .line 160
    .line 161
    invoke-virtual {v8, v2}, Lk/h;->h(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/animation/Animator;

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-virtual {v8, v3, v5}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lj0/g$b;

    .line 173
    .line 174
    iget-object v11, v3, Lj0/g$b;->c:Lj0/n;

    .line 175
    .line 176
    if-eqz v11, :cond_7

    .line 177
    .line 178
    iget-object v11, v3, Lj0/g$b;->a:Landroid/view/View;

    .line 179
    .line 180
    if-ne v11, v0, :cond_7

    .line 181
    .line 182
    iget-object v11, v3, Lj0/g$b;->b:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v5, v6, Lj0/g;->a:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_7

    .line 191
    .line 192
    iget-object v3, v3, Lj0/g$b;->c:Lj0/n;

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Lj0/n;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_5

    .line 202
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    move-object/from16 v2, v17

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_9
    move-object/from16 v15, p3

    .line 209
    .line 210
    move-object/from16 v17, v3

    .line 211
    .line 212
    move-object/from16 v2, v17

    .line 213
    .line 214
    const/4 v4, 0x0

    .line 215
    :goto_5
    move-object v1, v0

    .line 216
    move-object v11, v2

    .line 217
    move-object v5, v4

    .line 218
    goto :goto_6

    .line 219
    :cond_a
    move-object/from16 v15, p3

    .line 220
    .line 221
    move-object/from16 v17, v3

    .line 222
    .line 223
    iget-object v0, v0, Lj0/n;->b:Landroid/view/View;

    .line 224
    .line 225
    move-object v1, v0

    .line 226
    move-object/from16 v11, v17

    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    :goto_6
    if-eqz v11, :cond_b

    .line 230
    .line 231
    new-instance v4, Lj0/g$b;

    .line 232
    .line 233
    iget-object v2, v6, Lj0/g;->a:Ljava/lang/String;

    .line 234
    .line 235
    sget-object v0, Lj0/q;->a:Lj0/s;

    .line 236
    .line 237
    new-instance v3, Lj0/w;

    .line 238
    .line 239
    invoke-direct {v3, v7}, Lj0/w;-><init>(Landroid/view/View;)V

    .line 240
    .line 241
    .line 242
    move-object v0, v4

    .line 243
    move-object/from16 v16, v3

    .line 244
    .line 245
    move-object/from16 v3, p0

    .line 246
    .line 247
    move-object v7, v4

    .line 248
    move-object/from16 v4, v16

    .line 249
    .line 250
    invoke-direct/range {v0 .. v5}, Lj0/g$b;-><init>(Landroid/view/View;Ljava/lang/String;Lj0/g;Lj0/w;Lj0/n;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v11, v7}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    iget-object v0, v6, Lj0/g;->r:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 262
    .line 263
    move-object/from16 v7, p1

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_c
    const/4 v11, 0x0

    .line 268
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-ge v11, v0, :cond_d

    .line 273
    .line 274
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    iget-object v1, v6, Lj0/g;->r:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Landroid/animation/Animator;

    .line 285
    .line 286
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    int-to-long v1, v1

    .line 291
    const-wide v3, 0x7fffffffffffffffL

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    sub-long/2addr v1, v3

    .line 297
    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    .line 298
    .line 299
    .line 300
    move-result-wide v3

    .line 301
    add-long/2addr v3, v1

    .line 302
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 303
    .line 304
    .line 305
    add-int/lit8 v11, v11, 0x1

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_d
    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    iget v0, p0, Lj0/g;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lj0/g;->n:I

    .line 6
    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-ge v4, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lj0/g$d;

    .line 40
    .line 41
    invoke-interface {v5, p0}, Lj0/g$d;->c(Lj0/g;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_1
    iget-object v3, p0, Lj0/g;->g:Lm/a;

    .line 49
    .line 50
    iget-object v3, v3, Lm/a;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lk/e;

    .line 53
    .line 54
    iget-boolean v4, v3, Lk/e;->a:Z

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Lk/e;->d()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget v3, v3, Lk/e;->d:I

    .line 62
    .line 63
    if-ge v0, v3, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lj0/g;->g:Lm/a;

    .line 66
    .line 67
    iget-object v3, v3, Lm/a;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Lk/e;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Lk/e;->g(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroid/view/View;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    :goto_2
    iget-object v3, p0, Lj0/g;->h:Lm/a;

    .line 89
    .line 90
    iget-object v3, v3, Lm/a;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lk/e;

    .line 93
    .line 94
    iget-boolean v4, v3, Lk/e;->a:Z

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Lk/e;->d()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget v3, v3, Lk/e;->d:I

    .line 102
    .line 103
    if-ge v0, v3, :cond_6

    .line 104
    .line 105
    iget-object v3, p0, Lj0/g;->h:Lm/a;

    .line 106
    .line 107
    iget-object v3, v3, Lm/a;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Lk/e;

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Lk/e;->g(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/view/View;

    .line 116
    .line 117
    if-eqz v3, :cond_5

    .line 118
    .line 119
    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 122
    .line 123
    .line 124
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    iput-boolean v1, p0, Lj0/g;->p:Z

    .line 128
    .line 129
    :cond_7
    return-void
.end method

.method public final n(Landroid/view/View;Z)Lj0/n;
    .locals 5

    iget-object v0, p0, Lj0/g;->i:Lj0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj0/g;->n(Landroid/view/View;Z)Lj0/n;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lj0/g;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj0/g;->l:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj0/n;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, Lj0/n;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lj0/g;->l:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lj0/g;->k:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lj0/n;

    :cond_7
    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q(Landroid/view/View;Z)Lj0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/g;->i:Lj0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lj0/g;->q(Landroid/view/View;Z)Lj0/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lj0/g;->g:Lm/a;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lj0/g;->h:Lm/a;

    .line 16
    .line 17
    :goto_0
    iget-object p2, p2, Lm/a;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lk/b;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, p1, v0}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lj0/n;

    .line 27
    .line 28
    return-object p1
.end method

.method public r(Lj0/n;Lj0/n;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lj0/g;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Lj0/g;->t(Lj0/n;Lj0/n;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lj0/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lj0/g;->t(Lj0/n;Lj0/n;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final s(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lj0/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lj0/g;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lj0/g;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj0/g;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-static {}, Lj0/g;->o()Lk/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lk/h;->c:I

    .line 10
    .line 11
    sget-object v2, Lj0/q;->a:Lj0/s;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    if-ltz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lk/h;->j(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lj0/g$b;

    .line 27
    .line 28
    iget-object v5, v4, Lj0/g$b;->a:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v4, v4, Lj0/g$b;->d:Lj0/x;

    .line 33
    .line 34
    instance-of v5, v4, Lj0/w;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    check-cast v4, Lj0/w;

    .line 39
    .line 40
    iget-object v4, v4, Lj0/w;->a:Landroid/view/WindowId;

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    :cond_0
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lk/h;->h(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/animation/Animator;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    .line 58
    .line 59
    .line 60
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-lez p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_1
    if-ge v3, v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lj0/g$d;

    .line 92
    .line 93
    invoke-interface {v1}, Lj0/g$d;->b()V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iput-boolean v2, p0, Lj0/g;->o:Z

    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public v(Lj0/g$d;)V
    .locals 1

    iget-object v0, p0, Lj0/g;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lj0/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj0/g;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lj0/g;->p:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-static {}, Lj0/g;->o()Lk/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v0, Lk/h;->c:I

    .line 15
    .line 16
    sget-object v3, Lj0/q;->a:Lj0/s;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v3, 0x1

    .line 23
    sub-int/2addr v2, v3

    .line 24
    :goto_0
    if-ltz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lk/h;->j(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lj0/g$b;

    .line 31
    .line 32
    iget-object v5, v4, Lj0/g$b;->a:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    iget-object v4, v4, Lj0/g$b;->d:Lj0/x;

    .line 37
    .line 38
    instance-of v5, v4, Lj0/w;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    check-cast v4, Lj0/w;

    .line 43
    .line 44
    iget-object v4, v4, Lj0/w;->a:Landroid/view/WindowId;

    .line 45
    .line 46
    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    :goto_1
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lk/h;->h(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/animation/Animator;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-lez p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lj0/g;->q:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_2
    if-ge v2, v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lj0/g$d;

    .line 99
    .line 100
    invoke-interface {v3}, Lj0/g$d;->d()V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iput-boolean v1, p0, Lj0/g;->o:Z

    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public y()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lj0/g;->F()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lj0/g;->o()Lk/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lj0/g;->r:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lk/h;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lj0/g;->F()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance v3, Lj0/h;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Lj0/h;-><init>(Lj0/g;Lk/b;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    iget-wide v3, p0, Lj0/g;->c:J

    .line 46
    .line 47
    const-wide/16 v5, 0x0

    .line 48
    .line 49
    cmp-long v7, v3, v5

    .line 50
    .line 51
    if-ltz v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-wide v3, p0, Lj0/g;->b:J

    .line 57
    .line 58
    cmp-long v7, v3, v5

    .line 59
    .line 60
    if-ltz v7, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v3, p0, Lj0/g;->d:Landroid/animation/TimeInterpolator;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    new-instance v3, Lj0/i;

    .line 73
    .line 74
    invoke-direct {v3, p0}, Lj0/i;-><init>(Lj0/g;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lj0/g;->r:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lj0/g;->m()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public z(J)V
    .locals 0

    iput-wide p1, p0, Lj0/g;->c:J

    return-void
.end method
