.class public final Lj0/l$b;
.super Lj0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lj0/l;


# direct methods
.method public constructor <init>(Lj0/l;)V
    .locals 0

    invoke-direct {p0}, Lj0/j;-><init>()V

    iput-object p1, p0, Lj0/l$b;->a:Lj0/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lj0/l$b;->a:Lj0/l;

    iget-boolean v1, v0, Lj0/l;->z:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj0/g;->F()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj0/l;->z:Z

    :cond_0
    return-void
.end method

.method public final c(Lj0/g;)V
    .locals 2

    iget-object v0, p0, Lj0/l$b;->a:Lj0/l;

    iget v1, v0, Lj0/l;->y:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lj0/l;->y:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj0/l;->z:Z

    invoke-virtual {v0}, Lj0/g;->m()V

    :cond_0
    invoke-virtual {p1, p0}, Lj0/g;->v(Lj0/g$d;)V

    return-void
.end method
