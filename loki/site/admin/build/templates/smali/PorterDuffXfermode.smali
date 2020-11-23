.class public Linstall/app/PorterDuffXfermode;
.super Linstall/app/Xfermode;
.source "PorterDuffXfermode.java"


# direct methods
.method public constructor <init>(Linstall/app/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Linstall/app/PorterDuff$Mode;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/Xfermode;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
