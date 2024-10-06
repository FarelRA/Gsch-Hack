.class public Lj0/s;
.super Lj0/r;
.source "SourceFile"


# static fields
.field public static l0:Ljava/lang/reflect/Method;

.field public static m0:Z

.field public static n0:Ljava/lang/reflect/Method;

.field public static o0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj0/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final R(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6

    .line 1
    sget-boolean v0, Lj0/s;->m0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 8
    .line 9
    const-string v3, "transformMatrixToGlobal"

    .line 10
    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Landroid/graphics/Matrix;

    .line 14
    .line 15
    aput-object v5, v4, v1

    .line 16
    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lj0/s;->l0:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v3, "ViewUtilsApi21"

    .line 29
    .line 30
    const-string v4, "Failed to retrieve transformMatrixToGlobal method"

    .line 31
    .line 32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    sput-boolean v2, Lj0/s;->m0:Z

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lj0/s;->l0:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p2, v2, v1

    .line 44
    .line 45
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p2

    .line 60
    :catch_2
    :cond_1
    :goto_1
    return-void
.end method

.method public final S(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6

    .line 1
    sget-boolean v0, Lj0/s;->o0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 8
    .line 9
    const-string v3, "transformMatrixToLocal"

    .line 10
    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Landroid/graphics/Matrix;

    .line 14
    .line 15
    aput-object v5, v4, v1

    .line 16
    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lj0/s;->n0:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v3, "ViewUtilsApi21"

    .line 29
    .line 30
    const-string v4, "Failed to retrieve transformMatrixToLocal method"

    .line 31
    .line 32
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    sput-boolean v2, Lj0/s;->o0:Z

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lj0/s;->n0:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p2, v2, v1

    .line 44
    .line 45
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p2

    .line 60
    :catch_2
    :cond_1
    :goto_1
    return-void
.end method
