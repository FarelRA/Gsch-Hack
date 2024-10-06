.class public abstract Le2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lv1/a;


# instance fields
.field public final a:Lf/c;

.field public final b:Le2/a;

.field public c:[B

.field public d:Ljava/security/Key;

.field public final e:Z

.field public f:Ljava/lang/String;

.field public g:Lz1/c;

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lv1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/a;

    invoke-direct {v0}, Lv1/a;-><init>()V

    sput-object v0, Le2/b;->j:Lv1/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, Le2/b;->a:Lf/c;

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Le2/b;->b:Le2/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/b;->e:Z

    sget-object v0, Lz1/c;->c:Lz1/c;

    iput-object v0, p0, Le2/b;->g:Lz1/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le2/b;->h:Ljava/util/Set;

    sget-object v0, Le2/b;->j:Lv1/a;

    iput-object v0, p0, Le2/b;->i:Lv1/a;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lg2/b;

    .line 11
    .line 12
    const-string v0, "The "

    .line 13
    .line 14
    const-string v1, " cannot be empty."

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static c(Ljava/lang/String;)Le2/b;
    .locals 5

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "."

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/String;

    .line 19
    .line 20
    array-length v3, v0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const-string v3, ""

    .line 27
    .line 28
    aput-object v3, v2, v0

    .line 29
    .line 30
    move-object v0, v2

    .line 31
    :cond_0
    array-length v2, v0

    .line 32
    const/4 v3, 0x5

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    new-instance v1, La2/j;

    .line 36
    .line 37
    invoke-direct {v1}, La2/j;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    array-length v2, v0

    .line 42
    const/4 v3, 0x3

    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    new-instance v1, Ld2/d;

    .line 46
    .line 47
    invoke-direct {v1}, Ld2/d;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1, v0}, Le2/b;->d([Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object p0, v1, Le2/b;->f:Ljava/lang/String;

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_2
    new-instance p0, Lg2/b;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Invalid JOSE Compact Serialization. Expecting either 3 or 5 parts for JWS or JWE respectively but was "

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    array-length v0, v0

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le2/b;->b:Le2/a;

    .line 2
    .line 3
    iget-object v0, v0, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    const-string v1, "crit"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Le2/b;->h:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lg2/b;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "Unrecognized header \'"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "\' marked as critical."

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    new-instance v0, Lg2/b;

    .line 69
    .line 70
    const-string v1, "crit header value not an array."

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public abstract d([Ljava/lang/String;)V
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Encoded Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Le2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le2/b;->b:Le2/a;

    .line 7
    .line 8
    iput-object p1, v0, Le2/a;->d:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, v0, Le2/a;->a:Lf/c;

    .line 11
    .line 12
    const-string v2, "UTF-8"

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    move-object v3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :goto_0
    iput-object v1, v0, Le2/a;->d:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v3, v0, Le2/a;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v3}, Lw1/a;->a(Ljava/lang/String;)Lw1/a$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, v0, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    return-void

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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/b;->b:Le2/a;

    invoke-virtual {v1}, Le2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
