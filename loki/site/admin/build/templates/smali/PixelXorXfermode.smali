.class public Linstall/app/PixelXorXfermode;
.super Linstall/app/Xfermode;
.source "PixelXorXfermode.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "opColor"    # I

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/Xfermode;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
