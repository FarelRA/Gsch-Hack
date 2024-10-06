.class public final Lb/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb/j$f;


# direct methods
.method public constructor <init>(Lb/j$f;)V
    .locals 0

    iput-object p1, p0, Lb/o;->a:Lb/j$f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/o;->a:Lb/j$f;

    .line 2
    .line 3
    iget-object p2, p1, Lb/j$f;->a:Lb/t;

    .line 4
    .line 5
    invoke-virtual {p2}, Lb/t;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-boolean v0, p1, Lb/j$f;->b:Z

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    iput-boolean p2, p1, Lb/j$f;->b:Z

    .line 14
    .line 15
    iget-object p1, p1, Lb/j$f;->e:Lb/j;

    .line 16
    .line 17
    invoke-virtual {p1}, Lb/j;->c()Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
