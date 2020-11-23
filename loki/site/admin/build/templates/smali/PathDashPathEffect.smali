.class public Linstall/app/PathDashPathEffect;
.super Linstall/app/PathEffect;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PathDashPathEffect$Style;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Path;FFLinstall/app/PathDashPathEffect$Style;)V
    .locals 2
    .param p1, "shape"    # Linstall/app/Path;
    .param p2, "advance"    # F
    .param p3, "phase"    # F
    .param p4, "style"    # Linstall/app/PathDashPathEffect$Style;

    .prologue
    .line 11
    invoke-direct {p0}, Linstall/app/PathEffect;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
