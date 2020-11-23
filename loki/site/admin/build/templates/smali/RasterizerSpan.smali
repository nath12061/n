.class public Linstall/app/RasterizerSpan;
.super Linstall/app/CharacterStyle;
.source "RasterizerSpan.java"

# interfaces
.implements Linstall/app/UpdateAppearance;


# direct methods
.method public constructor <init>(Linstall/app/Rasterizer;)V
    .locals 2
    .param p1, "r"    # Linstall/app/Rasterizer;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/CharacterStyle;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRasterizer()Linstall/app/Rasterizer;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
