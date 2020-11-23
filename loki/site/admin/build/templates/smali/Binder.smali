.class public Linstall/app/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Binder$InflateResult;
    }
.end annotation


# static fields
.field private static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attachProcessedViewsToRootView(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "processedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v0, 0x7f020003

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static bindView(Landroid/content/Context;Linstall/app/Binder$InflateResult;Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflatedView"    # Linstall/app/Binder$InflateResult;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v1, p1, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Linstall/app/AttributeBinder;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p1, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public static currentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "0.2"

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Linstall/app/Binder;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attributeId"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/AttributeNotDefinedException;
        }
    .end annotation

    .prologue
    const v4, 0x7f020001

    .line 33
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/AttributeCollection;

    .line 34
    .local v0, "attributes":Linstall/app/AttributeCollection;
    if-eqz v0, :cond_0

    instance-of v3, v0, Linstall/app/AttributeCollection;

    if-nez v3, :cond_2

    .line 35
    :cond_0
    new-instance v1, Linstall/app/AttributeCollection;

    invoke-direct {v1}, Linstall/app/AttributeCollection;-><init>()V

    .line 36
    .local v1, "collection":Linstall/app/AttributeCollection;
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    :cond_1
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Linstall/app/AttributeBinder;->createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;

    move-result-object v2

    .line 44
    .local v2, "viewAttribute":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    if-nez v2, :cond_3

    .line 45
    new-instance v3, Linstall/app/AttributeNotDefinedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The view does not have attribute (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Linstall/app/AttributeNotDefinedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    .end local v1    # "collection":Linstall/app/AttributeCollection;
    .end local v2    # "viewAttribute":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    :cond_2
    move-object v1, v0

    .line 39
    .restart local v1    # "collection":Linstall/app/AttributeCollection;
    invoke-virtual {v1, p1}, Linstall/app/AttributeCollection;->containsAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v1, p1}, Linstall/app/AttributeCollection;->getAttribute(Ljava/lang/String;)Linstall/app/ViewAttribute;

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 47
    .restart local v2    # "viewAttribute":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    :cond_3
    invoke-virtual {v1, p1, v2}, Linstall/app/AttributeCollection;->putAttribute(Ljava/lang/String;Linstall/app/ViewAttribute;)V

    goto :goto_0
.end method

.method public static getBindingMapForView(Landroid/view/View;)Linstall/app/BindingMap;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 56
    const/high16 v1, 0x7f020000

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "map":Ljava/lang/Object;
    instance-of v1, v0, Linstall/app/BindingMap;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Linstall/app/BindingMap;

    .line 60
    .end local v0    # "map":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "map":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMulticastListenerForView(Landroid/view/View;Ljava/lang/Class;)Linstall/app/MulticastListener;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linstall/app/MulticastListener",
            "<*>;>(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v5, 0x7f020002

    .line 120
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "collection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<TT;>;TT;>;"
    invoke-virtual {p0, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/MulticastListener;

    .line 137
    :goto_1
    return-object v4

    .end local v0    # "collection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<TT;>;TT;>;"
    :cond_1
    move-object v0, v3

    .line 125
    check-cast v0, Ljava/util/HashMap;

    .restart local v0    # "collection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<TT;>;TT;>;"
    goto :goto_0

    .line 131
    :cond_2
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/MulticastListener;

    .line 132
    .local v2, "listener":Linstall/app/MulticastListener;, "TT;"
    invoke-virtual {v2, p0}, Linstall/app/MulticastListener;->registerToView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    .line 134
    goto :goto_1

    .line 135
    .end local v2    # "listener":Linstall/app/MulticastListener;, "TT;"
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Binderd"

    invoke-static {v4, v1}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getProcessedViewsFromRootView(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const v1, 0x7f020003

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "objCollection":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .end local v0    # "objCollection":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "objCollection":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 74
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Linstall/app/ViewFactory;

    invoke-direct {v0, v1}, Linstall/app/ViewFactory;-><init>(Landroid/view/LayoutInflater;)V

    .line 75
    .local v0, "factory":Linstall/app/ViewFactory;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 76
    new-instance v2, Linstall/app/Binder$InflateResult;

    invoke-direct {v2}, Linstall/app/Binder$InflateResult;-><init>()V

    .line 77
    .local v2, "result":Linstall/app/Binder$InflateResult;
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    .line 78
    invoke-virtual {v0}, Linstall/app/ViewFactory;->getProcessedViews()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    .line 79
    return-object v2
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 103
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/ViewProvider;

    invoke-direct {v1}, Linstall/app/ViewProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 104
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/TextViewProvider;

    invoke-direct {v1}, Linstall/app/TextViewProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 105
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/AdapterViewProvider;

    invoke-direct {v1}, Linstall/app/AdapterViewProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 106
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/ImageViewProvider;

    invoke-direct {v1}, Linstall/app/ImageViewProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 107
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/CompoundButtonProvider;

    invoke-direct {v1}, Linstall/app/CompoundButtonProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 108
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/ProgressBarProvider;

    invoke-direct {v1}, Linstall/app/ProgressBarProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 109
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/RatingBarProvider;

    invoke-direct {v1}, Linstall/app/RatingBarProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 110
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v0

    new-instance v1, Linstall/app/ViewAnimatorProvider;

    invoke-direct {v1}, Linstall/app/ViewAnimatorProvider;-><init>()V

    invoke-virtual {v0, v1}, Linstall/app/AttributeBinder;->registerProvider(Linstall/app/BindingProvider;)V

    .line 111
    sput-object p0, Linstall/app/Binder;->mApplication:Landroid/app/Application;

    .line 112
    return-void
.end method

.method static putBindingMapToView(Landroid/view/View;Linstall/app/BindingMap;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "map"    # Linstall/app/BindingMap;

    .prologue
    .line 52
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static setAndBindContentView(Landroid/app/Activity;ILjava/lang/Object;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "layoutId"    # I
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v1

    .line 65
    .local v1, "result":Linstall/app/Binder$InflateResult;
    iget-object v2, v1, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2, p2}, Linstall/app/AttributeBinder;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, v1, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method
