.class public Linstall/app/PorterDuffColorFilter;
.super Linstall/app/ColorFilter;
.source "PorterDuffColorFilter.java"


# direct methods
.method public constructor <init>(ILinstall/app/PorterDuff$Mode;)V
    .locals 2
    .param p1, "srcColor"    # I
    .param p2, "mode"    # Linstall/app/PorterDuff$Mode;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/ColorFilter;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
