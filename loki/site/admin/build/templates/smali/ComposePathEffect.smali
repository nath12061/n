.class public Linstall/app/ComposePathEffect;
.super Linstall/app/PathEffect;
.source "ComposePathEffect.java"


# direct methods
.method public constructor <init>(Linstall/app/PathEffect;Linstall/app/PathEffect;)V
    .locals 2
    .param p1, "outerpe"    # Linstall/app/PathEffect;
    .param p2, "innerpe"    # Linstall/app/PathEffect;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/PathEffect;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
