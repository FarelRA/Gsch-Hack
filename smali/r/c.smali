.class public final Lr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:Lr/j;

.field public static final b:Lk/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr/h;

    .line 8
    .line 9
    invoke-direct {v0}, Lr/h;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    sput-object v0, Lr/c;->a:Lr/j;

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lr/g;

    .line 20
    .line 21
    invoke-direct {v0}, Lr/g;-><init>()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x1a

    .line 26
    .line 27
    if-lt v0, v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Lr/f;

    .line 30
    .line 31
    invoke-direct {v0}, Lr/f;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v1, 0x18

    .line 36
    .line 37
    if-lt v0, v1, :cond_5

    .line 38
    .line 39
    sget-object v0, Lr/e;->c:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v1, "TypefaceCompatApi24Impl"

    .line 44
    .line 45
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_3
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const/4 v0, 0x0

    .line 55
    :goto_1
    if-eqz v0, :cond_5

    .line 56
    .line 57
    new-instance v0, Lr/e;

    .line 58
    .line 59
    invoke-direct {v0}, Lr/e;-><init>()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    new-instance v0, Lr/d;

    .line 64
    .line 65
    invoke-direct {v0}, Lr/d;-><init>()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_2
    new-instance v0, Lk/f;

    .line 70
    .line 71
    const/16 v1, 0x10

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lk/f;-><init>(I)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lr/c;->b:Lk/f;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Lq/c$a;Landroid/content/res/Resources;IILg/w$a;)Landroid/graphics/Typeface;
    .locals 5

    instance-of v0, p1, Lq/c$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Lq/c$d;

    .line 1
    iget v0, p1, Lq/c$d;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p1, Lq/c$d;->b:I

    .line 3
    iget-object p1, p1, Lq/c$d;->a:Lv/a;

    .line 4
    sget-object v3, Lv/e;->a:Lk/f;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v4, p1, Lv/a;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lv/e;->a:Lk/f;

    invoke-virtual {v4, v3}, Lk/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    .line 8
    iget-object p0, p5, Lg/w$a;->b:Lg/w;

    iget-boolean p1, p0, Lg/w;->k:Z

    if-eqz p1, :cond_1

    .line 9
    iput-object v4, p0, Lg/w;->j:Landroid/graphics/Typeface;

    iget-object p1, p5, Lg/w$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget p0, p0, Lg/w;->i:I

    invoke-virtual {p1, v4, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    move-object v1, v4

    goto/16 :goto_3

    :cond_2
    if-eqz v0, :cond_4

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 10
    invoke-static {p0, p1, p4}, Lv/e;->b(Landroid/content/Context;Lv/a;I)Lv/e$d;

    move-result-object p0

    iget p1, p0, Lv/e$d;->b:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lv/e$d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p5, p1, v1}, Lq/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p5, p1, v1}, Lq/e;->a(ILandroid/os/Handler;)V

    :goto_1
    iget-object v1, p0, Lv/e$d;->a:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_4
    new-instance v4, Lv/b;

    invoke-direct {v4, p0, p1, p4, v3}, Lv/b;-><init>(Landroid/content/Context;Lv/a;ILjava/lang/String;)V

    if-eqz v0, :cond_5

    :try_start_0
    sget-object p0, Lv/e;->b:Lv/f;

    invoke-virtual {p0, v4, v2}, Lv/f;->c(Lv/b;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/e$d;

    iget-object v1, p0, Lv/e$d;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :cond_5
    new-instance p0, Lv/c;

    invoke-direct {p0, p5}, Lv/c;-><init>(Lg/w$a;)V

    sget-object v0, Lv/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object p1, Lv/e;->d:Lk/h;

    .line 11
    invoke-virtual {p1, v3, v1}, Lk/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 12
    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_6

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_3

    :cond_6
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3, p5}, Lk/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lv/e;->b:Lv/f;

    new-instance p1, Lv/d;

    invoke-direct {p1, v3}, Lv/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lv/g;

    invoke-direct {v0, v4, p5, p1}, Lv/g;-><init>(Lv/b;Landroid/os/Handler;Lv/d;)V

    invoke-virtual {p0, v0}, Lv/f;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 15
    :cond_7
    sget-object v0, Lr/c;->a:Lr/j;

    check-cast p1, Lq/c$b;

    invoke-virtual {v0, p0, p1, p2, p4}, Lr/j;->a(Landroid/content/Context;Lq/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p5, p0, v1}, Lq/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_8
    const/4 p1, -0x3

    invoke-virtual {p5, p1, v1}, Lq/e;->a(ILandroid/os/Handler;)V

    :goto_2
    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_9

    sget-object p0, Lr/c;->b:Lk/f;

    invoke-static {p2, p3, p4}, Lr/c;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lk/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v1
.end method

.method public static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
