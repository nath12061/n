.class public Linstall/app/AttributeCollectiond;
.super Ljava/lang/Object;
.source "AttributeCollectiond.java"


# instance fields
.field private collection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/ViewAttributed",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public containsAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attrId"    # Ljava/lang/String;

    .prologue
    .line 9
    iget-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllAttributes()[Linstall/app/ViewAttributed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Linstall/app/ViewAttributed",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Linstall/app/ViewAttributed;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/ViewAttributed;

    check-cast v0, [Linstall/app/ViewAttributed;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 1
    .param p1, "attrId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/ViewAttributed;

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAttribute(Ljava/lang/String;Linstall/app/ViewAttributed;)V
    .locals 1
    .param p1, "attrId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Linstall/app/ViewAttributed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "attribute":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<**>;"
    iget-object v0, p0, Linstall/app/AttributeCollectiond;->collection:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method
