.class public final Lnet/geschool/app/student/MainActivity$o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/geschool/app/student/MainActivity$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/geschool/app/student/MainActivity$o;


# direct methods
.method public constructor <init>(Lnet/geschool/app/student/MainActivity$o;)V
    .locals 0

    iput-object p1, p0, Lnet/geschool/app/student/MainActivity$o$b;->b:Lnet/geschool/app/student/MainActivity$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnet/geschool/app/student/MainActivity$o$a;->b:Lnet/geschool/app/student/MainActivity$o;

    iget-object v0, v0, Lnet/geschool/app/student/MainActivity$o;->b:Lnet/geschool/app/student/MainActivity;

    iget-object v0, v0, Lnet/geschool/app/student/MainActivity;->mScreenPinned:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
