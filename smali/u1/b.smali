.class public abstract Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/b$a;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 v0, p1, 0x4

    :cond_1
    iput v0, p0, Lu1/b;->a:I

    return-void
.end method

.method public static e(ILu1/b$a;)[B
    .locals 3

    .line 1
    iget-object v0, p1, Lu1/b$a;->b:[B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    iget v2, p1, Lu1/b$a;->c:I

    .line 7
    .line 8
    add-int/2addr v2, p0

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object v0

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    const/16 v0, 0x2000

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iput-object v0, p1, Lu1/b$a;->b:[B

    .line 21
    .line 22
    iput p0, p1, Lu1/b$a;->c:I

    .line 23
    .line 24
    iput p0, p1, Lu1/b$a;->d:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    array-length v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    array-length v2, v0

    .line 33
    invoke-static {v0, p0, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p1, Lu1/b$a;->b:[B

    .line 37
    .line 38
    :goto_1
    iget-object p0, p1, Lu1/b$a;->b:[B

    .line 39
    .line 40
    return-object p0
.end method

.method public static f([BILu1/b$a;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lu1/b$a;->b:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p2, Lu1/b$a;->c:I

    .line 6
    .line 7
    iget v1, p2, Lu1/b$a;->d:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p2, Lu1/b$a;->b:[B

    .line 15
    .line 16
    iget v1, p2, Lu1/b$a;->d:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget p0, p2, Lu1/b$a;->d:I

    .line 23
    .line 24
    add-int/2addr p0, p1

    .line 25
    iput p0, p2, Lu1/b$a;->d:I

    .line 26
    .line 27
    iget p1, p2, Lu1/b$a;->c:I

    .line 28
    .line 29
    if-lt p0, p1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    iput-object p0, p2, Lu1/b$a;->b:[B

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a([BILu1/b$a;)V
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, Lu1/b$a;

    .line 18
    .line 19
    invoke-direct {v0}, Lu1/b$a;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v1, p1

    .line 23
    invoke-virtual {p0, p1, v1, v0}, Lu1/b;->a([BILu1/b$a;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p0, p1, v1, v0}, Lu1/b;->a([BILu1/b$a;)V

    .line 28
    .line 29
    .line 30
    iget p1, v0, Lu1/b$a;->c:I

    .line 31
    .line 32
    new-array v1, p1, [B

    .line 33
    .line 34
    invoke-static {v1, p1, v0}, Lu1/b;->f([BILu1/b$a;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v1

    .line 38
    :cond_2
    :goto_1
    return-object p1

    .line 39
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "Unknown or unsupported character set name: UTF-8"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public abstract c([BILu1/b$a;)V
.end method

.method public final d([B)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lu1/b$a;

    .line 8
    .line 9
    invoke-direct {v0}, Lu1/b$a;-><init>()V

    .line 10
    .line 11
    .line 12
    array-length v1, p1

    .line 13
    invoke-virtual {p0, p1, v1, v0}, Lu1/b;->c([BILu1/b$a;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p0, p1, v1, v0}, Lu1/b;->c([BILu1/b$a;)V

    .line 18
    .line 19
    .line 20
    iget p1, v0, Lu1/b$a;->c:I

    .line 21
    .line 22
    iget v1, v0, Lu1/b$a;->d:I

    .line 23
    .line 24
    sub-int/2addr p1, v1

    .line 25
    new-array v1, p1, [B

    .line 26
    .line 27
    invoke-static {v1, p1, v0}, Lu1/b;->f([BILu1/b$a;)V

    .line 28
    .line 29
    .line 30
    move-object p1, v1

    .line 31
    :cond_1
    :goto_0
    const-string v0, "UTF-8"

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    move-object p1, v1

    .line 43
    :goto_1
    return-object p1

    .line 44
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "Unknown or unsupported character set name: UTF-8"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
