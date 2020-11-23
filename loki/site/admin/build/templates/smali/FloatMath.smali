.class public Linstall/app/FloatMath;
.super Ljava/lang/Object;
.source "FloatMath.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native ceil(F)F
.end method

.method public static native cos(F)F
.end method

.method public static native floor(F)F
.end method

.method public static native sin(F)F
.end method

.method public static native sqrt(F)F
.end method
