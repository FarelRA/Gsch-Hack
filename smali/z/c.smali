.class public final Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final a:Lz/b;


# direct methods
.method public constructor <init>(Li1/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/c;->a:Lz/b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lz/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lz/c;

    iget-object v0, p0, Lz/c;->a:Lz/b;

    iget-object p1, p1, Lz/c;->a:Lz/b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lz/c;->a:Lz/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz/c;->a:Lz/b;

    .line 2
    .line 3
    check-cast v0, Li1/c$a;

    .line 4
    .line 5
    iget-object v0, v0, Li1/c$a;->a:Li1/c;

    .line 6
    .line 7
    invoke-static {v0, p1}, Li1/c;->a(Li1/c;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
