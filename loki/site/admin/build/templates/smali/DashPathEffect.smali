.class public Linstall/app/DashPathEffect;
.super Linstall/app/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .locals 2
    .param p1, "intervals"    # [F
    .param p2, "phase"    # F

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/PathEffect;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
