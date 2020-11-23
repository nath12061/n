.class public Linstall/app/BlurMaskFilter;
.super Linstall/app/MaskFilter;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/BlurMaskFilter$Blur;
    }
.end annotation


# direct methods
.method public constructor <init>(FLinstall/app/BlurMaskFilter$Blur;)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "style"    # Linstall/app/BlurMaskFilter$Blur;

    .prologue
    .line 12
    invoke-direct {p0}, Linstall/app/MaskFilter;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
