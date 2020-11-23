.class public Linstall/app/ArrayAdapterr;
.super Linstall/app/BaseAdapter;
.source "ArrayAdapterr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/BaseAdapter;"
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

.field protected final mContext:Linstall/app/Context;

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
.method public constructor <init>(Linstall/app/Context;Ljava/lang/Class;[Ljava/lang/Object;II)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p4, "layoutId"    # I
    .param p5, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
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
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 8
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->commandNames:[Ljava/lang/String;

    .line 14
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->observableNames:[Ljava/lang/String;

    .line 15
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->valueNames:[Ljava/lang/String;

    .line 18
    iput-object p1, p0, Linstall/app/ArrayAdapterr;->mContext:Linstall/app/Context;

    .line 19
    iput p4, p0, Linstall/app/ArrayAdapterr;->mLayoutId:I

    .line 20
    iput p5, p0, Linstall/app/ArrayAdapterr;->mDropDownLayoutId:I

    .line 21
    iput-object p3, p0, Linstall/app/ArrayAdapterr;->mArray:[Ljava/lang/Object;

    .line 22
    new-instance v0, Linstall/app/CachedModelReflector;

    invoke-direct {v0, p2}, Linstall/app/CachedModelReflector;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->mReflector:Linstall/app/ICachedModelReflector;

    .line 23
    iget-object v0, p0, Linstall/app/ArrayAdapterr;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getObservables()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapterr;->observableNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->observableNames:[Ljava/lang/String;

    .line 24
    iget-object v0, p0, Linstall/app/ArrayAdapterr;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getCommands()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapterr;->commandNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->commandNames:[Ljava/lang/String;

    .line 25
    iget-object v0, p0, Linstall/app/ArrayAdapterr;->mReflector:Linstall/app/ICachedModelReflector;

    invoke-interface {v0}, Linstall/app/ICachedModelReflector;->getValues()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Linstall/app/ArrayAdapterr;->valueNames:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/ArrayAdapterr;->valueNames:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method private getAttachedMapper(Linstall/app/View;)Linstall/app/ObservableMapper;
    .locals 1
    .param p1, "convertView"    # Linstall/app/View;

    .prologue
    .line 109
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;
    .locals 2
    .param p1, "r10"    # I
    .param p2, "r11"    # Linstall/app/View;
    .param p3, "r12"    # Linstall/app/ViewGroup;
    .param p4, "r13"    # I

    .prologue
    .line 103
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.calss.ArrayAdapters.getView(int, install.app.View, install.app.ViewGroup, int):install.app.View"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayAdapterr;->mArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 115
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    iget v0, p0, Linstall/app/ArrayAdapterr;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    .line 116
    iget v0, p0, Linstall/app/ArrayAdapterr;->mDropDownLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapterr;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/ArrayAdapterr;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapterr;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 33
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    iget-object v0, p0, Linstall/app/ArrayAdapterr;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 37
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 122
    .local p0, "this":Linstall/app/ArrayAdapterr;, "Linstall/app/ArrayAdapterr<TT;>;"
    iget v0, p0, Linstall/app/ArrayAdapterr;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/ArrayAdapterr;->getView(ILinstall/app/View;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method
