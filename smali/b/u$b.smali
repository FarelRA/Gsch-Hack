.class public final Lb/u$b;
.super Lm1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h0:Lb/u;


# direct methods
.method public constructor <init>(Lb/u;)V
    .locals 0

    iput-object p1, p0, Lb/u$b;->h0:Lb/u;

    invoke-direct {p0}, Lm1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lb/u$b;->h0:Lb/u;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/u;->t:Le/g;

    iget-object v0, v0, Lb/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
