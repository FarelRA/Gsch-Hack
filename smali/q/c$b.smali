.class public final Lq/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lq/c$c;


# direct methods
.method public constructor <init>([Lq/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/c$b;->a:[Lq/c$c;

    return-void
.end method
