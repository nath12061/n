.class public Linstall/app/BitmapShader;
.super Linstall/app/Shader;
.source "BitmapShader.java"


# direct methods
.method public constructor <init>(Linstall/app/Bitmap;Linstall/app/Shader$TileMode;Linstall/app/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .param p2, "tileX"    # Linstall/app/Shader$TileMode;
    .param p3, "tileY"    # Linstall/app/Shader$TileMode;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
