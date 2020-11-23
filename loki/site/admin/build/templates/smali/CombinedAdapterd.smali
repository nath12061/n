.class public abstract Linstall/app/CombinedAdapterd;
.super Linstall/app/BaseAdapter;
.source "CombinedAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CombinedAdapterd$TranslatedPosition;
    }
.end annotation


# instance fields
.field private mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private getTranslatedPosition(I)Linstall/app/CombinedAdapterd$TranslatedPosition;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "count":I
    iget-object v4, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 46
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 47
    iget-object v4, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Adapter;

    .line 48
    .local v0, "a":Linstall/app/Adapter;
    invoke-interface {v0}, Linstall/app/Adapter;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    if-ge p1, v4, :cond_0

    .line 49
    new-instance v4, Linstall/app/CombinedAdapterd$TranslatedPosition;

    sub-int v5, p1, v1

    invoke-direct {v4, p0, v5, v0}, Linstall/app/CombinedAdapterd$TranslatedPosition;-><init>(Linstall/app/CombinedAdapterd;ILinstall/app/Adapter;)V

    .line 53
    .end local v0    # "a":Linstall/app/Adapter;
    :goto_1
    return-object v4

    .line 51
    .restart local v0    # "a":Linstall/app/Adapter;
    :cond_0
    invoke-interface {v0}, Linstall/app/Adapter;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "a":Linstall/app/Adapter;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAdapter(Linstall/app/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Linstall/app/Adapter;

    .prologue
    .line 23
    iget-object v0, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "count":I
    iget-object v2, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/Adapter;

    invoke-interface {v2}, Linstall/app/Adapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapterd;->getTranslatedPosition(I)Linstall/app/CombinedAdapterd$TranslatedPosition;

    move-result-object v0

    .line 37
    .local v0, "pos":Linstall/app/CombinedAdapterd$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->adapter:Linstall/app/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->position:I

    invoke-interface {v1, v2}, Linstall/app/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapterd;->getTranslatedPosition(I)Linstall/app/CombinedAdapterd$TranslatedPosition;

    move-result-object v0

    .line 58
    .local v0, "pos":Linstall/app/CombinedAdapterd$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->adapter:Linstall/app/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->position:I

    invoke-interface {v1, v2}, Linstall/app/Adapter;->getItemId(I)J

    move-result-wide v2

    .line 61
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapterd;->getTranslatedPosition(I)Linstall/app/CombinedAdapterd$TranslatedPosition;

    move-result-object v0

    .line 74
    .local v0, "pos":Linstall/app/CombinedAdapterd$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    iget-object v2, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->adapter:Linstall/app/Adapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 77
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapterd;->getTranslatedPosition(I)Linstall/app/CombinedAdapterd$TranslatedPosition;

    move-result-object v0

    .line 66
    .local v0, "pos":Linstall/app/CombinedAdapterd$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->adapter:Linstall/app/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapterd$TranslatedPosition;->position:I

    invoke-interface {v1, v2, p2, p3}, Linstall/app/Adapter;->getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Linstall/app/CombinedAdapterd;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
