.class public Linstall/app/ExpandableCursorAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ExpandableCursorAdapter$C00021;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Landroid/widget/BaseExpandableListAdapter;"
    }
.end annotation


# instance fields
.field private final CursorObserver:Landroid/database/DataSetObserver;

.field private volatile mChildAdapters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildLayoutId:I

.field private final mChildName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCursor:Landroid/database/Cursor;

.field private final mCursorAdapter:Linstall/app/CursorObservableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorObservableAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/CursorObservable;IILjava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .param p5, "childName"    # Ljava/lang/String;
    .param p6, "childLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Linstall/app/CursorObservable",
            "<TT;>;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    .local p2, "cursorObservable":Linstall/app/CursorObservable;, "Linstall/app/CursorObservable<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 15
    new-instance v0, Linstall/app/ExpandableCursorAdapter$C00021;

    invoke-direct {v0, p0}, Linstall/app/ExpandableCursorAdapter$C00021;-><init>(Linstall/app/ExpandableCursorAdapter;)V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapter;->CursorObserver:Landroid/database/DataSetObserver;

    .line 34
    iput-object p5, p0, Linstall/app/ExpandableCursorAdapter;->mChildName:Ljava/lang/String;

    .line 35
    iput p6, p0, Linstall/app/ExpandableCursorAdapter;->mChildLayoutId:I

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    .line 37
    invoke-virtual {p2}, Linstall/app/CursorObservable;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 38
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Linstall/app/ExpandableCursorAdapter;->CursorObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    new-instance v0, Linstall/app/CursorObservableAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Linstall/app/CursorObservableAdapter;-><init>(Landroid/content/Context;Linstall/app/CursorObservable;II)V

    iput-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    .line 40
    iput-object p1, p0, Linstall/app/ExpandableCursorAdapter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Linstall/app/ExpandableCursorAdapter;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Linstall/app/ExpandableCursorAdapter;

    .prologue
    .line 14
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized getChildAdapter(I)Landroid/widget/Adapter;
    .locals 6
    .param p1, "groupPosition"    # I

    .prologue
    .line 45
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v3, "Binderd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Child Adapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 61
    .local v0, "adapter":Landroid/widget/Adapter;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-object v0

    .line 51
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    :try_start_2
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    invoke-virtual {v3, p1}, Linstall/app/CursorObservableAdapter;->getItem(I)Linstall/app/CursorRowModel;

    move-result-object v2

    .line 52
    .local v2, "item":Linstall/app/CursorRowModel;
    instance-of v3, v2, Linstall/app/LazyLoadParent;

    if-eqz v3, :cond_1

    .line 53
    check-cast v2, Linstall/app/LazyLoadParent;

    .end local v2    # "item":Linstall/app/CursorRowModel;
    invoke-interface {v2}, Linstall/app/LazyLoadParent;->onLoadChildren()V

    .line 55
    :cond_1
    iget-object v3, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    goto :goto_0

    .line 56
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v0, 0x0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    goto :goto_0

    .line 61
    .end local v0    # "adapter":Landroid/widget/Adapter;
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

    .line 45
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
    .line 66
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 70
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p4, p5}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 78
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/ExpandableCursorAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 82
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    invoke-virtual {v0, p1}, Linstall/app/CursorObservableAdapter;->getItem(I)Linstall/app/CursorRowModel;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    invoke-virtual {v0}, Linstall/app/CursorObservableAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 90
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    invoke-virtual {v0, p1}, Linstall/app/CursorObservableAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mCursorAdapter:Linstall/app/CursorObservableAdapter;

    invoke-virtual {v0, p1, p3, p4}, Linstall/app/CursorObservableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 102
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 106
    .local p0, "this":Linstall/app/ExpandableCursorAdapter;, "Linstall/app/ExpandableCursorAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
