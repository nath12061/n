.class public Linstall/app/ColorMatrixColorFilter;
.super Linstall/app/ColorFilter;
.source "ColorMatrixColorFilter.java"


# direct methods
.method public constructor <init>(Linstall/app/ColorMatrix;)V
    .locals 2
    .param p1, "matrix"    # Linstall/app/ColorMatrix;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/ColorFilter;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/ColorFilter;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
