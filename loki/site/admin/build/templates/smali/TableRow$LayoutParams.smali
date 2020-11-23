.class public Linstall/app/TableRow$LayoutParams;
.super Linstall/app/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public column:I

.field public span:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIF)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    .prologue
    .line 20
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 21
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
    .line 10
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 35
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "source"    # Linstall/app/ViewGroup$MarginLayoutParams;

    .prologue
    .line 40
    const/4 v0, 0x0

    check-cast v0, Linstall/app/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Linstall/app/LinearLayout$LayoutParams;-><init>(Linstall/app/ViewGroup$MarginLayoutParams;)V

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected setBaseAttributes(Linstall/app/TypedArray;II)V
    .locals 2
    .param p1, "a"    # Linstall/app/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
