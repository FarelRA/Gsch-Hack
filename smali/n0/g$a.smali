.class public final Ln0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lm0/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/g$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ln0/g$a;->b:Lm0/r;

    return-void
.end method
