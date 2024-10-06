.class public Lx/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lx/b;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lx/b;->a:I

    iput p1, p0, Lx/b;->b:I

    iput-object p3, p0, Lx/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lx/b;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lx/b;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx/b;->b:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lx/b;->b:I

    .line 4
    .line 5
    iget-object v3, p0, Lx/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    move-object v5, v3

    .line 11
    check-cast v5, [Ljava/lang/Object;

    .line 12
    .line 13
    aget-object v5, v5, v1

    .line 14
    .line 15
    if-ne v5, p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_1
    if-nez v1, :cond_3

    .line 24
    .line 25
    move-object v1, v3

    .line 26
    check-cast v1, [Ljava/lang/Object;

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    if-ge v2, v1, :cond_2

    .line 30
    .line 31
    check-cast v3, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v3, v2

    .line 34
    .line 35
    add-int/2addr v2, v4

    .line 36
    iput v2, p0, Lx/b;->b:I

    .line 37
    .line 38
    return v4

    .line 39
    :cond_2
    return v0

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "Already in the pool!"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lx/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lx/b;->b:I

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_1

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :pswitch_1
    const-string v1, "COLON(:)"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    const-string v1, "COMMA(,)"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_3
    const-string v1, "RIGHT SQUARE(])"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_4
    const-string v1, "LEFT SQUARE([)"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_5
    const-string v1, "RIGHT BRACE(})"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_6
    const-string v1, "LEFT BRACE({)"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_7
    const-string v1, "VALUE("

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lx/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_8
    const-string v1, "END OF FILE"

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
