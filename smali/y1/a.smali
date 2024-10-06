.class public final Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly1/c;

.field public b:Lx/b;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly1/c;

    invoke-direct {v0}, Ly1/c;-><init>()V

    iput-object v0, p0, Ly1/a;->a:Ly1/c;

    const/4 v0, 0x0

    iput-object v0, p0, Ly1/a;->b:Lx/b;

    const/4 v0, 0x0

    iput v0, p0, Ly1/a;->c:I

    return-void
.end method

.method public static c(Ljava/util/LinkedList;)I
    .locals 1

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ly1/a;->a:Ly1/c;

    iget v0, v2, Ly1/c;->h:I

    .line 2
    iget-object v3, v2, Ly1/c;->d:[C

    :goto_0
    :pswitch_0
    iget v4, v2, Ly1/c;->e:I

    iget v5, v2, Ly1/c;->i:I

    iget v6, v2, Ly1/c;->g:I

    sub-int v6, v4, v6

    add-int/2addr v6, v5

    iput v6, v2, Ly1/c;->i:I

    iput v4, v2, Ly1/c;->g:I

    iput v4, v2, Ly1/c;->f:I

    sget-object v5, Ly1/c;->l:[I

    iget v6, v2, Ly1/c;->c:I

    aget v5, v5, v6

    iput v5, v2, Ly1/c;->b:I

    const/4 v5, -0x1

    move v6, v4

    const/4 v7, -0x1

    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ge v4, v0, :cond_0

    add-int/lit8 v11, v4, 0x1

    aget-char v4, v3, v4

    goto/16 :goto_6

    :cond_0
    iget-boolean v11, v2, Ly1/c;->j:Z

    if-eqz v11, :cond_1

    goto/16 :goto_5

    :cond_1
    iput v4, v2, Ly1/c;->f:I

    iput v6, v2, Ly1/c;->e:I

    .line 3
    iget v0, v2, Ly1/c;->g:I

    if-lez v0, :cond_2

    iget-object v3, v2, Ly1/c;->d:[C

    iget v4, v2, Ly1/c;->h:I

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v2, Ly1/c;->h:I

    iget v3, v2, Ly1/c;->g:I

    sub-int/2addr v0, v3

    iput v0, v2, Ly1/c;->h:I

    iget v0, v2, Ly1/c;->f:I

    sub-int/2addr v0, v3

    iput v0, v2, Ly1/c;->f:I

    iget v0, v2, Ly1/c;->e:I

    sub-int/2addr v0, v3

    iput v0, v2, Ly1/c;->e:I

    iput v8, v2, Ly1/c;->g:I

    :cond_2
    iget v0, v2, Ly1/c;->f:I

    iget-object v3, v2, Ly1/c;->d:[C

    array-length v4, v3

    if-lt v0, v4, :cond_3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v4, v3

    invoke-static {v3, v8, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v2, Ly1/c;->d:[C

    :cond_3
    iget-object v0, v2, Ly1/c;->a:Ljava/io/Reader;

    iget-object v3, v2, Ly1/c;->d:[C

    iget v4, v2, Ly1/c;->h:I

    array-length v6, v3

    sub-int/2addr v6, v4

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_4

    iget v3, v2, Ly1/c;->h:I

    add-int/2addr v3, v0

    iput v3, v2, Ly1/c;->h:I

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    iget-object v0, v2, Ly1/c;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v2, Ly1/c;->d:[C

    iget v4, v2, Ly1/c;->h:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v2, Ly1/c;->h:I

    int-to-char v0, v0

    aput-char v0, v3, v4

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 4
    :goto_4
    iget v3, v2, Ly1/c;->f:I

    iget v6, v2, Ly1/c;->e:I

    iget-object v4, v2, Ly1/c;->d:[C

    iget v11, v2, Ly1/c;->h:I

    if-eqz v0, :cond_7

    move-object v3, v4

    move v0, v11

    :goto_5
    const/4 v4, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v3, 0x1

    aget-char v3, v4, v3

    move v15, v11

    move v11, v0

    move v0, v15

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    :goto_6
    iget v12, v2, Ly1/c;->b:I

    sget-object v13, Ly1/c;->o:[I

    aget v12, v13, v12

    sget-object v13, Ly1/c;->m:[C

    aget-char v13, v13, v4

    add-int/2addr v12, v13

    sget-object v13, Ly1/c;->p:[I

    aget v12, v13, v12

    if-ne v12, v5, :cond_8

    goto :goto_7

    :cond_8
    iput v12, v2, Ly1/c;->b:I

    sget-object v13, Ly1/c;->r:[I

    aget v13, v13, v12

    and-int/lit8 v14, v13, 0x1

    if-ne v14, v10, :cond_d

    and-int/lit8 v6, v13, 0x8

    if-ne v6, v9, :cond_c

    move v6, v11

    move v7, v12

    :goto_7
    iput v6, v2, Ly1/c;->e:I

    if-gez v7, :cond_9

    goto :goto_8

    :cond_9
    sget-object v6, Ly1/c;->n:[I

    aget v7, v6, v7

    :goto_8
    const/4 v6, 0x0

    const/4 v11, 0x2

    packed-switch v7, :pswitch_data_0

    if-ne v4, v5, :cond_b

    iget v0, v2, Ly1/c;->g:I

    iget v3, v2, Ly1/c;->f:I

    if-ne v0, v3, :cond_b

    iput-boolean v10, v2, Ly1/c;->j:Z

    move-object v2, v6

    goto/16 :goto_b

    :pswitch_1
    :try_start_0
    invoke-virtual {v2}, Ly1/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ly1/b;

    iget v2, v2, Ly1/c;->i:I

    invoke-direct {v3, v2, v11, v0}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw v3

    :pswitch_2
    invoke-virtual {v2}, Ly1/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lx/b;

    invoke-direct {v2, v8, v10, v0}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3
    new-instance v2, Lx/b;

    invoke-direct {v2, v8, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v2}, Ly1/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    new-instance v2, Lx/b;

    invoke-direct {v2, v8, v10, v0}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    goto :goto_a

    :pswitch_6
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    goto :goto_a

    :pswitch_7
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    goto :goto_a

    :pswitch_8
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    goto :goto_a

    :pswitch_9
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    goto :goto_a

    :pswitch_b
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    goto :goto_a

    .line 5
    :pswitch_c
    iput v8, v2, Ly1/c;->c:I

    .line 6
    new-instance v0, Lx/b;

    iget-object v2, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v10, v2}, Lx/b;-><init>(IILjava/lang/Object;)V

    :goto_9
    move-object v2, v0

    goto/16 :goto_b

    :pswitch_d
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    const/16 v5, 0x5c

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ly1/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_f
    new-instance v2, Lx/b;

    const/4 v0, 0x6

    invoke-direct {v2, v0, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_10
    new-instance v2, Lx/b;

    const/4 v0, 0x5

    invoke-direct {v2, v0, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_11
    new-instance v2, Lx/b;

    const/4 v0, 0x4

    invoke-direct {v2, v0, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_12
    new-instance v2, Lx/b;

    const/4 v0, 0x3

    invoke-direct {v2, v0, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_13
    new-instance v2, Lx/b;

    invoke-direct {v2, v11, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_14
    new-instance v2, Lx/b;

    invoke-direct {v2, v10, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_b

    :pswitch_15
    iput-object v6, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, v2, Ly1/c;->k:Ljava/lang/StringBuilder;

    .line 7
    iput v11, v2, Ly1/c;->c:I

    goto/16 :goto_0

    .line 8
    :pswitch_16
    invoke-virtual {v2}, Ly1/c;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lx/b;

    invoke-direct {v3, v8, v10, v2}, Lx/b;-><init>(IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_b

    :catch_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Lx/b;

    invoke-direct {v0, v8, v10, v2}, Lx/b;-><init>(IILjava/lang/Object;)V

    goto :goto_9

    :pswitch_17
    new-instance v0, Ly1/b;

    iget v3, v2, Ly1/c;->i:I

    new-instance v4, Ljava/lang/Character;

    .line 9
    iget-object v5, v2, Ly1/c;->d:[C

    iget v2, v2, Ly1/c;->g:I

    add-int/2addr v2, v8

    aget-char v2, v5, v2

    .line 10
    invoke-direct {v4, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v3, v8, v4}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 11
    :goto_b
    iput-object v2, v1, Ly1/a;->b:Lx/b;

    if-nez v2, :cond_a

    new-instance v0, Lx/b;

    invoke-direct {v0, v5, v10, v6}, Lx/b;-><init>(IILjava/lang/Object;)V

    iput-object v0, v1, Ly1/a;->b:Lx/b;

    :cond_a
    return-void

    .line 12
    :cond_b
    sget-object v0, Ly1/c;->q:[Ljava/lang/String;

    :try_start_2
    aget-object v0, v0, v10
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    aget-object v0, v0, v8

    :goto_c
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move v6, v11

    move v7, v12

    :cond_d
    move v4, v11

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/io/StringReader;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ly1/a;->a:Ly1/c;

    iput-object p1, v0, Ly1/c;->a:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, Ly1/c;->j:Z

    iput p1, v0, Ly1/c;->g:I

    iput p1, v0, Ly1/c;->h:I

    iput p1, v0, Ly1/c;->e:I

    iput p1, v0, Ly1/c;->f:I

    iput p1, v0, Ly1/c;->i:I

    iput p1, v0, Ly1/c;->c:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Ly1/a;->b:Lx/b;

    iput p1, p0, Ly1/a;->c:I

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ly1/a;->a()V

    iget v2, p0, Ly1/a;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_17

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v2, :cond_f

    if-eq v2, v4, :cond_d

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq v2, v5, :cond_9

    if-eq v2, v6, :cond_4

    if-eq v2, v8, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget v2, v2, Lx/b;->b:I

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_1

    const/4 v5, 0x6

    if-eq v2, v5, :cond_14

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v6, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 7
    new-instance v7, Lw1/a$b;

    invoke-direct {v7}, Lw1/a$b;-><init>()V

    .line 8
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Ly1/a;->b:Lx/b;

    iget-object v6, v6, Lx/b;->c:Ljava/lang/Object;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {p1}, Ly1/a;->c(Ljava/util/LinkedList;)I

    move-result v2

    goto/16 :goto_4

    :cond_4
    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget v2, v2, Lx/b;->b:I

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_14

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v4, :cond_b

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    new-instance v6, Lw1/a$b;

    invoke-direct {v6}, Lw1/a$b;-><init>()V

    .line 12
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v5, p0, Ly1/a;->b:Lx/b;

    iget-object v5, v5, Lx/b;->c:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_9
    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget v6, v2, Lx/b;->b:I

    if-eqz v6, :cond_c

    if-eq v6, v5, :cond_a

    if-eq v6, v7, :cond_14

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v4, :cond_b

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_3

    :goto_4
    iput v2, p0, Ly1/a;->c:I

    goto :goto_7

    :cond_b
    iput v4, p0, Ly1/a;->c:I

    goto :goto_7

    :cond_c
    iget-object v2, v2, Lx/b;->c:Ljava/lang/Object;

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iput v8, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    iget-object p1, p0, Ly1/a;->b:Lx/b;

    iget p1, p1, Lx/b;->b:I

    if-ne p1, v3, :cond_e

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ly1/b;

    .line 13
    iget v0, v0, Ly1/c;->i:I

    .line 14
    iget-object v1, p0, Ly1/a;->b:Lx/b;

    invoke-direct {p1, v0, v4, v1}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_f
    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget v2, v2, Lx/b;->b:I

    if-eqz v2, :cond_13

    if-eq v2, v4, :cond_12

    if-eq v2, v6, :cond_11

    :cond_10
    :goto_5
    iput v3, p0, Ly1/a;->c:I

    goto :goto_7

    :cond_11
    iput v6, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6

    .line 16
    :cond_12
    iput v5, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 17
    new-instance v2, Lw1/a$b;

    invoke-direct {v2}, Lw1/a$b;-><init>()V

    goto :goto_6

    .line 18
    :cond_13
    iput v4, p0, Ly1/a;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget-object v2, v2, Lx/b;->c:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_14
    :goto_7
    iget v2, p0, Ly1/a;->c:I

    if-eq v2, v3, :cond_16

    iget-object v2, p0, Ly1/a;->b:Lx/b;

    iget v2, v2, Lx/b;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_15

    goto/16 :goto_0

    :cond_15
    new-instance p1, Ly1/b;

    .line 19
    iget v0, v0, Ly1/c;->i:I

    .line 20
    iget-object v1, p0, Ly1/a;->b:Lx/b;

    invoke-direct {p1, v0, v4, v1}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_16
    :try_start_1
    new-instance p1, Ly1/b;

    .line 21
    iget v0, v0, Ly1/c;->i:I

    .line 22
    iget-object v1, p0, Ly1/a;->b:Lx/b;

    invoke-direct {p1, v0, v4, v1}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_17
    new-instance p1, Ly1/b;

    .line 23
    iget v0, v0, Ly1/c;->i:I

    .line 24
    iget-object v1, p0, Ly1/a;->b:Lx/b;

    invoke-direct {p1, v0, v4, v1}, Ly1/b;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    throw p1
.end method
