.class public abstract Lc2/d;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lc2/b;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "x5c"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lc2/d;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Lf/c;

    .line 30
    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lf/c;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    new-instance v3, Lu1/a;

    .line 53
    .line 54
    sget-object v4, Lu1/a;->f:[B

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v3, v5, v4, v5}, Lu1/a;-><init>(I[BZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Lu1/b;->b(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 65
    .line 66
    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    iget-object v3, v1, Lf/c;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Ljava/security/cert/CertificateFactory;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    iget-object v2, p0, Lc2/d;->e:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Lg2/b;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "Unable to convert "

    .line 91
    .line 92
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " value to X509Certificate: "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_0
    const-string v0, "x5t"

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lc2/d;->f:Ljava/lang/String;

    .line 123
    .line 124
    const-string v0, "x5t#S256"

    .line 125
    .line 126
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    iput-object v0, p0, Lc2/d;->g:Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "x5u"

    .line 135
    .line 136
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ljava/lang/String;

    .line 141
    .line 142
    iput-object p1, p0, Lc2/d;->h:Ljava/lang/String;

    .line 143
    .line 144
    return-void
.end method

.method public static g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc2/b;->c(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lf/c;

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-direct {p1, p2}, Lf/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lf/c;->f(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Ljava/math/BigInteger;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public static h(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    new-instance v0, Lf/c;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lm1/h;->J(Ljava/math/BigInteger;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, p2}, Lf/c;->g([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static i(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 3

    .line 1
    new-instance v0, Lf/c;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lm1/h;->J(Ljava/math/BigInteger;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    array-length v1, p2

    .line 13
    if-le p3, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [[B

    .line 17
    .line 18
    array-length v2, p2

    .line 19
    sub-int/2addr p3, v2

    .line 20
    new-array p3, p3, [B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p3, v1, v2

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    aput-object p2, v1, p3

    .line 27
    .line 28
    invoke-static {v1}, Lm1/h;->p([[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_0
    invoke-virtual {v0, p2}, Lf/c;->g([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lc2/d;->f(Ljava/util/LinkedHashMap;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc2/d;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v1, Lf/c;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lf/c;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lu1/a;

    .line 45
    .line 46
    sget-object v4, Lu1/a;->f:[B

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-direct {v3, v5, v4, v5}, Lu1/a;-><init>(I[BZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Lu1/b;->d([B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "Unexpected problem getting encoded certificate."

    .line 64
    .line 65
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_0
    const-string v0, "x5c"

    .line 70
    .line 71
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_1
    const-string v0, "x5t"

    .line 75
    .line 76
    iget-object v1, p0, Lc2/d;->f:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v1, p1}, Lc2/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "x5t#S256"

    .line 82
    .line 83
    iget-object v1, p0, Lc2/d;->g:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0, v1, p1}, Lc2/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "x5u"

    .line 89
    .line 90
    iget-object v1, p0, Lc2/d;->h:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, v1, p1}, Lc2/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc2/d;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lc2/b;->d:Ljava/security/Key;

    .line 27
    .line 28
    check-cast v3, Ljava/security/PublicKey;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_1
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "The key in the first certificate MUST match the bare public key represented by other members of the JWK. Public key = "

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lc2/b;->d:Ljava/security/Key;

    .line 50
    .line 51
    check-cast v3, Ljava/security/PublicKey;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " cert = "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public abstract f(Ljava/util/LinkedHashMap;)V
.end method
