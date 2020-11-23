.class public Linstall/app/AbsoluteLayout$LayoutParams;
.super Linstall/app/ViewGroup$LayoutParams;
.source "AbsoluteLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AbsoluteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public f10x:I

.field public f11y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 15
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
    .line 19
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 24
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 25
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
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
