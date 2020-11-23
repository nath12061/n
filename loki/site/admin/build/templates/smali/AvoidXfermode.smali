.class public Linstall/app/AvoidXfermode;
.super Linstall/app/Xfermode;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/AvoidXfermode$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>(IILinstall/app/AvoidXfermode$Mode;)V
    .locals 2
    .param p1, "opColor"    # I
    .param p2, "tolerance"    # I
    .param p3, "mode"    # Linstall/app/AvoidXfermode$Mode;

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/Xfermode;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
