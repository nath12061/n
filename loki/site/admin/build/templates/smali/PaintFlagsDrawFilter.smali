.class public Linstall/app/PaintFlagsDrawFilter;
.super Linstall/app/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "clearBits"    # I
    .param p2, "setBits"    # I

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/DrawFilter;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
