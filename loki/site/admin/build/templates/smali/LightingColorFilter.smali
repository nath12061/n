.class public Linstall/app/LightingColorFilter;
.super Linstall/app/ColorFilter;
.source "LightingColorFilter.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "mul"    # I
    .param p2, "add"    # I

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/ColorFilter;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
