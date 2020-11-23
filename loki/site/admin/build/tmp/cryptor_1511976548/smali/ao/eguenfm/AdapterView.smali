.class public abstract Linstall/app/AdapterView;
.super Linstall/app/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/AdapterView$OnItemSelectedListener;,
        Linstall/app/AdapterView$OnItemLongClickListener;,
        Linstall/app/AdapterView$AdapterContextMenuInfo;,
        Linstall/app/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linstall/app/Adapter;",
        ">",
        "Linstall/app/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 43
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/ViewGroup;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 48
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/ViewGroup;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 53
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/ViewGroup;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 54
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
    .line 86
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
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
    .line 90
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
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
    .line 98
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
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
    .line 94
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchRestoreInstanceState(Linstall/app/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/SparseArray",
            "<",
            "Linstall/app/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    .local p1, "sparseArray":Linstall/app/SparseArray;, "Linstall/app/SparseArray<Linstall/app/Parcelable;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchSaveInstanceState(Linstall/app/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/SparseArray",
            "<",
            "Linstall/app/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    .local p1, "sparseArray":Linstall/app/SparseArray;, "Linstall/app/SparseArray<Linstall/app/Parcelable;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getAdapter()Linstall/app/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmptyView()Linstall/app/View;
    .locals 2

    .prologue
    .line 150
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 162
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 142
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOnItemClickListener()Linstall/app/AdapterView$OnItemClickListener;
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOnItemLongClickListener()Linstall/app/AdapterView$OnItemLongClickListener;
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOnItemSelectedListener()Linstall/app/AdapterView$OnItemSelectedListener;
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionForView(Linstall/app/View;)I
    .locals 2
    .param p1, "view"    # Linstall/app/View;

    .prologue
    .line 134
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 122
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSelectedView()Linstall/app/View;
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 114
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performItemClick(Linstall/app/View;IJ)Z
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 66
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 110
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Linstall/app/View;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;

    .prologue
    .line 102
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 106
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAdapter(Linstall/app/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Linstall/app/View;)V
    .locals 2
    .param p1, "emptyView"    # Linstall/app/View;

    .prologue
    .line 146
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 154
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 158
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 170
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Linstall/app/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/AdapterView$OnItemClickListener;

    .prologue
    .line 58
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemLongClickListener(Linstall/app/AdapterView$OnItemLongClickListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/AdapterView$OnItemLongClickListener;

    .prologue
    .line 70
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemSelectedListener(Linstall/app/AdapterView$OnItemSelectedListener;)V
    .locals 2
    .param p1, "listener"    # Linstall/app/AdapterView$OnItemSelectedListener;

    .prologue
    .line 78
    .local p0, "this":Linstall/app/AdapterView;, "Linstall/app/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setSelection(I)V
.end method
