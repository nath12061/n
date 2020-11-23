.class public Linstall/app/RadialGradient;
.super Linstall/app/Shader;
.source "RadialGradient.java"


# direct methods
.method public constructor <init>(FFFIILinstall/app/Shader$TileMode;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "color0"    # I
    .param p5, "color1"    # I
    .param p6, "tile"    # Linstall/app/Shader$TileMode;

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(FFF[I[FLinstall/app/Shader$TileMode;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "colors"    # [I
    .param p5, "positions"    # [F
    .param p6, "tile"    # Linstall/app/Shader$TileMode;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
