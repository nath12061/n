.class public Linstall/app/ExpandableCollectionAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableCollectionAdapter.java"


# instance fields
.field private final mChildAdapters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
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

.field private final mGroupAdapter:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Adapter;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupAdapter"    # Landroid/widget/Adapter;
    .param p3, "childName"    # Ljava/lang/String;
    .param p4, "childLayoutId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mChildAdapters:Ljava/util/WeakHashMap;

    .line 20
    iput-object p3, p0, Linstall/app/ExpandableCollectionAdapter;->mChildName:Ljava/lang/String;

    .line 21
    iput p4, p0, Linstall/app/ExpandableCollectionAdapter;->mChildLayoutId:I

    .line 22
    iput-object p1, p0, Linstall/app/ExpandableCollectionAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    .line 24
    return-void
.end method

.method private getChildAdapter(I)Landroid/widget/Adapter;
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    .line 27
    const-string v2, "Binderd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Child Adapter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapter;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Linstall/app/LazyLoadParent;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Linstall/app/LazyLoadParent;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-interface {v1}, Linstall/app/LazyLoadParent;->onLoadChildren()V

    .line 35
    :cond_0
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapter;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

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
    .line 47
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

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
    .line 51
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p2, p4, p5}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapter;->getChildAdapter(I)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 59
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 67
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

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
    .line 71
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mGroupAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1, p3, p4}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapter;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    return-void
.end method
