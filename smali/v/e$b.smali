.class public final Lv/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lv/e$c;


# direct methods
.method public constructor <init>(I[Lv/e$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/e$b;->a:I

    iput-object p2, p0, Lv/e$b;->b:[Lv/e$c;

    return-void
.end method
