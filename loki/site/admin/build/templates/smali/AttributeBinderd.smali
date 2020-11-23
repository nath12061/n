.class public Linstall/app/AttributeBinderd;
.super Ljava/lang/Object;
.source "AttributeBinderd.java"


# static fields
.field private static _attributeFactory:Linstall/app/AttributeBinderd;


# instance fields
.field private providers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Linstall/app/BindingProviderd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Linstall/app/AttributeBinderd;->providers:Ljava/util/Hashtable;

    .line 10
    return-void
.end method

.method public static getInstance()Linstall/app/AttributeBinderd;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Linstall/app/AttributeBinderd;->_attributeFactory:Linstall/app/AttributeBinderd;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Linstall/app/AttributeBinderd;

    invoke-direct {v0}, Linstall/app/AttributeBinderd;-><init>()V

    sput-object v0, Linstall/app/AttributeBinderd;->_attributeFactory:Linstall/app/AttributeBinderd;

    .line 16
    :cond_0
    sget-object v0, Linstall/app/AttributeBinderd;->_attributeFactory:Linstall/app/AttributeBinderd;

    return-object v0
.end method


# virtual methods
.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 4
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v2, p0, Linstall/app/AttributeBinderd;->providers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/BindingProviderd;

    .line 21
    .local v1, "p":Linstall/app/BindingProviderd;
    invoke-virtual {v1, p1, p2}, Linstall/app/BindingProviderd;->createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;

    move-result-object v0

    .line 22
    .local v0, "a":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<**>;"
    if-eqz v0, :cond_0

    .line 26
    .end local v0    # "a":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<**>;"
    .end local v1    # "p":Linstall/app/BindingProviderd;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerProvider(Linstall/app/BindingProviderd;)V
    .locals 2
    .param p1, "provider"    # Linstall/app/BindingProviderd;

    .prologue
    .line 30
    iget-object v0, p0, Linstall/app/AttributeBinderd;->providers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Linstall/app/AttributeBinderd;->providers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
.end method
