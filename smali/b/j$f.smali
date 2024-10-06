.class public final Lb/j$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:Lb/t;

.field public b:Z

.field public c:Lb/o;

.field public d:Landroid/content/IntentFilter;

.field public final synthetic e:Lb/j;


# direct methods
.method public constructor <init>(Lb/j;Lb/t;)V
    .locals 0

    iput-object p1, p0, Lb/j$f;->e:Lb/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/j$f;->a:Lb/t;

    invoke-virtual {p2}, Lb/t;->a()Z

    move-result p1

    iput-boolean p1, p0, Lb/j$f;->b:Z

    return-void
.end method
