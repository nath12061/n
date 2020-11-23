.class public Linstall/app/CombinedAdapter;
.super Landroid/widget/BaseAdapter;
.source "CombinedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CombinedAdapter$TranslatedPosition;
    }
.end annotation


# instance fields
.field private mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private getTranslatedPosition(I)Linstall/app/CombinedAdapter$TranslatedPosition;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "count":I
    iget-object v4, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 47
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 48
    iget-object v4, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 49
    .local v0, "a":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    if-ge p1, v4, :cond_0

    .line 50
    new-instance v4, Linstall/app/CombinedAdapter$TranslatedPosition;

    sub-int v5, p1, v1

    invoke-direct {v4, p0, v5, v0}, Linstall/app/CombinedAdapter$TranslatedPosition;-><init>(Linstall/app/CombinedAdapter;ILandroid/widget/Adapter;)V

    .line 54
    .end local v0    # "a":Landroid/widget/Adapter;
    :goto_1
    return-object v4

    .line 52
    .restart local v0    # "a":Landroid/widget/Adapter;
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "a":Landroid/widget/Adapter;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 24
    iget-object v0, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "count":I
    iget-object v2, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 33
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapter;->getTranslatedPosition(I)Linstall/app/CombinedAdapter$TranslatedPosition;

    move-result-object v0

    .line 38
    .local v0, "pos":Linstall/app/CombinedAdapter$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->adapter:Landroid/widget/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->position:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 41
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
    .line 58
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapter;->getTranslatedPosition(I)Linstall/app/CombinedAdapter$TranslatedPosition;

    move-result-object v0

    .line 59
    .local v0, "pos":Linstall/app/CombinedAdapter$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->adapter:Landroid/widget/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->position:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    .line 62
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
    .line 74
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapter;->getTranslatedPosition(I)Linstall/app/CombinedAdapter$TranslatedPosition;

    move-result-object v0

    .line 75
    .local v0, "pos":Linstall/app/CombinedAdapter$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    iget-object v2, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->adapter:Landroid/widget/Adapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Linstall/app/CombinedAdapter;->getTranslatedPosition(I)Linstall/app/CombinedAdapter$TranslatedPosition;

    move-result-object v0

    .line 67
    .local v0, "pos":Linstall/app/CombinedAdapter$TranslatedPosition;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->adapter:Landroid/widget/Adapter;

    iget v2, v0, Linstall/app/CombinedAdapter$TranslatedPosition;->position:I

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Linstall/app/CombinedAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
