.class public final Lc2/a;
.super Lc2/d;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7

    .line 1
    const-string v0, "Invalid key spec: "

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lc2/d;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "crv"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {p1, v1, v2}, Lc2/b;->c(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lc2/a;->i:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lf2/c;->a:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/security/spec/ECParameterSpec;

    .line 22
    .line 23
    const-string v3, "x"

    .line 24
    .line 25
    invoke-static {p1, v3, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "y"

    .line 30
    .line 31
    invoke-static {p1, v4, v2}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v4, Lf2/b;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5}, Lf2/b;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Ljava/security/spec/ECPoint;

    .line 42
    .line 43
    invoke-direct {v6, v3, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    .line 47
    .line 48
    invoke-direct {v2, v6, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v4}, Lf2/d;->a()Ljava/security/KeyFactory;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    iput-object v2, p0, Lc2/b;->d:Ljava/security/Key;

    .line 62
    .line 63
    invoke-virtual {p0}, Lc2/d;->e()V

    .line 64
    .line 65
    .line 66
    const-string v2, "d"

    .line 67
    .line 68
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    invoke-static {p1, v2, v5}, Lc2/d;->g(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    .line 79
    .line 80
    invoke-direct {v2, p1, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 81
    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v4}, Lf2/d;->a()Ljava/security/KeyFactory;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance v1, Lg2/b;

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {v1, v0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_1
    move-exception p1

    .line 115
    new-instance v1, Lg2/b;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {v1, v0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    .line 131
    .line 132
    throw v1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "EC"

    return-object v0
.end method

.method public final f(Ljava/util/LinkedHashMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc2/b;->d:Ljava/security/Key;

    .line 2
    .line 3
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lf2/c;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v2, p0, Lc2/a;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/security/spec/ECParameterSpec;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-double v3, v1

    .line 32
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 33
    .line 34
    div-double/2addr v3, v5

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    double-to-int v1, v3

    .line 40
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "x"

    .line 45
    .line 46
    invoke-static {p1, v4, v3, v1}, Lc2/d;->i(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 47
    .line 48
    .line 49
    const-string v3, "y"

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v3, v0, v1}, Lc2/d;->i(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 56
    .line 57
    .line 58
    const-string v0, "crv"

    .line 59
    .line 60
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void
.end method
