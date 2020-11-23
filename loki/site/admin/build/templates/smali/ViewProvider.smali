.class public Linstall/app/ViewProvider;
.super Linstall/app/BindingProvider;
.source "ViewProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/BindingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 15
    const-string v0, "enabled"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "visibility"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewProvider;->bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v4, "onClick"

    const-class v5, Linstall/app/OnClickListenerMulticast;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/ViewProvider;->bindCommand(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-string v4, "onLongClick"

    const-class v5, Linstall/app/OnLongClickListenerMulticast;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/ViewProvider;->bindCommand(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method public createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttribute",
            "<",
            "Landroid/view/View;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 7
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    const-string v0, "visibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
