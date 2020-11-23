.class public Linstall/app/CollectionAdapterd;
.super Linstall/app/BaseAdapter;
.source "CollectionAdapterd.java"

# interfaces
.implements Linstall/app/CollectionObserverd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CollectionAdapterd$C00011;
    }
.end annotation


# instance fields
.field protected final mCollection:Linstall/app/IObservableCollectiond;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservableCollectiond",
            "<*>;"
        }
    .end annotation
.end field

.field protected final mContext:Linstall/app/Context;

.field protected final mDropDownLayoutId:I

.field protected final mHandler:Linstall/app/Handler;

.field protected final mLayoutId:I

.field protected final mReflector:Linstall/app/IModelReflectord;


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/IModelReflectord;Linstall/app/IObservableCollectiond;II)V
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "reflector"    # Linstall/app/IModelReflectord;
    .param p4, "layoutId"    # I
    .param p5, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/IModelReflectord;",
            "Linstall/app/IObservableCollectiond",
            "<*>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "collection":Linstall/app/IObservableCollectiond;, "Linstall/app/IObservableCollectiond<*>;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Linstall/app/Handler;

    invoke-direct {v0}, Linstall/app/Handler;-><init>()V

    iput-object v0, p0, Linstall/app/CollectionAdapterd;->mHandler:Linstall/app/Handler;

    .line 22
    iput-object p1, p0, Linstall/app/CollectionAdapterd;->mContext:Linstall/app/Context;

    .line 23
    iput p4, p0, Linstall/app/CollectionAdapterd;->mLayoutId:I

    .line 24
    iput p5, p0, Linstall/app/CollectionAdapterd;->mDropDownLayoutId:I

    .line 25
    iput-object p3, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    .line 26
    iput-object p2, p0, Linstall/app/CollectionAdapterd;->mReflector:Linstall/app/IModelReflectord;

    .line 27
    invoke-interface {p3, p0}, Linstall/app/IObservableCollectiond;->subscribe(Linstall/app/CollectionObserverd;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/IObservableCollectiond;II)V
    .locals 6
    .param p1, "context"    # Linstall/app/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/IObservableCollectiond",
            "<*>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "collection":Linstall/app/IObservableCollectiond;, "Linstall/app/IObservableCollectiond<*>;"
    new-instance v2, Linstall/app/CollectionAdapterd$1;

    invoke-direct {v2, p1}, Linstall/app/CollectionAdapterd$1;-><init>(Linstall/app/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linstall/app/CollectionAdapterd;-><init>(Linstall/app/Context;Linstall/app/IModelReflectord;Linstall/app/IObservableCollectiond;II)V

    .line 37
    return-void
.end method

.method private getAttachedMapper(Linstall/app/View;)Linstall/app/ObservableMapperd;
    .locals 1
    .param p1, "convertView"    # Linstall/app/View;

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method private getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .line 52
    move-object v3, p2

    .line 53
    .local v3, "returnView":Linstall/app/View;
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v4}, Linstall/app/IObservableCollectiond;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 83
    :goto_0
    return-object v3

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    :try_start_0
    invoke-direct {p0, p2}, Linstall/app/CollectionAdapterd;->getAttachedMapper(Linstall/app/View;)Linstall/app/ObservableMapperd;

    move-result-object v1

    .line 60
    .local v1, "mapper":Linstall/app/ObservableMapperd;
    if-eqz v1, :cond_1

    .line 61
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v4, p1}, Linstall/app/IObservableCollectiond;->onLoad(I)V

    .line 62
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mReflector:Linstall/app/IModelReflectord;

    iget-object v5, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v5, p1}, Linstall/app/IObservableCollectiond;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Linstall/app/ObservableMapperd;->changeMapping(Linstall/app/IModelReflectord;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v1    # "mapper":Linstall/app/ObservableMapperd;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Linstall/app/ObservableMapperd;

    invoke-direct {v1}, Linstall/app/ObservableMapperd;-><init>()V

    .line 72
    .restart local v1    # "mapper":Linstall/app/ObservableMapperd;
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v4, p1}, Linstall/app/IObservableCollectiond;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "model":Ljava/lang/Object;
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v4, p1}, Linstall/app/IObservableCollectiond;->onLoad(I)V

    .line 74
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mReflector:Linstall/app/IModelReflectord;

    invoke-virtual {v1, v4, v2}, Linstall/app/ObservableMapperd;->startCreateMapping(Linstall/app/IModelReflectord;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v1}, Linstall/app/ObservableMapperd;->endCreateMapping()V

    .line 81
    invoke-direct {p0, v3, v1}, Linstall/app/CollectionAdapterd;->putAttachedMapper(Linstall/app/View;Linstall/app/ObservableMapperd;)V

    .line 82
    iget-object v4, p0, Linstall/app/CollectionAdapterd;->mReflector:Linstall/app/IModelReflectord;

    iget-object v5, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v5, p1}, Linstall/app/IObservableCollectiond;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Linstall/app/ObservableMapperd;->changeMapping(Linstall/app/IModelReflectord;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putAttachedMapper(Linstall/app/View;Linstall/app/ObservableMapperd;)V
    .locals 0
    .param p1, "convertView"    # Linstall/app/View;
    .param p2, "mapper"    # Linstall/app/ObservableMapperd;

    .prologue
    .line 105
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v0}, Linstall/app/IObservableCollectiond;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 87
    iget v0, p0, Linstall/app/CollectionAdapterd;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    .line 88
    iget v0, p0, Linstall/app/CollectionAdapterd;->mDropDownLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapterd;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CollectionAdapterd;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapterd;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Linstall/app/CollectionAdapterd;->mCollection:Linstall/app/IObservableCollectiond;

    invoke-interface {v0, p1}, Linstall/app/IObservableCollectiond;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 94
    iget v0, p0, Linstall/app/CollectionAdapterd;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CollectionAdapterd;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method

.method public onCollectionChanged(Linstall/app/IObservableCollectiond;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservableCollectiond",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "iObservableCollection":Linstall/app/IObservableCollectiond;, "Linstall/app/IObservableCollectiond<*>;"
    iget-object v0, p0, Linstall/app/CollectionAdapterd;->mHandler:Linstall/app/Handler;

    new-instance v1, Linstall/app/CollectionAdapterd$C00011;

    invoke-direct {v1, p0}, Linstall/app/CollectionAdapterd$C00011;-><init>(Linstall/app/CollectionAdapterd;)V

    invoke-virtual {v0, v1}, Linstall/app/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
