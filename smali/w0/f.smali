.class public final Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lw0/f;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lw0/f;->b:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw0/f;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Landroid/graphics/Matrix;

    .line 2
    .line 3
    check-cast p3, Landroid/graphics/Matrix;

    .line 4
    .line 5
    iget-object v0, p0, Lw0/f;->a:[F

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lw0/f;->b:[F

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 13
    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    :goto_0
    const/16 v1, 0x9

    .line 17
    .line 18
    if-ge p3, v1, :cond_0

    .line 19
    .line 20
    aget v1, p2, p3

    .line 21
    .line 22
    aget v2, v0, p3

    .line 23
    .line 24
    sub-float/2addr v1, v2

    .line 25
    mul-float v1, v1, p1

    .line 26
    .line 27
    add-float/2addr v1, v2

    .line 28
    aput v1, p2, p3

    .line 29
    .line 30
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lw0/f;->c:Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method
