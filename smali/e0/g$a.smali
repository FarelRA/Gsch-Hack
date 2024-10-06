.class public final Le0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le0/g;


# direct methods
.method public constructor <init>(Le0/g;)V
    .locals 0

    iput-object p1, p0, Le0/g$a;->b:Le0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le0/g$a;->b:Le0/g;

    invoke-virtual {v0}, Le0/g;->F()V

    return-void
.end method
