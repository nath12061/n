.class public Linstall/app/RoundRectShape;
.super Linstall/app/RectShape;
.source "RoundRectShape.java"


# direct methods
.method public constructor <init>([FLinstall/app/RectF;[F)V
    .locals 2
    .param p1, "outerRadii"    # [F
    .param p2, "inset"    # Linstall/app/RectF;
    .param p3, "innerRadii"    # [F

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/RectShape;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Linstall/app/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/RoundRectShape;->clone()Linstall/app/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linstall/app/RoundRectShape;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Linstall/app/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/RoundRectShape;->clone()Linstall/app/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/RoundRectShape;->clone()Linstall/app/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Linstall/app/Canvas;Linstall/app/Paint;)V
    .locals 2
    .param p1, "canvas"    # Linstall/app/Canvas;
    .param p2, "paint"    # Linstall/app/Paint;

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onResize(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
