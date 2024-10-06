.class public final Lm1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo1/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lo1/b;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lm1/j;->a:Lm1/h;

    .line 10
    .line 11
    sget-object v1, Lo1/v;->c:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v1, p1, Lo1/v;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lo1/v;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lo1/v;-><init>(Lo1/a;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v1

    .line 24
    :goto_0
    new-instance v1, Lm1/o;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, Lm1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    instance-of p1, v1, Lo1/v;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p1, Lo1/v;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lo1/v;-><init>(Lo1/a;)V

    .line 37
    .line 38
    .line 39
    move-object v1, p1

    .line 40
    :goto_1
    new-instance p1, Lf/c;

    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    invoke-direct {p1, v0, v1}, Lf/c;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    instance-of v0, p1, Lo1/v;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance v0, Lo1/v;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lo1/v;-><init>(Lo1/a;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :goto_2
    iput-object p1, p0, Lm1/g;->a:Lo1/c;

    .line 58
    .line 59
    return-void
.end method
