.class public Linstall/app/AbsListView$LayoutParams;
.super Linstall/app/ViewGroup$LayoutParams;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "viewType"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 31
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
    .line 20
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 35
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Linstall/app/ViewGroup$LayoutParams;-><init>(Linstall/app/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
