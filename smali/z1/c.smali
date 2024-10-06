.class public final Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lz1/c;

.field public static final d:Lz1/c;


# instance fields
.field public final a:I

.field public final b:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz1/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lz1/c;-><init>(I[Ljava/lang/String;)V

    sput-object v0, Lz1/c;->c:Lz1/c;

    new-instance v0, Lz1/c;

    const-string v1, "none"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lz1/c;-><init>(I[Ljava/lang/String;)V

    sput-object v0, Lz1/c;->d:Lz1/c;

    new-instance v0, Lz1/c;

    const/4 v2, 0x1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lz1/c;-><init>(I[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput p1, p0, Lz1/c;->a:I

    new-instance p1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lz1/c;->b:Ljava/util/HashSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ConstraintType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lz1/c;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Lm0/n;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lz1/c;->b:Ljava/util/HashSet;

    .line 8
    .line 9
    const-string v2, "\'"

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Lg2/a;

    .line 25
    .line 26
    const-string v1, "\' is a blacklisted algorithm."

    .line 27
    .line 28
    invoke-static {v2, p1, v1}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_3
    new-instance v0, Lg2/a;

    .line 44
    .line 45
    const-string v1, "\' is not a whitelisted algorithm."

    .line 46
    .line 47
    invoke-static {v2, p1, v1}, Lq1/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Lg2/a;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method
