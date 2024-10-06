.class public final Lm0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm0/m;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lm0/m$a;->d:Lm0/m;

    iput-object p2, p0, Lm0/m$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lm0/m$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm0/m$a;->d:Lm0/m;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/m;->a:Lm0/s$a;

    .line 4
    .line 5
    iget-object v2, p0, Lm0/m$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lm0/m$a;->c:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lm0/s$a;->a(Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lm0/m;->a:Lm0/s$a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lm0/m;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Lm0/s$a;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
