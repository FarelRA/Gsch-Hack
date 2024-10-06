.class public final Lv/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lv/g;


# direct methods
.method public constructor <init>(Lv/g;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv/g$a;->c:Lv/g;

    iput-object p2, p0, Lv/g$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv/g$a;->c:Lv/g;

    iget-object v0, v0, Lv/g;->d:Lv/f$b;

    iget-object v1, p0, Lv/g$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lv/f$b;->a(Ljava/lang/Object;)V

    return-void
.end method
