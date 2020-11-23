.class public abstract Linstall/app/MetricAffectingSpan;
.super Linstall/app/CharacterStyle;
.source "MetricAffectingSpan.java"

# interfaces
.implements Linstall/app/UpdateLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/CharacterStyle;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getUnderlying()Linstall/app/CharacterStyle;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/MetricAffectingSpan;->getUnderlying()Linstall/app/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlying()Linstall/app/MetricAffectingSpan;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract updateMeasureState(Landroid/text/TextPaint;)V
.end method
