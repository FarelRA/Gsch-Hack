.class public final Lc2/e;
.super Lc2/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lc2/d;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "n"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p1, v0, v1}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v0, "e"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v0, Lf2/b;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lf2/b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 23
    .line 24
    invoke-direct {v1, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Lf2/d;->a()Ljava/security/KeyFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    iput-object v1, p0, Lc2/b;->d:Ljava/security/Key;

    .line 38
    .line 39
    invoke-virtual {p0}, Lc2/d;->e()V

    .line 40
    .line 41
    .line 42
    const-string v1, "d"

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v1, "p"

    .line 56
    .line 57
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v1, "q"

    .line 68
    .line 69
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v1, "dp"

    .line 74
    .line 75
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const-string v1, "dq"

    .line 80
    .line 81
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-string v1, "qi"

    .line 86
    .line 87
    invoke-static {p1, v1, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-instance p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    invoke-direct/range {v2 .. v10}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lf2/b;->b(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 102
    .line 103
    invoke-direct {p1, v3, v5}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lf2/b;->b(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lg2/b;

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Invalid key spec: "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    .line 129
    .line 130
    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "RSA"

    return-object v0
.end method

.method public final f(Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc2/b;->d:Ljava/security/Key;

    .line 2
    .line 3
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "n"

    .line 10
    .line 11
    invoke-static {p1, v2, v1}, Lc2/d;->h(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "e"

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v1, v0}, Lc2/d;->h(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
