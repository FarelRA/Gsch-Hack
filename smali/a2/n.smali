.class public abstract La2/n;
.super Lz1/f;
.source "SourceFile"

# interfaces
.implements La2/k;


# instance fields
.field public final d:Li2/a;

.field public e:Ljava/security/spec/AlgorithmParameterSpec;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz1/f;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Li2/b;->e(Ljava/lang/String;)Li2/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, La2/n;->d:Li2/a;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, La2/n;->f:Z

    .line 20
    .line 21
    iput-object p1, p0, Lz1/f;->c:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lz1/f;->b:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b(Lx/b;Ljava/security/Key;Lv1/a;Le2/a;[B)Ljava/security/Key;
    .locals 7

    .line 1
    iget-object p3, p3, Lv1/a;->a:Lv1/a$a;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lz1/f;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p3}, Lm1/h;->u(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    :try_start_0
    iget-object p4, p0, La2/n;->e:Ljava/security/spec/AlgorithmParameterSpec;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-nez p4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p3, v0, p2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p2, p1, Lx/b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p2, Ljava/lang/String;

    .line 33
    .line 34
    const/4 p4, 0x3

    .line 35
    :try_start_1
    invoke-virtual {p3, p5, p2, p4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    return-object p1

    .line 40
    :catch_2
    move-exception p3

    .line 41
    iget-object p4, p0, La2/n;->d:Li2/a;

    .line 42
    .line 43
    invoke-interface {p4}, Li2/a;->c()Z

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    if-eqz p5, :cond_5

    .line 48
    .line 49
    new-instance p5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    :goto_1
    if-eqz p3, :cond_4

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string v0, "; caused by: "

    .line 60
    .line 61
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " at "

    .line 68
    .line 69
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    array-length v1, v0

    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    :goto_2
    if-ge v3, v1, :cond_3

    .line 80
    .line 81
    aget-object v4, v0, v3

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-class v6, La2/j;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    const-string v0, "...omitted..."

    .line 100
    .line 101
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, "; "

    .line 109
    .line 110
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    const/4 v0, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    const-string p5, "Key unwrap failed. Substituting a randomly generated CEK and proceeding. {}"

    .line 127
    .line 128
    invoke-interface {p4, p3, p5}, Li2/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget p1, p1, Lx/b;->b:I

    .line 132
    .line 133
    new-instance p3, Ljava/security/SecureRandom;

    .line 134
    .line 135
    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    .line 136
    .line 137
    .line 138
    new-array p1, p1, [B

    .line 139
    .line 140
    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    .line 142
    .line 143
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 144
    .line 145
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object p3

    .line 149
    :goto_4
    new-instance p2, Lg2/b;

    .line 150
    .line 151
    const-string p3, "Unable to initialize cipher for key decryption"

    .line 152
    .line 153
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    throw p2
.end method

.method public final j(Lx/b;Ljava/security/Key;Lv1/a;)V
    .locals 3

    .line 1
    iget v0, p1, Lx/b;->b:I

    .line 2
    .line 3
    new-instance v1, Ljava/security/SecureRandom;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, La2/n;->f:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object p3, p3, Lv1/a;->a:Lv1/a$a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p3, p3, Lv1/a;->b:Lv1/a$a;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p3, p0, Lz1/f;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p3}, Lm1/h;->u(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :try_start_0
    iget-object v1, p0, La2/n;->e:Ljava/security/spec/AlgorithmParameterSpec;

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_2
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p3, v2, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object p1, p1, Lx/b;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    invoke-direct {p2, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_2
    new-instance p2, Lg2/b;

    .line 63
    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "Unable to encrypt the Content Encryption Key: "

    .line 67
    .line 68
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-direct {p2, p3, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method
