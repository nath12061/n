.class public Linstall/app/LinearGradient;
.super Linstall/app/Shader;
.source "LinearGradient.java"


# direct methods
.method public constructor <init>(FFFFIILinstall/app/Shader$TileMode;)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # I
    .param p6, "color1"    # I
    .param p7, "tile"    # Linstall/app/Shader$TileMode;

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFFF[I[FLinstall/app/Shader$TileMode;)V
    .locals 2
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tile"    # Linstall/app/Shader$TileMode;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
