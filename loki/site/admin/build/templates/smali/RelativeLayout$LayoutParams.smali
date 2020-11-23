.class public Linstall/app/RelativeLayout$LayoutParams;
.super Linstall/app/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 33
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
    .line 27
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 37
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$MarginLayoutParams;

    .prologue
    .line 42
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$MarginLayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRule(I)V
    .locals 2
    .param p1, "verb"    # I

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRule(II)V
    .locals 2
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRules()[I
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
