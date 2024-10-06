.class public final Lg/g0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lg/g0;


# direct methods
.method public constructor <init>(Lg/g0;)V
    .locals 0

    iput-object p1, p0, Lg/g0$e;->b:Lg/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g0$e;->b:Lg/g0;

    .line 2
    .line 3
    iget-object v1, v0, Lg/g0;->d:Lg/c0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lg/g0;->d:Lg/c0;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Lg/g0;->d:Lg/c0;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-le v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lg/g0;->d:Lg/c0;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, v0, Lg/g0;->n:I

    .line 36
    .line 37
    if-gt v1, v2, :cond_0

    .line 38
    .line 39
    iget-object v1, v0, Lg/g0;->z:Lg/o;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lg/g0;->c()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
