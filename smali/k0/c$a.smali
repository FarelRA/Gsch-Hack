.class public final Lk0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Lr/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lr/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p2, [Lr/b$a;

    .line 2
    .line 3
    check-cast p3, [Lr/b$a;

    .line 4
    .line 5
    invoke-static {p2, p3}, Lr/b;->a([Lr/b$a;[Lr/b$a;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lk0/c$a;->a:[Lr/b$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, p2}, Lr/b;->a([Lr/b$a;[Lr/b$a;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-static {p2}, Lr/b;->e([Lr/b$a;)[Lr/b$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lk0/c$a;->a:[Lr/b$a;

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    array-length v2, p2

    .line 30
    if-ge v1, v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lk0/c$a;->a:[Lr/b$a;

    .line 33
    .line 34
    aget-object v2, v2, v1

    .line 35
    .line 36
    aget-object v3, p2, v1

    .line 37
    .line 38
    aget-object v4, p3, v1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-char v5, v3, Lr/b$a;->a:C

    .line 44
    .line 45
    iput-char v5, v2, Lr/b$a;->a:C

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_1
    iget-object v6, v3, Lr/b$a;->b:[F

    .line 49
    .line 50
    array-length v7, v6

    .line 51
    if-ge v5, v7, :cond_2

    .line 52
    .line 53
    aget v6, v6, v5

    .line 54
    .line 55
    const/high16 v7, 0x3f800000    # 1.0f

    .line 56
    .line 57
    sub-float/2addr v7, p1

    .line 58
    mul-float v7, v7, v6

    .line 59
    .line 60
    iget-object v6, v4, Lr/b$a;->b:[F

    .line 61
    .line 62
    aget v6, v6, v5

    .line 63
    .line 64
    mul-float v6, v6, p1

    .line 65
    .line 66
    add-float/2addr v6, v7

    .line 67
    iget-object v7, v2, Lr/b$a;->b:[F

    .line 68
    .line 69
    aput v6, v7, v5

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object p1, p0, Lk0/c$a;->a:[Lr/b$a;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p2, "Can\'t interpolate between two incompatible pathData"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
