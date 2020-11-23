.class public abstract Linstall/app/CursorObservableAdapterd;
.super Linstall/app/CursorAdapter;
.source "CursorObservableAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Linstall/app/CursorAdapter;"
    }
.end annotation


# instance fields
.field protected idField:Ljava/lang/reflect/Field;

.field protected final mContext:Linstall/app/Context;

.field protected final mCursorObservable:Linstall/app/CursorObservabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorObservabled",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mDropDownLayoutId:I

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/CursorObservabled;II)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/CursorObservabled",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    .local p2, "cursorObservable":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p2}, Linstall/app/CursorObservabled;->getCursor()Linstall/app/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Linstall/app/CursorAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;)V

    .line 10
    iput v1, p0, Linstall/app/CursorObservableAdapterd;->mDropDownLayoutId:I

    .line 11
    iput v1, p0, Linstall/app/CursorObservableAdapterd;->mLayoutId:I

    .line 15
    iput-object p1, p0, Linstall/app/CursorObservableAdapterd;->mContext:Linstall/app/Context;

    .line 16
    iput-object p2, p0, Linstall/app/CursorObservableAdapterd;->mCursorObservable:Linstall/app/CursorObservabled;

    .line 17
    iput p3, p0, Linstall/app/CursorObservableAdapterd;->mLayoutId:I

    .line 18
    iput p4, p0, Linstall/app/CursorObservableAdapterd;->mDropDownLayoutId:I

    .line 19
    return-void
.end method

.method private constructRow(Linstall/app/Context;)Linstall/app/CursorRowModeld;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/CursorObservableAdapterd;->mCursorObservable:Linstall/app/CursorObservabled;

    invoke-virtual {v0, p1}, Linstall/app/CursorObservabled;->newRowModel(Linstall/app/Context;)Linstall/app/CursorRowModeld;

    move-result-object v0

    return-object v0
.end method

.method private getAttachedObservableCollection(Linstall/app/View;)Linstall/app/CursorRowModeld;
    .locals 1
    .param p1, "convertView"    # Linstall/app/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Linstall/app/CursorObservableAdapterd;->constructRow(Linstall/app/Context;)Linstall/app/CursorRowModeld;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Linstall/app/View;Linstall/app/Context;Linstall/app/Cursor;)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 29
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/CursorObservableAdapterd;->mCursorObservable:Linstall/app/CursorObservabled;

    invoke-direct {p0, p1}, Linstall/app/CursorObservableAdapterd;->getAttachedObservableCollection(Linstall/app/View;)Linstall/app/CursorRowModeld;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Linstall/app/CursorObservabled;->fillData(Linstall/app/CursorRowModeld;Linstall/app/Cursor;)V

    .line 30
    return-void
.end method

.method public getItem(I)Linstall/app/CursorRowModeld;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    iget-object v1, p0, Linstall/app/CursorObservableAdapterd;->mContext:Linstall/app/Context;

    invoke-direct {p0, v1}, Linstall/app/CursorObservableAdapterd;->constructRow(Linstall/app/Context;)Linstall/app/CursorRowModeld;

    move-result-object v0

    .line 23
    .local v0, "row":Linstall/app/CursorRowModeld;, "TT;"
    invoke-virtual {p0}, Linstall/app/CursorObservableAdapterd;->getCursor()Linstall/app/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Linstall/app/Cursor;->moveToPosition(I)Z

    .line 24
    iget-object v1, p0, Linstall/app/CursorObservableAdapterd;->mCursorObservable:Linstall/app/CursorObservabled;

    invoke-virtual {p0}, Linstall/app/CursorObservableAdapterd;->getCursor()Linstall/app/Cursor;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Linstall/app/CursorObservabled;->fillData(Linstall/app/CursorRowModeld;Linstall/app/Cursor;)V

    .line 25
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    invoke-virtual {p0, p1}, Linstall/app/CursorObservableAdapterd;->getItem(I)Linstall/app/CursorRowModeld;

    move-result-object v0

    return-object v0
.end method

.method public newDropDownView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 37
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    iget v0, p0, Linstall/app/CursorObservableAdapterd;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    iget v0, p0, Linstall/app/CursorObservableAdapterd;->mDropDownLayoutId:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorObservableAdapterd;->newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CursorObservableAdapterd;->mLayoutId:I

    goto :goto_0
.end method

.method public newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 33
    .local p0, "this":Linstall/app/CursorObservableAdapterd;, "Linstall/app/CursorObservableAdapterd<TT;>;"
    iget v0, p0, Linstall/app/CursorObservableAdapterd;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorObservableAdapterd;->newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method
