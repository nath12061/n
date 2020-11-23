.class public Linstall/app/ViewProviderd;
.super Linstall/app/BindingProviderd;
.source "ViewProviderd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Linstall/app/BindingProviderd;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;)V
    .locals 6
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 15
    const-string v0, "enabled"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "visibility"

    invoke-virtual {p0, p1, p2, p3, v0}, Linstall/app/ViewProviderd;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v4, "onClick"

    const-class v5, Linstall/app/OnClickListenerMulticastd;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/ViewProviderd;->bindCommand(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-string v4, "onLongClick"

    const-class v5, Linstall/app/OnLongClickListenerMulticastd;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Linstall/app/ViewProviderd;->bindCommand(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<",
            "Linstall/app/View;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 5
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Linstall/app/EnabledViewAttributed;

    const-string v1, "enabled"

    invoke-direct {v0, p1, v1}, Linstall/app/EnabledViewAttributed;-><init>(Linstall/app/View;Ljava/lang/String;)V

    .line 11
    :goto_0
    return-object v0

    .line 8
    :cond_0
    const-string v0, "visibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Linstall/app/VisibilityViewAttributed;

    const-string v1, "visibility"

    invoke-direct {v0, p1, v1}, Linstall/app/VisibilityViewAttributed;-><init>(Linstall/app/View;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
