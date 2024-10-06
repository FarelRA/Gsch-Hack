.class public final Le0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le0/c;

.field public final synthetic c:Le0/c;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Le0/t;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Le0/c;Le0/c;ZLk/b;Landroid/view/View;Le0/t;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Le0/m;->b:Le0/c;

    iput-object p2, p0, Le0/m;->c:Le0/c;

    iput-boolean p3, p0, Le0/m;->d:Z

    iput-object p5, p0, Le0/m;->e:Landroid/view/View;

    iput-object p6, p0, Le0/m;->f:Le0/t;

    iput-object p7, p0, Le0/m;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le0/m;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le0/m;->c:Le0/c;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le0/m;->b:Le0/c;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Le0/m;->e:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Le0/m;->f:Le0/t;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Le0/m;->g:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-static {v0, v1}, Le0/t;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
