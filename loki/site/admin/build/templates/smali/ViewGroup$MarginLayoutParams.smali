.class public Linstall/app/ViewGroup$MarginLayoutParams;
.super Linstall/app/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# instance fields
.field public bottomMargin:I

.field public leftMargin:I

.field public rightMargin:I

.field public topMargin:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 60
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
    .line 54
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 69
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$MarginLayoutParams;

    .prologue
    .line 64
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setMargins(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
