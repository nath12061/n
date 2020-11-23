.class public Linstall/app/SingletonAdapter;
.super Ljava/lang/Object;
.source "SingletonAdapter.java"

# interfaces
.implements Landroid/widget/Adapter;
.implements Landroid/widget/SpinnerAdapter;
.implements Linstall/app/Observer;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDropDownId:I

.field private mDropDownView:Landroid/view/View;

.field private final mLayoutId:I

.field private final mObj:Ljava/lang/Object;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Linstall/app/SingletonAdapter;->mObj:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Linstall/app/SingletonAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput p3, p0, Linstall/app/SingletonAdapter;->mLayoutId:I

    .line 25
    if-gtz p4, :cond_0

    .line 26
    move p4, p3

    .line 28
    :cond_0
    iput p4, p0, Linstall/app/SingletonAdapter;->mDropDownId:I

    .line 29
    instance-of v0, p2, Linstall/app/Observable;

    if-eqz v0, :cond_1

    .line 30
    check-cast p2, Linstall/app/Observable;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p0}, Linstall/app/Observable;->subscribe(Linstall/app/Observer;)V

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mDropDownView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linstall/app/SingletonAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Linstall/app/SingletonAdapter;->mDropDownId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v1

    iget-object v2, p0, Linstall/app/SingletonAdapter;->mObj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Linstall/app/Binder;->bindView(Landroid/content/Context;Linstall/app/Binder$InflateResult;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SingletonAdapter;->mDropDownView:Landroid/view/View;

    .line 81
    :cond_0
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mDropDownView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Linstall/app/SingletonAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Linstall/app/SingletonAdapter;->mLayoutId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v1

    iget-object v2, p0, Linstall/app/SingletonAdapter;->mObj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Linstall/app/Binder;->bindView(Landroid/content/Context;Linstall/app/Binder$InflateResult;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Linstall/app/SingletonAdapter;->mView:Landroid/view/View;

    .line 54
    :cond_0
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "iObservable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Linstall/app/SingletonAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 88
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 70
    iput-object p1, p0, Linstall/app/SingletonAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 71
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/SingletonAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 75
    return-void
.end method
