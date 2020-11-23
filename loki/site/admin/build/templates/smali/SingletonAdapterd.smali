.class public Linstall/app/SingletonAdapterd;
.super Ljava/lang/Object;
.source "SingletonAdapterd.java"

# interfaces
.implements Linstall/app/Adapter;
.implements Linstall/app/SpinnerAdapter;
.implements Linstall/app/Observerd;


# instance fields
.field private final mContext:Linstall/app/Context;

.field private mDataSetObserver:Linstall/app/DataSetObserver;

.field private final mDropDownId:I

.field private mDropDownView:Linstall/app/View;

.field private final mLayoutId:I

.field private final mObj:Ljava/lang/Object;

.field private mView:Linstall/app/View;


# direct methods
.method public constructor <init>(Linstall/app/Context;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Linstall/app/SingletonAdapterd;->mObj:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Linstall/app/SingletonAdapterd;->mContext:Linstall/app/Context;

    .line 24
    iput p3, p0, Linstall/app/SingletonAdapterd;->mLayoutId:I

    .line 25
    if-gtz p4, :cond_0

    .line 26
    move p4, p3

    .line 28
    :cond_0
    iput p4, p0, Linstall/app/SingletonAdapterd;->mDropDownId:I

    .line 29
    instance-of v0, p2, Linstall/app/Observabled;

    if-eqz v0, :cond_1

    .line 30
    check-cast p2, Linstall/app/Observabled;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p0}, Linstall/app/Observabled;->subscribe(Linstall/app/Observerd;)V

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

.method public getDropDownView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 78
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mDropDownView:Linstall/app/View;

    if-nez v0, :cond_0

    .line 81
    :cond_0
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mDropDownView:Linstall/app/View;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mObj:Ljava/lang/Object;

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

.method public getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 51
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mView:Linstall/app/View;

    if-nez v0, :cond_0

    .line 54
    :cond_0
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mView:Linstall/app/View;

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

.method public onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "iObservable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mDataSetObserver:Linstall/app/DataSetObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Linstall/app/SingletonAdapterd;->mDataSetObserver:Linstall/app/DataSetObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 88
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Linstall/app/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Linstall/app/DataSetObserver;

    .prologue
    .line 70
    iput-object p1, p0, Linstall/app/SingletonAdapterd;->mDataSetObserver:Linstall/app/DataSetObserver;

    .line 71
    return-void
.end method

.method public unregisterDataSetObserver(Linstall/app/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Linstall/app/DataSetObserver;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/SingletonAdapterd;->mDataSetObserver:Linstall/app/DataSetObserver;

    .line 75
    return-void
.end method
