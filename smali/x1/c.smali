.class public final Lx1/c;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lx1/b;
.implements Lx1/d;


# direct methods
.method public static c(Ljava/util/Map;Ljava/io/StringWriter;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 v0, 0x7b

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v1, 0x2c

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    .line 44
    const/16 v2, 0x22

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3}, Lm1/h;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x3a

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1, p1}, Lm1/h;->N(Ljava/lang/Object;Ljava/io/StringWriter;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 p0, 0x7d

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
