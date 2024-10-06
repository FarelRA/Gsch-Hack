.class public final Lc2/c;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>(Lw1/a$b;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lc2/b;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf/c;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "k"

    .line 13
    .line 14
    invoke-static {p1, v2, v1}, Lc2/b;->c(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lf/c;->f(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lc2/c;->e:[B

    .line 23
    .line 24
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 25
    .line 26
    const-string v1, "AES"

    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lc2/b;->d:Ljava/security/Key;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    sget-object v0, Lc2/b$b;->b:Lc2/b$b;

    .line 2
    .line 3
    sget-object v1, Lc2/b$b;->a:Lc2/b$b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lf/c;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lc2/c;->e:[B

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lf/c;->g([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "k"

    .line 25
    .line 26
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "oct"

    return-object v0
.end method
