.class public final Lw/b$d;
.super Lw/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lw/b$a;->a:Lw/b$a;

    invoke-direct {p0, v0}, Lw/b$c;-><init>(Lw/b$a;)V

    iput-boolean p1, p0, Lw/b$d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lw/b$d;->b:Z

    return v0
.end method
