.class public Linstall/app/AttributeBinder;
.super Ljava/lang/Object;
.source "AttributeBinder.java"


# static fields
.field private static _attributeFactory:Linstall/app/AttributeBinder;


# instance fields
.field private providers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Linstall/app/BindingProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Linstall/app/AttributeBinder;->providers:Ljava/util/Hashtable;

    .line 12
    return-void
.end method

.method public static getInstance()Linstall/app/AttributeBinder;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Linstall/app/AttributeBinder;->_attributeFactory:Linstall/app/AttributeBinder;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Linstall/app/AttributeBinder;

    invoke-direct {v0}, Linstall/app/AttributeBinder;-><init>()V

    sput-object v0, Linstall/app/AttributeBinder;->_attributeFactory:Linstall/app/AttributeBinder;

    .line 18
    :cond_0
    sget-object v0, Linstall/app/AttributeBinder;->_attributeFactory:Linstall/app/AttributeBinder;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p1}, Linstall/app/Binder;->getBindingMapForView(Landroid/view/View;)Linstall/app/BindingMap;

    move-result-object v0

    .line 39
    .local v0, "map":Linstall/app/BindingMap;
    iget-object v2, p0, Linstall/app/AttributeBinder;->providers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/BindingProvider;

    .line 40
    .local v1, "p":Linstall/app/BindingProvider;
    invoke-virtual {v1, p1, v0, p2}, Linstall/app/BindingProvider;->bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    .end local v1    # "p":Linstall/app/BindingProvider;
    :cond_0
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttribute",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v2, p0, Linstall/app/AttributeBinder;->providers:Ljava/util/Hashtable;

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

    check-cast v1, Linstall/app/BindingProvider;

    .line 23
    .local v1, "p":Linstall/app/BindingProvider;
    invoke-virtual {v1, p1, p2}, Linstall/app/BindingProvider;->createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;

    move-result-object v0

    .line 24
    .local v0, "a":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    if-eqz v0, :cond_0

    .line 28
    .end local v0    # "a":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    .end local v1    # "p":Linstall/app/BindingProvider;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerProvider(Linstall/app/BindingProvider;)V
    .locals 2
    .param p1, "provider"    # Linstall/app/BindingProvider;

    .prologue
    .line 32
    iget-object v0, p0, Linstall/app/AttributeBinder;->providers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Linstall/app/AttributeBinder;->providers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-void
.end method
