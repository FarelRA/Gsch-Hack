.class public Lj0/r;
.super Lm1/h;
.source "SourceFile"


# static fields
.field public static h0:Ljava/lang/reflect/Method;

.field public static i0:Z

.field public static j0:Ljava/lang/reflect/Method;

.field public static k0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)F
    .locals 5

    .line 1
    sget-boolean v0, Lj0/r;->k0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 8
    .line 9
    const-string v3, "getTransitionAlpha"

    .line 10
    .line 11
    new-array v4, v1, [Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sput-object v2, Lj0/r;->j0:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    const-string v3, "ViewUtilsApi19"

    .line 25
    .line 26
    const-string v4, "Failed to retrieve getTransitionAlpha method"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    sput-boolean v0, Lj0/r;->k0:Z

    .line 32
    .line 33
    :cond_0
    sget-object v0, Lj0/r;->j0:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Float;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 46
    .line 47
    .line 48
    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    return p1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :catch_2
    :cond_1
    invoke-super {p0, p1}, Lm1/h;->A(Landroid/view/View;)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method
