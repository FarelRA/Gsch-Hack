.class public final Lm1/l;
.super Lo1/k;
.source "SourceFile"


# instance fields
.field public final a:Lo1/l;

.field public final b:Lu0/d;

.field public final synthetic c:Lm1/m;


# direct methods
.method public constructor <init>(Lm1/m;Lu0/d;)V
    .locals 1

    iput-object p1, p0, Lm1/l;->c:Lm1/m;

    invoke-direct {p0}, Lo1/k;-><init>()V

    new-instance p1, Lo1/l;

    const-string v0, "OnRequestIntegrityTokenCallback"

    invoke-direct {p1, v0}, Lo1/l;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lm1/l;->a:Lo1/l;

    iput-object p2, p0, Lm1/l;->b:Lu0/d;

    return-void
.end method
