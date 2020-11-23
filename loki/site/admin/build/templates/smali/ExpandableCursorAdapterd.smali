.class public Linstall/app/ExpandableCursorAdapterd;
.super Linstall/app/BaseExpandableListAdapter;
.source "ExpandableCursorAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ExpandableCursorAdapterd$C00021;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Linstall/app/BaseExpandableListAdapter;"
    }
.end annotation


# instance fields
.field private final CursorObserver:Linstall/app/DataSetObserver;

.field private volatile mChildAdapters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Linstall/app/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildLayoutId:I

.field private final mChildName:Ljava/lang/String;

.field private final mContext:Linstall/app/Context;

.field private final mCursor:Linstall/app/Cursor;

.field private final mCursorAdapter:Linstall/app/CursorObservableAdapterd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorObservableAdapterd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/CursorObservabled;IILjava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Linstall/app/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .param p5, "childName"    # Ljava/lang/String;
    .param p6, "childLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/CursorObservabled",
            "<TT;>;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    .local p2, "cursorObservable":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    invoke-direct {p0}, Linstall/app/BaseExpandableListAdapter;-><init>()V

    .line 6
    new-instance v0, Linstall/app/ExpandableCursorAdapterd$C00021;

    invoke-direct {v0, p0}, Linstall/app/ExpandableCursorAdapterd$C00021;-><init>(Linstall/app/ExpandableCursorAdapterd;)V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->CursorObserver:Linstall/app/DataSetObserver;

    .line 25
    iput-object p5, p0, Linstall/app/ExpandableCursorAdapterd;->mChildName:Ljava/lang/String;

    .line 26
    iput p6, p0, Linstall/app/ExpandableCursorAdapterd;->mChildLayoutId:I

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    .line 28
    invoke-virtual {p2}, Linstall/app/CursorObservabled;->getCursor()Linstall/app/Cursor;

    move-result-object v0

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursor:Linstall/app/Cursor;

    .line 29
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursor:Linstall/app/Cursor;

    iget-object v1, p0, Linstall/app/ExpandableCursorAdapterd;->CursorObserver:Linstall/app/DataSetObserver;

    invoke-interface {v0, v1}, Linstall/app/Cursor;->registerDataSetObserver(Linstall/app/DataSetObserver;)V

    .line 30
    new-instance v0, Linstall/app/ExpandableCursorAdapterd$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linstall/app/ExpandableCursorAdapterd$1;-><init>(Linstall/app/ExpandableCursorAdapterd;Linstall/app/Context;Linstall/app/CursorObservabled;II)V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    .line 36
    iput-object p1, p0, Linstall/app/ExpandableCursorAdapterd;->mContext:Linstall/app/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Linstall/app/ExpandableCursorAdapterd;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Linstall/app/ExpandableCursorAdapterd;

    .prologue
    .line 5
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized getChildAdapter(I)Linstall/app/Adapter;
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    .line 42
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Adapter;

    .line 58
    .local v0, "adapter":Linstall/app/Adapter;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-object v0

    .line 47
    .end local v0    # "adapter":Linstall/app/Adapter;
    :cond_0
    :try_start_2
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    invoke-virtual {v3, p1}, Linstall/app/CursorObservableAdapterd;->getItem(I)Linstall/app/CursorRowModeld;

    move-result-object v2

    .line 48
    .local v2, "item":Linstall/app/CursorRowModeld;
    instance-of v3, v2, Linstall/app/LazyLoadParentd;

    if-eqz v3, :cond_1

    .line 49
    check-cast v2, Linstall/app/LazyLoadParentd;

    .end local v2    # "item":Linstall/app/CursorRowModeld;
    invoke-interface {v2}, Linstall/app/LazyLoadParentd;->onLoadChildren()V

    .line 52
    :cond_1
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Adapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "adapter":Linstall/app/Adapter;
    goto :goto_0

    .line 53
    .end local v0    # "adapter":Linstall/app/Adapter;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v0, 0x0

    .restart local v0    # "adapter":Linstall/app/Adapter;
    goto :goto_0

    .line 58
    .end local v0    # "adapter":Linstall/app/Adapter;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 63
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0, p2}, Linstall/app/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 67
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0, p2}, Linstall/app/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Linstall/app/View;
    .param p5, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 71
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p4, p5}, Linstall/app/Adapter;->getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 75
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    invoke-virtual {v0, p1}, Linstall/app/CursorObservableAdapterd;->getItem(I)Linstall/app/CursorRowModeld;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    invoke-virtual {v0}, Linstall/app/CursorObservableAdapterd;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 87
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    invoke-virtual {v0, p1}, Linstall/app/CursorObservableAdapterd;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Linstall/app/View;
    .param p4, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 91
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mCursorAdapter:Linstall/app/CursorObservableAdapterd;

    invoke-virtual {v0, p1, p3, p4}, Linstall/app/CursorObservableAdapterd;->getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 99
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 103
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd;, "Linstall/app/ExpandableCursorAdapterd<TT;>;"
    invoke-super {p0, p1}, Linstall/app/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
