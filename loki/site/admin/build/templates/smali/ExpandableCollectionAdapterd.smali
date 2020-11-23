.class public Linstall/app/ExpandableCollectionAdapterd;
.super Linstall/app/BaseExpandableListAdapter;
.source "ExpandableCollectionAdapterd.java"


# instance fields
.field private final mChildAdapters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
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

.field private final mGroupAdapter:Linstall/app/Adapter;


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/Adapter;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "groupAdapter"    # Linstall/app/Adapter;
    .param p3, "childName"    # Ljava/lang/String;
    .param p4, "childLayoutId"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Linstall/app/BaseExpandableListAdapter;-><init>()V

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildAdapters:Ljava/util/WeakHashMap;

    .line 13
    iput-object p3, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildName:Ljava/lang/String;

    .line 14
    iput p4, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildLayoutId:I

    .line 15
    iput-object p1, p0, Linstall/app/ExpandableCollectionAdapterd;->mContext:Linstall/app/Context;

    .line 16
    iput-object p2, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    .line 17
    return-void
.end method

.method private getChildAdapter(I)Linstall/app/Adapter;
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 22
    :try_start_0
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    invoke-interface {v2, p1}, Linstall/app/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Linstall/app/LazyLoadParentd;

    if-eqz v2, :cond_0

    .line 25
    check-cast v1, Linstall/app/LazyLoadParentd;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-interface {v1}, Linstall/app/LazyLoadParentd;->onLoadChildren()V

    .line 29
    :cond_0
    iget-object v2, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/Adapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

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
    .line 41
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

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
    .line 45
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0, p2, p4, p5}, Linstall/app/Adapter;->getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Linstall/app/ExpandableCollectionAdapterd;->getChildAdapter(I)Linstall/app/Adapter;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 53
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    invoke-interface {v0, p1}, Linstall/app/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    invoke-interface {v0}, Linstall/app/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 61
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    invoke-interface {v0, p1}, Linstall/app/Adapter;->getItemId(I)J

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
    .line 65
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mGroupAdapter:Linstall/app/Adapter;

    invoke-interface {v0, p1, p3, p4}, Linstall/app/Adapter;->getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 73
    iget-object v0, p0, Linstall/app/ExpandableCollectionAdapterd;->mChildAdapters:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 77
    return-void
.end method
