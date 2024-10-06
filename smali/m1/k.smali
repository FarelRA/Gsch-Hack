.class public final Lm1/k;
.super Lo1/m;
.source "SourceFile"


# instance fields
.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Lu0/d;

.field public final synthetic f:Lm1/c;

.field public final synthetic g:Lm1/m;


# direct methods
.method public constructor <init>(Lm1/m;Lu0/d;[BLjava/lang/Long;Lu0/d;Lm1/e;)V
    .locals 0

    iput-object p1, p0, Lm1/k;->g:Lm1/m;

    iput-object p3, p0, Lm1/k;->c:[B

    iput-object p4, p0, Lm1/k;->d:Ljava/lang/Long;

    iput-object p5, p0, Lm1/k;->e:Lu0/d;

    iput-object p6, p0, Lm1/k;->f:Lm1/c;

    invoke-direct {p0, p2}, Lo1/m;-><init>(Lu0/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p1, Lo1/t;

    if-eqz v0, :cond_0

    new-instance v0, Lm1/b;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    invoke-super {p0, v0}, Lo1/m;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lo1/m;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm1/k;->e:Lu0/d;

    .line 2
    .line 3
    iget-object v1, p0, Lm1/k;->g:Lm1/m;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Lm1/m;->c:Lo1/s;

    .line 6
    .line 7
    iget-object v2, v2, Lo1/s;->m:Landroid/os/IInterface;

    .line 8
    .line 9
    iget-object v3, p0, Lm1/k;->c:[B

    .line 10
    .line 11
    iget-object v4, p0, Lm1/k;->d:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-static {v1, v3, v4}, Lm1/m;->a(Lm1/m;[BLjava/lang/Long;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Lm1/l;

    .line 18
    .line 19
    invoke-direct {v4, v1, v0}, Lm1/l;-><init>(Lm1/m;Lu0/d;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v3, v4}, Lo1/j;->a(Landroid/os/Bundle;Lm1/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v2

    .line 27
    iget-object v1, v1, Lm1/m;->a:Lo1/l;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iget-object v5, p0, Lm1/k;->f:Lm1/c;

    .line 34
    .line 35
    aput-object v5, v3, v4

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x6

    .line 41
    const-string v5, "PlayCore"

    .line 42
    .line 43
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    iget-object v1, v1, Lo1/l;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "requestIntegrityToken(%s)"

    .line 52
    .line 53
    invoke-static {v1, v4, v3}, Lo1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v5, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    new-instance v1, Lm1/b;

    .line 61
    .line 62
    const/16 v3, -0x64

    .line 63
    .line 64
    invoke-direct {v1, v3, v2}, Lm1/b;-><init>(ILjava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lu0/d;->a(Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
