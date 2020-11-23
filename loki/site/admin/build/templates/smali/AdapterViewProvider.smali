.class public Linstall/app/AdapterViewProvider;
.super Linstall/app/BindingProvider;
.source "AdapterViewProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/BindingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 37
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "itemTemplate"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "spinnerTemplate"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v0, "selectedItem"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "clickedItem"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string v0, "clickedId"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "adapter"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "itemSource"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/AdapterViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "onItemSelected"

    invoke-virtual {p2, v0}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :cond_0
    const-string v0, "onItemClicked"

    invoke-virtual {p2, v0}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_1
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttribute",
            "<TTv;*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 10
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v1

    .line 14
    :cond_1
    :try_start_0
    const-string v0, "adapter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    :cond_2
    const-string v0, "selectedItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    :cond_3
    const-string v0, "clickedItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    :cond_4
    const-string v0, "clickedId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    :cond_5
    const-string v0, "itemSource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    const-string v0, "itemTemplate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    :cond_6
    const-string v0, "spinnerTemplate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_7
    instance-of v0, p1, Landroid/widget/ExpandableListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
