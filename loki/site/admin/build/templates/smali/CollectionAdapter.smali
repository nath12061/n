.class public Linstall/app/CollectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectionAdapter.java"

# interfaces
.implements Linstall/app/CollectionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CollectionAdapter$C00011;
    }
.end annotation


# instance fields
.field protected final mCollection:Linstall/app/IObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservableCollection",
            "<*>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mDropDownLayoutId:I

.field protected final mHandler:Landroid/os/Handler;

.field protected final mLayoutId:I

.field protected final mReflector:Linstall/app/IModelReflector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/IModelReflector;Linstall/app/IObservableCollection;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reflector"    # Linstall/app/IModelReflector;
    .param p4, "layoutId"    # I
    .param p5, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Linstall/app/IModelReflector;",
            "Linstall/app/IObservableCollection",
            "<*>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "collection":Linstall/app/IObservableCollection;, "Linstall/app/IObservableCollection<*>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Linstall/app/CollectionAdapter;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Linstall/app/CollectionAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput p4, p0, Linstall/app/CollectionAdapter;->mLayoutId:I

    .line 34
    iput p5, p0, Linstall/app/CollectionAdapter;->mDropDownLayoutId:I

    .line 35
    iput-object p3, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    .line 36
    iput-object p2, p0, Linstall/app/CollectionAdapter;->mReflector:Linstall/app/IModelReflector;

    .line 37
    invoke-interface {p3, p0}, Linstall/app/IObservableCollection;->subscribe(Linstall/app/CollectionObserver;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Linstall/app/IObservableCollection;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Linstall/app/IObservableCollection",
            "<*>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "collection":Linstall/app/IObservableCollection;, "Linstall/app/IObservableCollection<*>;"
    new-instance v2, Linstall/app/BasicModelReflector;

    invoke-direct {v2, p1}, Linstall/app/BasicModelReflector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linstall/app/CollectionAdapter;-><init>(Landroid/content/Context;Linstall/app/IModelReflector;Linstall/app/IObservableCollection;II)V

    .line 42
    return-void
.end method

.method private getAttachedMapper(Landroid/view/View;)Linstall/app/ObservableMapper;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 103
    const v1, 0x7f020005

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "mappers":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    .end local v0    # "mappers":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "mappers":Ljava/lang/Object;
    :cond_0
    check-cast v0, Linstall/app/ObservableMapper;

    goto :goto_0
.end method

.method private getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .line 57
    move-object v5, p2

    .line 58
    .local v5, "returnView":Landroid/view/View;
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v7}, Linstall/app/IObservableCollection;->size()I

    move-result v7

    if-lt p1, v7, :cond_0

    move-object v6, v5

    .line 88
    .end local v5    # "returnView":Landroid/view/View;
    .local v6, "returnView":Landroid/view/View;
    :goto_0
    return-object v6

    .line 62
    .end local v6    # "returnView":Landroid/view/View;
    .restart local v5    # "returnView":Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    :try_start_0
    invoke-direct {p0, p2}, Linstall/app/CollectionAdapter;->getAttachedMapper(Landroid/view/View;)Linstall/app/ObservableMapper;

    move-result-object v2

    .line 65
    .local v2, "mapper":Linstall/app/ObservableMapper;
    if-eqz v2, :cond_1

    .line 66
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v7, p1}, Linstall/app/IObservableCollection;->onLoad(I)V

    .line 67
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mReflector:Linstall/app/IModelReflector;

    iget-object v8, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v8, p1}, Linstall/app/IObservableCollection;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Linstall/app/ObservableMapper;->changeMapping(Linstall/app/IModelReflector;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 68
    .end local v5    # "returnView":Landroid/view/View;
    .restart local v6    # "returnView":Landroid/view/View;
    goto :goto_0

    .line 70
    .end local v2    # "mapper":Linstall/app/ObservableMapper;
    .end local v6    # "returnView":Landroid/view/View;
    .restart local v5    # "returnView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v5

    .line 72
    .end local v5    # "returnView":Landroid/view/View;
    .restart local v6    # "returnView":Landroid/view/View;
    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "returnView":Landroid/view/View;
    .restart local v5    # "returnView":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, p4, p3, v8}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v4

    .line 76
    .local v4, "result":Linstall/app/Binder$InflateResult;
    new-instance v2, Linstall/app/ObservableMapper;

    invoke-direct {v2}, Linstall/app/ObservableMapper;-><init>()V

    .line 77
    .restart local v2    # "mapper":Linstall/app/ObservableMapper;
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v7, p1}, Linstall/app/IObservableCollection;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "model":Ljava/lang/Object;
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v7, p1}, Linstall/app/IObservableCollection;->onLoad(I)V

    .line 79
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mReflector:Linstall/app/IModelReflector;

    invoke-virtual {v2, v7, v3}, Linstall/app/ObservableMapper;->startCreateMapping(Linstall/app/IModelReflector;Ljava/lang/Object;)V

    .line 80
    iget-object v7, v4, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v8, v7, v2}, Linstall/app/AttributeBinder;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v2}, Linstall/app/ObservableMapper;->endCreateMapping()V

    .line 85
    iget-object v5, v4, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    .line 86
    invoke-direct {p0, v5, v2}, Linstall/app/CollectionAdapter;->putAttachedMapper(Landroid/view/View;Linstall/app/ObservableMapper;)V

    .line 87
    iget-object v7, p0, Linstall/app/CollectionAdapter;->mReflector:Linstall/app/IModelReflector;

    iget-object v8, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v8, p1}, Linstall/app/IObservableCollection;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Linstall/app/ObservableMapper;->changeMapping(Linstall/app/IModelReflector;Ljava/lang/Object;)V

    move-object v6, v5

    .line 88
    .end local v5    # "returnView":Landroid/view/View;
    .restart local v6    # "returnView":Landroid/view/View;
    goto :goto_0
.end method

.method private putAttachedMapper(Landroid/view/View;Linstall/app/ObservableMapper;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "mapper"    # Linstall/app/ObservableMapper;

    .prologue
    .line 111
    const v0, 0x7f020005

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v0}, Linstall/app/IObservableCollection;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    iget v0, p0, Linstall/app/CollectionAdapter;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    .line 93
    iget v0, p0, Linstall/app/CollectionAdapter;->mDropDownLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CollectionAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Linstall/app/CollectionAdapter;->mCollection:Linstall/app/IObservableCollection;

    invoke-interface {v0, p1}, Linstall/app/IObservableCollection;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget v0, p0, Linstall/app/CollectionAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCollectionChanged(Linstall/app/IObservableCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservableCollection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "iObservableCollection":Linstall/app/IObservableCollection;, "Linstall/app/IObservableCollection<*>;"
    iget-object v0, p0, Linstall/app/CollectionAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Linstall/app/CollectionAdapter$C00011;

    invoke-direct {v1, p0}, Linstall/app/CollectionAdapter$C00011;-><init>(Linstall/app/CollectionAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
