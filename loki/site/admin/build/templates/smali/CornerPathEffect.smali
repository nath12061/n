.class public Linstall/app/CornerPathEffect;
.super Linstall/app/PathEffect;
.source "CornerPathEffect.java"


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/PathEffect;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
