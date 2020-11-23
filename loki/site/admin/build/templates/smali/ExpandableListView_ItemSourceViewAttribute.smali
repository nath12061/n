.class public abstract Linstall/app/ExpandableListView_ItemSourceViewAttribute;
.super Linstall/app/ViewAttribute;
.source "ExpandableListView_ItemSourceViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/ExpandableListView;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 7
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
    .line 25
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Linstall/app/CursorRowTypeMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    .line 28
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Linstall/app/BindingType;->OneWay:Linstall/app/BindingType;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 10
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Linstall/app/ExpandableListView_ItemSourceViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Linstall/app/Binder;->getBindingMapForView(Landroid/view/View;)Linstall/app/BindingMap;

    move-result-object v0

    .line 12
    .local v0, "map":Linstall/app/BindingMap;
    const-string v1, "itemTemplate"

    invoke-virtual {v0, v1}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "childItemTemplate"

    invoke-virtual {v0, v1}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "childItemSource"

    invoke-virtual {v0, v1}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const-string v1, "childItemSource"

    invoke-virtual {v0, v1}, Linstall/app/BindingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    .end local v0    # "map":Linstall/app/BindingMap;
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
