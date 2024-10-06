.class public final Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    rsub-int v2, v0, 0xff

    .line 10
    .line 11
    rsub-int v3, v1, 0xff

    .line 12
    .line 13
    mul-int v3, v3, v2

    .line 14
    .line 15
    div-int/lit16 v3, v3, 0xff

    .line 16
    .line 17
    rsub-int v2, v3, 0xff

    .line 18
    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v3, v1, v4, v0, v2}, Lr/a;->b(IIIII)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v4, v1, v5, v0, v2}, Lr/a;->b(IIIII)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p0, v1, p1, v0, v2}, Lr/a;->b(IIIII)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public static b(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, p1

    mul-int p2, p2, p3

    rsub-int p1, p1, 0xff

    mul-int p1, p1, p2

    add-int/2addr p1, p0

    mul-int/lit16 p4, p4, 0xff

    div-int/2addr p1, p4

    return p1
.end method
