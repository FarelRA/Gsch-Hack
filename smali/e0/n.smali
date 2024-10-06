.class public final Le0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le0/t;

.field public final synthetic c:Lk/b;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Le0/o$a;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Le0/c;

.field public final synthetic h:Le0/c;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Le0/t;Lk/b;Ljava/lang/Object;Le0/o$a;Ljava/util/ArrayList;Landroid/view/View;Le0/c;Le0/c;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Le0/n;->b:Le0/t;

    iput-object p2, p0, Le0/n;->c:Lk/b;

    iput-object p3, p0, Le0/n;->d:Ljava/lang/Object;

    iput-object p4, p0, Le0/n;->e:Le0/o$a;

    iput-object p5, p0, Le0/n;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Le0/n;->g:Le0/c;

    iput-object p8, p0, Le0/n;->h:Le0/c;

    iput-boolean p9, p0, Le0/n;->i:Z

    iput-object p10, p0, Le0/n;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Le0/n;->k:Ljava/lang/Object;

    iput-object p12, p0, Le0/n;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le0/n;->b:Le0/t;

    .line 2
    .line 3
    iget-object v1, p0, Le0/n;->c:Lk/b;

    .line 4
    .line 5
    iget-object v2, p0, Le0/n;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Le0/n;->e:Le0/o$a;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Le0/o;->c(Le0/t;Lk/b;Ljava/lang/Object;Le0/o$a;)Lk/b;

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Le0/n;->i:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Le0/n;->h:Le0/c;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v4, p0, Le0/n;->g:Le0/c;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Le0/n;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v5, p0, Le0/n;->f:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v4, v5}, Le0/t;->n(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Le0/n;->k:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v2, v3, v0, v1}, Le0/o;->g(Lk/b;Le0/o$a;Ljava/lang/Object;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Le0/n;->l:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-static {v0, v1}, Le0/t;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
