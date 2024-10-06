.class public final Lc2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lc2/b;
    .locals 6

    .line 1
    const-string v0, "{\"kty\":\"RSA\",\"n\":\"sXchDaQebHnPiGvyDOAT4saGEUetSyo9MKLOoWFsueri23bOdgWp4Dy1WlUzewbgBHod5pcM9H95GQRV3JDXboIRROSBigeC5yjU1hGzHHyXss8UDprecbAYxknTcQkhslANGRUZmdTOQ5qTRsLAt6BTYuyvVRdhS8exSZEy_c4gs_7svlJJQ4H9_NxsiIoLwAEk7-Q3UXERGYw_75IDrGA84-lA_-Ct4eTlXHBIY2EaV7t7LjJaynVJCpkv4LKjTTAumiGUIuQhrNhZLuF_RJLqHpM2kgWFLU7-VTdL1VbC2tejvcI2BlMkEpk1BzBZI0KQB0GaDWFLN-aEAw3vRw\",\"e\":\"AQAB\"}"

    .line 2
    .line 3
    invoke-static {v0}, Lw1/a;->a(Ljava/lang/String;)Lw1/a$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kty"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Lc2/b;->c(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x89e

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq v3, v4, :cond_4

    .line 25
    .line 26
    const v4, 0x13e20

    .line 27
    .line 28
    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    const v4, 0x1ad20

    .line 32
    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "oct"

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v3, "RSA"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v3, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const-string v3, "EC"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_5

    .line 66
    .line 67
    :goto_0
    const/4 v3, -0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    const/4 v3, 0x0

    .line 70
    :goto_1
    if-eqz v3, :cond_8

    .line 71
    .line 72
    if-eq v3, v2, :cond_7

    .line 73
    .line 74
    if-ne v3, v5, :cond_6

    .line 75
    .line 76
    new-instance v1, Lc2/c;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lc2/c;-><init>(Lw1/a$b;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    new-instance v0, Lg2/b;

    .line 83
    .line 84
    const-string v2, "Unknown key type algorithm: \'"

    .line 85
    .line 86
    const-string v3, "\'"

    .line 87
    .line 88
    invoke-static {v2, v1, v3}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lg2/b;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_7
    new-instance v1, Lc2/e;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lc2/e;-><init>(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    new-instance v1, Lc2/a;

    .line 103
    .line 104
    invoke-direct {v1, v0}, Lc2/a;-><init>(Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-object v1
.end method
