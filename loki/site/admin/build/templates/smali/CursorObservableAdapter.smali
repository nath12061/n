.class public Linstall/app/CursorObservableAdapter;
.super Landroid/widget/CursorAdapter;
.source "CursorObservableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Landroid/widget/CursorAdapter;"
    }
.end annotation


# instance fields
.field protected idField:Ljava/lang/reflect/Field;

.field protected final mContext:Landroid/content/Context;

.field protected final mCursorObservable:Linstall/app/CursorObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorObservable",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mDropDownLayoutId:I

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/CursorObservable;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Linstall/app/CursorObservable",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    .local p2, "cursorObservable":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p2}, Linstall/app/CursorObservable;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 18
    iput v1, p0, Linstall/app/CursorObservableAdapter;->mDropDownLayoutId:I

    .line 19
    iput v1, p0, Linstall/app/CursorObservableAdapter;->mLayoutId:I

    .line 23
    iput-object p1, p0, Linstall/app/CursorObservableAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Linstall/app/CursorObservableAdapter;->mCursorObservable:Linstall/app/CursorObservable;

    .line 25
    iput p3, p0, Linstall/app/CursorObservableAdapter;->mLayoutId:I

    .line 26
    iput p4, p0, Linstall/app/CursorObservableAdapter;->mDropDownLayoutId:I

    .line 27
    return-void
.end method

.method private getAttachedObservableCollection(Landroid/view/View;)Linstall/app/CursorRowModel;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    const v1, 0x7f020005

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "collections":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    .end local v0    # "collections":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "collections":Ljava/lang/Object;
    :cond_0
    check-cast v0, Linstall/app/CursorRowModel;

    goto :goto_0
.end method

.method private newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .line 47
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, p4, p3, v4}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v2

    .line 48
    .local v2, "result":Linstall/app/Binder$InflateResult;
    iget-object v3, v2, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    .line 49
    .local v3, "returnView":Landroid/view/View;
    iget-object v4, v2, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 55
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "result":Linstall/app/Binder$InflateResult;
    .end local v3    # "returnView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private putAttachedObservableCollection(Landroid/view/View;Linstall/app/CursorRowModel;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    .local p2, "collection":Linstall/app/CursorRowModel;, "TT;"
    const v0, 0x7f020005

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 35
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    return-void
.end method

.method public getItem(I)Linstall/app/CursorRowModel;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    invoke-virtual {p0}, Linstall/app/CursorObservableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    invoke-virtual {p0, p1}, Linstall/app/CursorObservableAdapter;->getItem(I)Linstall/app/CursorRowModel;

    move-result-object v0

    return-object v0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    iget v0, p0, Linstall/app/CursorObservableAdapter;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    iget v0, p0, Linstall/app/CursorObservableAdapter;->mDropDownLayoutId:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorObservableAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CursorObservableAdapter;->mLayoutId:I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    .local p0, "this":Linstall/app/CursorObservableAdapter;, "Linstall/app/CursorObservableAdapter<TT;>;"
    iget v0, p0, Linstall/app/CursorObservableAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorObservableAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
