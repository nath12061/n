.class public Linstall/app/EmbossMaskFilter;
.super Linstall/app/MaskFilter;
.source "EmbossMaskFilter.java"


# direct methods
.method public constructor <init>([FFFF)V
    .locals 2
    .param p1, "direction"    # [F
    .param p2, "ambient"    # F
    .param p3, "specular"    # F
    .param p4, "blurRadius"    # F

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/MaskFilter;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
