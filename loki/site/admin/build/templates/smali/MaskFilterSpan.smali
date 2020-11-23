.class public Linstall/app/MaskFilterSpan;
.super Linstall/app/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Linstall/app/UpdateAppearance;


# direct methods
.method public constructor <init>(Linstall/app/MaskFilter;)V
    .locals 2
    .param p1, "filter"    # Linstall/app/MaskFilter;

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
.method public getMaskFilter()Linstall/app/MaskFilter;
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
