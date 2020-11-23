.class public Linstall/app/IconMarginSpan;
.super Ljava/lang/Object;
.source "IconMarginSpan.java"

# interfaces
.implements Linstall/app/LeadingMarginSpan;
.implements Linstall/app/LineHeightSpan;


# direct methods
.method public constructor <init>(Linstall/app/Bitmap;)V
    .locals 2
    .param p1, "b"    # Linstall/app/Bitmap;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Bitmap;I)V
    .locals 2
    .param p1, "b"    # Linstall/app/Bitmap;
    .param p2, "pad"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILinstall/app/Paint$FontMetricsInt;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "istartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Linstall/app/Paint$FontMetricsInt;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawLeadingMargin(Linstall/app/Canvas;Linstall/app/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 2
    .param p1, "c"    # Linstall/app/Canvas;
    .param p2, "p"    # Linstall/app/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
