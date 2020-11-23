.class public Linstall/app/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected commandNames:[Ljava/lang/String;

.field protected final mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mDropDownLayoutId:I

.field protected final mLayoutId:I

.field protected final mReflector:Linstall/app/ICachedModelReflector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/ICachedModelReflector",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected observableNames:[Ljava/lang/String;

.field protected valueNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "layoutId"    # I
    .param p5, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 10
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->commandNames:[Ljava/lang/String;

    .line 16
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->observableNames:[Ljava/lang/String;

    .line 17
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->valueNames:[Ljava/lang/String;

    .line 20
    iput-object p1, p0, Linstall/app/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput p4, p0, Linstall/app/ArrayAdapter;->mLayoutId:I

    .line 22
    iput p5, p0, Linstall/app/ArrayAdapter;->mDropDownLayoutId:I

    .line 23
    iput-object p3, p0, Linstall/app/ArrayAdapter;->mArray:[Ljava/lang/Object;

    .line 24
    new-instance v0, Linstall/app/CachedModelReflector;

    invoke-direct {v0, p2}, Linstall/app/CachedModelReflector;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Linstall/app/ArrayAdapter;->mReflector:Linstall/app/ICachedModelReflector;

    .line 25
    iget-object v0, p0, Linstall/app/ArrayAdapter;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getObservables()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapter;->observableNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->observableNames:[Ljava/lang/String;

    .line 26
    iget-object v0, p0, Linstall/app/ArrayAdapter;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getCommands()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapter;->commandNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->commandNames:[Ljava/lang/String;

    .line 27
    iget-object v0, p0, Linstall/app/ArrayAdapter;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getValues()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapter;->valueNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapter;->valueNames:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method private getAttachedMapper(Landroid/view/View;)Linstall/app/ObservableMapper;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 109
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    const v1, 0x7f020005

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "mappers":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    .end local v0    # "mappers":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "mappers":Ljava/lang/Object;
    :cond_0
    check-cast v0, Linstall/app/ObservableMapper;

    goto :goto_0
.end method

.method private getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "r10"    # I
    .param p2, "r11"    # Landroid/view/View;
    .param p3, "r12"    # Landroid/view/ViewGroup;
    .param p4, "r13"    # I

    .prologue
    .line 105
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.ArrayAdapterr.getView(int, android.view.View, android.view.ViewGroup, int):android.view.View"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putAttachedMapper(Landroid/view/View;Linstall/app/ObservableMapper;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "mapper"    # Linstall/app/ObservableMapper;

    .prologue
    .line 117
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    const v0, 0x7f020005

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayAdapter;->mArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    iget v0, p0, Linstall/app/ArrayAdapter;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    .line 122
    iget v0, p0, Linstall/app/ArrayAdapter;->mDropDownLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/ArrayAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 35
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayAdapter;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 39
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    .local p0, "this":Linstall/app/ArrayAdapter;, "Linstall/app/ArrayAdapter<TT;>;"
    iget v0, p0, Linstall/app/ArrayAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
