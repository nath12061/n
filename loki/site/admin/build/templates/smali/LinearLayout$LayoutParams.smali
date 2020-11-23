.class public Linstall/app/LinearLayout$LayoutParams;
.super Linstall/app/ViewGroup$MarginLayoutParams;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 23
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .line 13
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 28
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$MarginLayoutParams;

    .prologue
    .line 33
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
