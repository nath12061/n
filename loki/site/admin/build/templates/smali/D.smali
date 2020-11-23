.class public Linstall/app/D;
.super Linstall/app/BindingProviderd;
.source "D.java"


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
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 12
    instance-of v1, p1, Linstall/app/CompoundButton;

    if-eqz v1, :cond_0

    .line 13
    const-string v1, "checked"

    invoke-virtual {p0, p1, p2, p3, v1}, Linstall/app/D;->bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-string v1, "onCheckedChange"

    invoke-virtual {p2, v1}, Linstall/app/BindingMapd;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const-string v1, "onCheckedChange"

    invoke-virtual {p2, v1}, Linstall/app/BindingMapd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p3}, Linstall/app/Utilityd;->getCommandForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;

    move-result-object v0

    .line 16
    .local v0, "command":Linstall/app/Commandd;
    if-eqz v0, :cond_0

    .line 21
    .end local v0    # "command":Linstall/app/Commandd;
    :cond_0
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Linstall/app/View;",
            ">(",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<TTv;*>;"
        }
    .end annotation

    .prologue
    .line 5
    instance-of v0, p1, Linstall/app/CompoundButton;

    if-eqz v0, :cond_0

    const-string v0, "checked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
