.class public final Lg/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i$a;,
        Lg/i$b;,
        Lg/i$e;,
        Lg/i$c;,
        Lg/i$d;
    }
.end annotation


# static fields
.field public static final g:Landroid/graphics/PorterDuff$Mode;

.field public static h:Lg/i;

.field public static final i:Lg/i$c;

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[I


# instance fields
.field public a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lk/i<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Ljava/lang/String;",
            "Lg/i$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lk/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lk/e<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public e:Landroid/util/TypedValue;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lg/i;->g:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lg/i$c;

    invoke-direct {v0}, Lg/i$c;-><init>()V

    sput-object v0, Lg/i;->i:Lg/i$c;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lg/i;->j:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lg/i;->k:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lg/i;->l:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lg/i;->m:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lg/i;->n:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lg/i;->o:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f070057
        0x7f070055
        0x7f070006
    .end array-data

    :array_1
    .array-data 4
        0x7f07001c
        0x7f070045
        0x7f070023
        0x7f07001e
        0x7f07001f
        0x7f070022
        0x7f070021
    .end array-data

    :array_2
    .array-data 4
        0x7f070054
        0x7f070056
        0x7f070015
        0x7f07004d
        0x7f07004e
        0x7f070050
        0x7f070052
        0x7f07004f
        0x7f070051
        0x7f070053
    .end array-data

    :array_3
    .array-data 4
        0x7f07003b
        0x7f070013
        0x7f07003a
    .end array-data

    :array_4
    .array-data 4
        0x7f07004b
        0x7f070058
    .end array-data

    :array_5
    .array-data 4
        0x7f070009
        0x7f07000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lg/i;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static c([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f03008b

    invoke-static {p0, v2}, Lg/m0;->b(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f030089

    invoke-static {p0, v3}, Lg/m0;->a(Landroid/content/Context;I)I

    move-result p0

    sget-object v3, Lg/m0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p0, v0, v4

    sget-object p0, Lg/m0;->d:[I

    const/4 v3, 0x1

    aput-object p0, v1, v3

    invoke-static {v2, p1}, Lr/a;->a(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Lg/m0;->c:[I

    const/4 v3, 0x2

    aput-object p0, v1, v3

    invoke-static {v2, p1}, Lr/a;->a(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Lg/m0;->f:[I

    const/4 v2, 0x3

    aput-object p0, v1, v2

    aput p1, v0, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f030091

    invoke-static {p0, v2}, Lg/m0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f03008a

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v2, Lg/m0;->b:[I

    aput-object v2, v1, v7

    invoke-virtual {v3, v2, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v7

    sget-object v2, Lg/m0;->e:[I

    aput-object v2, v1, v6

    invoke-static {p0, v5}, Lg/m0;->b(Landroid/content/Context;I)I

    move-result p0

    aput p0, v0, v6

    sget-object p0, Lg/m0;->f:[I

    aput-object p0, v1, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    aput p0, v0, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lg/m0;->b:[I

    aput-object v3, v1, v7

    invoke-static {p0, v2}, Lg/m0;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v7

    sget-object v3, Lg/m0;->e:[I

    aput-object v3, v1, v6

    invoke-static {p0, v5}, Lg/m0;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    sget-object v3, Lg/m0;->f:[I

    aput-object v3, v1, v4

    invoke-static {p0, v2}, Lg/m0;->b(Landroid/content/Context;I)I

    move-result p0

    aput p0, v0, v4

    :goto_0
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static declared-synchronized g()Lg/i;
    .locals 4

    .line 1
    const-class v0, Lg/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg/i;->h:Lg/i;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lg/i;

    .line 9
    .line 10
    invoke-direct {v1}, Lg/i;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lg/i;->h:Lg/i;

    .line 14
    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v3, 0x18

    .line 18
    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    new-instance v2, Lg/i$e;

    .line 22
    .line 23
    invoke-direct {v2}, Lg/i$e;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "vector"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Lg/i;->a(Ljava/lang/String;Lg/i$d;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lg/i$b;

    .line 32
    .line 33
    invoke-direct {v2}, Lg/i$b;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "animated-vector"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lg/i;->a(Ljava/lang/String;Lg/i$d;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lg/i$a;

    .line 42
    .line 43
    invoke-direct {v2}, Lg/i$a;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "animated-selector"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Lg/i;->a(Ljava/lang/String;Lg/i$d;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object v1, Lg/i;->h:Lg/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0

    .line 57
    throw v1
.end method

.method public static declared-synchronized k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    const-class v0, Lg/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg/i;->i:Lg/i$c;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    add-int/lit8 v2, p0, 0x1f

    .line 10
    .line 11
    mul-int/lit8 v2, v2, 0x1f

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Lk/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 31
    .line 32
    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    add-int/2addr p0, v2

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0, v3}, Lk/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :cond_0
    monitor-exit v0

    .line 51
    return-object v3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0

    .line 54
    throw p0
.end method

.method public static m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p0}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lg/i;->g:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Lg/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static n(Landroid/graphics/drawable/Drawable;Lg/p0;[I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    const-string p0, "AppCompatDrawableManag"

    .line 14
    .line 15
    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v0, p1, Lg/p0;->d:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-boolean v1, p1, Lg/p0;->c:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 31
    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Lg/p0;->a:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move-object v0, v1

    .line 41
    :goto_1
    iget-boolean v2, p1, Lg/p0;->c:Z

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-object p1, p1, Lg/p0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    sget-object p1, Lg/i;->g:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    :goto_2
    if-eqz v0, :cond_6

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p2, p1}, Lg/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    .line 66
    .line 67
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 p2, 0x17

    .line 70
    .line 71
    if-gt p1, p2, :cond_7

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 74
    .line 75
    .line 76
    :cond_7
    return-void
.end method

.method public static o(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    sget-object v0, Lg/i;->j:[I

    invoke-static {v0, p1}, Lg/i;->c([II)Z

    move-result v0

    const/4 v1, 0x1

    sget-object v2, Lg/i;->g:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    const p1, 0x7f03008c

    goto :goto_1

    :cond_0
    sget-object v0, Lg/i;->l:[I

    invoke-static {v0, p1}, Lg/i;->c([II)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f03008a

    goto :goto_1

    :cond_1
    sget-object v0, Lg/i;->m:[I

    invoke-static {v0, p1}, Lg/i;->c([II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const v0, 0x7f07002f

    if-ne p1, v0, :cond_3

    const p1, 0x42233333    # 40.8f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const v0, 0x1010030

    goto :goto_2

    :cond_3
    const v0, 0x7f070017

    if-ne p1, v0, :cond_4

    :goto_0
    const p1, 0x1010031

    :goto_1
    move v0, p1

    const/4 p1, -0x1

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    invoke-static {p2}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_5
    invoke-static {p0, v0}, Lg/m0;->b(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, v2}, Lg/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p1, v4, :cond_6

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v1

    :cond_7
    return v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg/i$d;)V
    .locals 1

    iget-object v0, p0, Lg/i;->b:Lk/b;

    if-nez v0, :cond_0

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Lg/i;->b:Lk/b;

    :cond_0
    iget-object v0, p0, Lg/i;->b:Lk/b;

    invoke-virtual {v0, p1, p2}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lg/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/e;

    if-nez v0, :cond_0

    new-instance v0, Lk/e;

    invoke-direct {v0}, Lk/e;-><init>()V

    iget-object v1, p0, Lg/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lk/e;->f(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    invoke-virtual {p0, p1, v3, v4}, Lg/i;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    const v5, 0x7f070014

    .line 40
    .line 41
    .line 42
    if-ne p2, v5, :cond_2

    .line 43
    .line 44
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 45
    .line 46
    const/4 p2, 0x2

    .line 47
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    const v5, 0x7f070013

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v5}, Lg/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    aput-object v5, p2, v6

    .line 58
    .line 59
    const v5, 0x7f070015

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v5}, Lg/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    aput-object v5, p2, v2

    .line 67
    .line 68
    invoke-direct {v1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 74
    .line 75
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v3, v4, v1}, Lg/i;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-object v1
.end method

.method public final declared-synchronized h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/i;->d:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Lk/e;->e(JLjava/lang/Long;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :cond_1
    :try_start_2
    iget-object p1, v0, Lk/e;->b:[J

    .line 42
    .line 43
    iget v2, v0, Lk/e;->d:I

    .line 44
    .line 45
    invoke-static {p1, v2, p2, p3}, Lm1/h;->g([JIJ)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_2

    .line 50
    .line 51
    iget-object p2, v0, Lk/e;->c:[Ljava/lang/Object;

    .line 52
    .line 53
    aget-object p3, p2, p1

    .line 54
    .line 55
    sget-object v2, Lk/e;->e:Ljava/lang/Object;

    .line 56
    .line 57
    if-eq p3, v2, :cond_2

    .line 58
    .line 59
    aput-object v2, p2, p1

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, v0, Lk/e;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    :cond_2
    monitor-exit p0

    .line 65
    return-object v1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final declared-synchronized i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lg/i;->j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lg/i;->f:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iput-boolean v1, p0, Lg/i;->f:Z

    .line 9
    .line 10
    const v0, 0x7f070059

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lg/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_19

    .line 19
    .line 20
    instance-of v3, v0, Lk0/f;

    .line 21
    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 44
    :goto_1
    if-eqz v0, :cond_19

    .line 45
    .line 46
    :goto_2
    iget-object v0, p0, Lg/i;->b:Lk/b;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_b

    .line 50
    .line 51
    invoke-virtual {v0}, Lk/h;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_b

    .line 56
    .line 57
    iget-object v0, p0, Lg/i;->c:Lk/i;

    .line 58
    .line 59
    const-string v3, "appcompat_skip_skip"

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, p2, v2}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_b

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v4, p0, Lg/i;->b:Lk/b;

    .line 78
    .line 79
    invoke-virtual {v4, v0, v2}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_3
    new-instance v0, Lk/i;

    .line 88
    .line 89
    invoke-direct {v0}, Lk/i;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lg/i;->c:Lk/i;

    .line 93
    .line 94
    :cond_4
    iget-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    new-instance v0, Landroid/util/TypedValue;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 104
    .line 105
    :cond_5
    iget-object v0, p0, Lg/i;->e:Landroid/util/TypedValue;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 112
    .line 113
    .line 114
    iget v5, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 115
    .line 116
    int-to-long v5, v5

    .line 117
    const/16 v7, 0x20

    .line 118
    .line 119
    shl-long/2addr v5, v7

    .line 120
    iget v7, v0, Landroid/util/TypedValue;->data:I

    .line 121
    .line 122
    int-to-long v7, v7

    .line 123
    or-long/2addr v5, v7

    .line 124
    invoke-virtual {p0, p1, v5, v6}, Lg/i;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-eqz v7, :cond_6

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_6
    iget-object v8, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 132
    .line 133
    if-eqz v8, :cond_a

    .line 134
    .line 135
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const-string v9, ".xml"

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v8, :cond_a

    .line 146
    .line 147
    :try_start_1
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    const/4 v10, 0x2

    .line 160
    if-eq v9, v10, :cond_7

    .line 161
    .line 162
    if-eq v9, v1, :cond_7

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    if-ne v9, v10, :cond_9

    .line 166
    .line 167
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v9, p0, Lg/i;->c:Lk/i;

    .line 172
    .line 173
    invoke-virtual {v9, p2, v1}, Lk/i;->a(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v9, p0, Lg/i;->b:Lk/b;

    .line 177
    .line 178
    invoke-virtual {v9, v1, v2}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lg/i$d;

    .line 183
    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-interface {v1, p1, v4, v8, v9}, Lg/i$d;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    :cond_8
    if-eqz v7, :cond_a

    .line 195
    .line 196
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 197
    .line 198
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1, v5, v6, v7}, Lg/i;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :catchall_0
    move-exception p1

    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 209
    .line 210
    const-string v1, "No start tag found"

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_2
    const-string v1, "AppCompatDrawableManag"

    .line 218
    .line 219
    const-string v4, "Exception while inflating drawable"

    .line 220
    .line 221
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_4
    if-nez v7, :cond_c

    .line 225
    .line 226
    iget-object v0, p0, Lg/i;->c:Lk/i;

    .line 227
    .line 228
    invoke-virtual {v0, p2, v3}, Lk/i;->a(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_b
    :goto_5
    move-object v7, v2

    .line 233
    :cond_c
    :goto_6
    if-nez v7, :cond_d

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Lg/i;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    :cond_d
    if-nez v7, :cond_e

    .line 240
    .line 241
    sget-object v0, Lp/a;->a:Ljava/lang/Object;

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    :cond_e
    if-eqz v7, :cond_17

    .line 248
    .line 249
    invoke-virtual {p0, p1, p2}, Lg/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_12

    .line 254
    .line 255
    invoke-static {v7}, Lg/b0;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_f

    .line 260
    .line 261
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    :cond_f
    invoke-static {v7}, Ls/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 270
    .line 271
    .line 272
    const p3, 0x7f070049

    .line 273
    .line 274
    .line 275
    if-ne p2, p3, :cond_10

    .line 276
    .line 277
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 278
    .line 279
    :cond_10
    if-eqz v2, :cond_11

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 282
    .line 283
    .line 284
    :cond_11
    move-object v2, p1

    .line 285
    goto :goto_9

    .line 286
    :cond_12
    sget-object v0, Lg/i;->g:Landroid/graphics/PorterDuff$Mode;

    .line 287
    .line 288
    const v1, 0x7f070046

    .line 289
    .line 290
    .line 291
    const v3, 0x102000f

    .line 292
    .line 293
    .line 294
    const/high16 v4, 0x1020000

    .line 295
    .line 296
    const v5, 0x7f03008a

    .line 297
    .line 298
    .line 299
    const v6, 0x7f03008c

    .line 300
    .line 301
    .line 302
    if-ne p2, v1, :cond_13

    .line 303
    .line 304
    move-object p2, v7

    .line 305
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 306
    .line 307
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-static {p1, v6}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-static {p3, v1, v0}, Lg/i;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    .line 321
    move-result-object p3

    .line 322
    invoke-static {p1, v6}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    goto :goto_8

    .line 327
    :cond_13
    const v1, 0x7f07003d

    .line 328
    .line 329
    .line 330
    if-eq p2, v1, :cond_15

    .line 331
    .line 332
    const v1, 0x7f07003c

    .line 333
    .line 334
    .line 335
    if-eq p2, v1, :cond_15

    .line 336
    .line 337
    const v1, 0x7f07003e

    .line 338
    .line 339
    .line 340
    if-ne p2, v1, :cond_14

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_14
    invoke-static {p1, p2, v7}, Lg/i;->o(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_16

    .line 348
    .line 349
    if-eqz p3, :cond_16

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_15
    :goto_7
    move-object p2, v7

    .line 353
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 354
    .line 355
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 356
    .line 357
    .line 358
    move-result-object p3

    .line 359
    invoke-static {p1, v6}, Lg/m0;->a(Landroid/content/Context;I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-static {p3, v1, v0}, Lg/i;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 367
    .line 368
    .line 369
    move-result-object p3

    .line 370
    invoke-static {p1, v5}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    :goto_8
    invoke-static {p3, v1, v0}, Lg/i;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 375
    .line 376
    .line 377
    const p3, 0x102000d

    .line 378
    .line 379
    .line 380
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-static {p1, v5}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    invoke-static {p2, p1, v0}, Lg/i;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 389
    .line 390
    .line 391
    :cond_16
    move-object v2, v7

    .line 392
    :goto_9
    move-object v7, v2

    .line 393
    :cond_17
    if-eqz v7, :cond_18

    .line 394
    .line 395
    invoke-static {v7}, Lg/b0;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .line 397
    .line 398
    :cond_18
    monitor-exit p0

    .line 399
    return-object v7

    .line 400
    :cond_19
    :try_start_3
    iput-boolean v2, p0, Lg/i;->f:Z

    .line 401
    .line 402
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 403
    .line 404
    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 405
    .line 406
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    :goto_a
    monitor-exit p0

    .line 411
    throw p1
.end method

.method public final declared-synchronized l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/i;->a:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lk/i;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Lk/i;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 27
    .line 28
    const v0, 0x7f070018

    .line 29
    .line 30
    .line 31
    if-ne p2, v0, :cond_1

    .line 32
    .line 33
    const v0, 0x7f050014

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    const v0, 0x7f07004a

    .line 43
    .line 44
    .line 45
    if-ne p2, v0, :cond_2

    .line 46
    .line 47
    const v0, 0x7f050017

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    const v0, 0x7f070049

    .line 57
    .line 58
    .line 59
    if-ne p2, v0, :cond_3

    .line 60
    .line 61
    invoke-static {p1}, Lg/i;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_3
    const v0, 0x7f07000d

    .line 68
    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    const v0, 0x7f030089

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p1, v0}, Lg/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_4
    const v0, 0x7f070008

    .line 86
    .line 87
    .line 88
    if-ne p2, v0, :cond_5

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-static {p1, v0}, Lg/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const v0, 0x7f07000c

    .line 97
    .line 98
    .line 99
    if-ne p2, v0, :cond_6

    .line 100
    .line 101
    const v0, 0x7f030087

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Lg/m0;->b(Landroid/content/Context;I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {p1, v0}, Lg/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    const v0, 0x7f070047

    .line 114
    .line 115
    .line 116
    if-eq p2, v0, :cond_b

    .line 117
    .line 118
    const v0, 0x7f070048

    .line 119
    .line 120
    .line 121
    if-ne p2, v0, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    sget-object v0, Lg/i;->k:[I

    .line 125
    .line 126
    invoke-static {v0, p2}, Lg/i;->c([II)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    const v0, 0x7f03008c

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0}, Lg/m0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_2

    .line 140
    :cond_8
    sget-object v0, Lg/i;->n:[I

    .line 141
    .line 142
    invoke-static {v0, p2}, Lg/i;->c([II)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    const v0, 0x7f050013

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    goto :goto_2

    .line 156
    :cond_9
    sget-object v0, Lg/i;->o:[I

    .line 157
    .line 158
    invoke-static {v0, p2}, Lg/i;->c([II)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    const v0, 0x7f050012

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto :goto_2

    .line 172
    :cond_a
    const v0, 0x7f070044

    .line 173
    .line 174
    .line 175
    if-ne p2, v0, :cond_c

    .line 176
    .line 177
    const v0, 0x7f050015

    .line 178
    .line 179
    .line 180
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_2

    .line 185
    :cond_b
    :goto_1
    const v0, 0x7f050016

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v0}, Lc/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :cond_c
    :goto_2
    if-eqz v1, :cond_f

    .line 193
    .line 194
    iget-object v0, p0, Lg/i;->a:Ljava/util/WeakHashMap;

    .line 195
    .line 196
    if-nez v0, :cond_d

    .line 197
    .line 198
    new-instance v0, Ljava/util/WeakHashMap;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lg/i;->a:Ljava/util/WeakHashMap;

    .line 204
    .line 205
    :cond_d
    iget-object v0, p0, Lg/i;->a:Ljava/util/WeakHashMap;

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lk/i;

    .line 212
    .line 213
    if-nez v0, :cond_e

    .line 214
    .line 215
    new-instance v0, Lk/i;

    .line 216
    .line 217
    invoke-direct {v0}, Lk/i;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lg/i;->a:Ljava/util/WeakHashMap;

    .line 221
    .line 222
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :cond_e
    invoke-virtual {v0, p2, v1}, Lk/i;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .line 227
    .line 228
    :cond_f
    monitor-exit p0

    .line 229
    return-object v1

    .line 230
    :goto_3
    monitor-exit p0

    .line 231
    throw p1
.end method
