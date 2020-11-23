.class public abstract Linstall/app/TableLayout;
.super Linstall/app/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/TableLayout$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 43
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

    .line 47
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/LinearLayout;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addView(Linstall/app/View;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Linstall/app/View;I)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;
    .param p2, "index"    # I

    .prologue
    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Linstall/app/View;ILinstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;
    .param p2, "index"    # I
    .param p3, "params"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Linstall/app/View;Linstall/app/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;
    .param p2, "params"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/TableLayout;->generateDefaultLayoutParams()Linstall/app/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableLayout;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "p"    # Linstall/app/ViewGroup$LayoutParams;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableLayout;->generateLayoutParams(Linstall/app/AttributeSet;)Linstall/app/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/TableLayout;->generateLayoutParams(Linstall/app/ViewGroup$LayoutParams;)Linstall/app/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isColumnStretchable(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isShrinkAllColumns()Z
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isStretchAllColumns()Z
    .locals 2

    .prologue
    .line 68
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
    .line 120
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
    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnCollapsed(IZ)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "isCollapsed"    # Z

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnShrinkable(IZ)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "isShrinkable"    # Z

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnStretchable(IZ)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "isStretchable"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnHierarchyChangeListener(Linstall/app/ViewGroup$OnHierarchyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShrinkAllColumns(Z)V
    .locals 2
    .param p1, "shrinkAllColumns"    # Z

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStretchAllColumns(Z)V
    .locals 2
    .param p1, "stretchAllColumns"    # Z

    .prologue
    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
