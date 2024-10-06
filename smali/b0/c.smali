.class public abstract Lb0/c;
.super Lb0/a;
.source "SourceFile"


# instance fields
.field public final j:I

.field public final k:I

.field public final l:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lb0/a;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lb0/c;->k:I

    iput p2, p0, Lb0/c;->j:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lb0/c;->l:Landroid/view/LayoutInflater;

    return-void
.end method
