.class public Linstall/app/TransitionDrawable;
.super Linstall/app/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Linstall/app/Drawable$Callback;


# direct methods
.method public constructor <init>([Linstall/app/Drawable;)V
    .locals 2
    .param p1, "layers"    # [Linstall/app/Drawable;

    .prologue
    .line 7
    const/4 v0, 0x0

    check-cast v0, [Linstall/app/Drawable;

    invoke-direct {p0, v0}, Linstall/app/LayerDrawable;-><init>([Linstall/app/Drawable;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public draw(Linstall/app/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Linstall/app/Canvas;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCrossFadeEnabled()Z
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetTransition()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverseTransition(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTransition(I)V
    .locals 2
    .param p1, "durationMillis"    # I

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
