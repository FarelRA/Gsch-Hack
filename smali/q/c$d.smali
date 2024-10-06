.class public final Lq/c$d;
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
    name = "d"
.end annotation


# instance fields
.field public final a:Lv/a;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lv/a;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/c$d;->a:Lv/a;

    iput p2, p0, Lq/c$d;->c:I

    iput p3, p0, Lq/c$d;->b:I

    return-void
.end method
