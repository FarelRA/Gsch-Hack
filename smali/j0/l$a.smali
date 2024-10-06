.class public final Lj0/l$a;
.super Lj0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/l;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj0/g;


# direct methods
.method public constructor <init>(Lj0/g;)V
    .locals 0

    iput-object p1, p0, Lj0/l$a;->a:Lj0/g;

    invoke-direct {p0}, Lj0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lj0/g;)V
    .locals 1

    iget-object v0, p0, Lj0/l$a;->a:Lj0/g;

    invoke-virtual {v0}, Lj0/g;->y()V

    invoke-virtual {p1, p0}, Lj0/g;->v(Lj0/g$d;)V

    return-void
.end method
