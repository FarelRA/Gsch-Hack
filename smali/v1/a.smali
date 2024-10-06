.class public final Lv1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/a$a;
    }
.end annotation


# instance fields
.field public final a:Lv1/a$a;

.field public final b:Lv1/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/a$a;

    invoke-direct {v0}, Lv1/a$a;-><init>()V

    iput-object v0, p0, Lv1/a;->a:Lv1/a$a;

    new-instance v0, Lv1/a$a;

    invoke-direct {v0}, Lv1/a$a;-><init>()V

    iput-object v0, p0, Lv1/a;->b:Lv1/a$a;

    return-void
.end method
