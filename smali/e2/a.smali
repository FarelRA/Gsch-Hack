.class public final Le2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf/c;

.field public b:Ljava/util/LinkedHashMap;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V

    iput-object v0, p0, Le2/a;->a:Lf/c;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le2/a;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le2/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    new-instance v1, Ljava/io/StringWriter;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {v0, v1}, Lm1/h;->N(Ljava/lang/Object;Ljava/io/StringWriter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iput-object v0, p0, Le2/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Le2/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le2/a;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method
