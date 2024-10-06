.class public final Lb/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/p;


# direct methods
.method public constructor <init>(Lb/f;)V
    .locals 0

    iput-object p1, p0, Lb/p$a;->b:Lb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/p$a;->b:Lb/p;

    invoke-virtual {v0, p1}, Lb/p;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
