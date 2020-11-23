.class public abstract Linstall/app/TableRow;
.super Linstall/app/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/TableRow$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected checkLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/TableRow;->generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableRow;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableRow$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableRow;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableRow;->generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualChildAt(I)Linstall/app/View;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVirtualChildCount()I
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnHierarchyChangeListener(Linstall/app/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
