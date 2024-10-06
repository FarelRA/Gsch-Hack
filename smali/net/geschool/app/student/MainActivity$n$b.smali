.class public final Lnet/geschool/app/student/MainActivity$n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/geschool/app/student/MainActivity$n;->unlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/geschool/app/student/MainActivity$n;


# direct methods
.method public constructor <init>(Lnet/geschool/app/student/MainActivity$n;)V
    .locals 0

    iput-object p1, p0, Lnet/geschool/app/student/MainActivity$n$b;->b:Lnet/geschool/app/student/MainActivity$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnet/geschool/app/student/MainActivity$n$b;->b:Lnet/geschool/app/student/MainActivity$n;

    iget-object v0, v0, Lnet/geschool/app/student/MainActivity$n;->a:Lnet/geschool/app/student/MainActivity;

    invoke-virtual {v0}, Lnet/geschool/app/student/MainActivity;->unlockdown()V

    return-void
.end method
