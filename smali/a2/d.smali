.class public La2/d;
.super La2/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/d$c;,
        La2/d$b;,
        La2/d$a;
    }
.end annotation


# instance fields
.field public final g:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "AESWrap"

    invoke-direct {p0, v0, p2}, La2/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, La2/d;->g:I

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz1/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Cipher"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lz1/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, La2/d;->g:I

    .line 12
    .line 13
    invoke-static {v1, v0}, La2/e;->a(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final i(Ljava/security/Key;La2/f;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lz1/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, La2/d;->g:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lm1/h;->M(Ljava/security/Key;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
