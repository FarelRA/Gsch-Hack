.class public final Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Li2/b;->a:I

    .line 2
    .line 3
    const-class v0, Lz1/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Li2/b;->e(Ljava/lang/String;)Li2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lz1/b;->a:Li2/a;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    const/4 p0, 0x2

    aput-object v0, v1, p0

    sget-object p0, Lz1/b;->a:Li2/a;

    const-string p1, "{} is NOT available for {}. Algorithms available from underlying JCE: {}"

    invoke-interface {p0, p1, v1}, Li2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
