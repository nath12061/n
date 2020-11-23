.class public abstract Linstall/app/ItemSourceViewAttribute;
.super Linstall/app/ViewAttribute;
.source "ItemSourceViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Ljava/lang/String;)V
    .locals 0
    .param p2, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<Landroid/widget/Adapter;>;"
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingType;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Linstall/app/CursorRowTypeMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    .line 42
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 11
    if-eqz p1, :cond_0

    .line 12
    instance-of v3, p1, Landroid/widget/Adapter;

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {p0}, Linstall/app/ItemSourceViewAttribute;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView;

    check-cast p1, Landroid/widget/Adapter;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 16
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Linstall/app/ItemSourceViewAttribute;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Linstall/app/Binder;->getBindingMapForView(Landroid/view/View;)Linstall/app/BindingMap;

    move-result-object v1

    .line 18
    .local v1, "map":Linstall/app/BindingMap;
    :try_start_0
    invoke-virtual {p0}, Linstall/app/ItemSourceViewAttribute;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "itemTemplate"

    invoke-static {v3, v4}, Linstall/app/Binder;->getAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;

    move-result-object v3

    invoke-virtual {v3}, Linstall/app/ViewAttribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/LayoutTemplate;

    invoke-virtual {v3}, Linstall/app/LayoutTemplate;->getTemplate()I

    move-result v0

    .line 19
    .local v0, "itemTemplate":I
    const/4 v2, -0x1

    .line 20
    .local v2, "spinnerTemplate":I
    const-string v3, "spinnerTemplate"

    invoke-virtual {v1, v3}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    :cond_2
    if-gtz v2, :cond_0

    goto :goto_0

    .line 29
    .end local v0    # "itemTemplate":I
    .end local v2    # "spinnerTemplate":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
