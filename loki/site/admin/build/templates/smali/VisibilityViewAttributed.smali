.class public Linstall/app/VisibilityViewAttributed;
.super Linstall/app/ViewAttributed;
.source "VisibilityViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/View;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1, p2}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Linstall/app/BindingTyped;->NoBinding:Linstall/app/BindingTyped;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x8

    .line 13
    if-nez p1, :cond_1

    .line 14
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Linstall/app/View;->setVisibility(I)V

    .line 24
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 15
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/View;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Linstall/app/View;->setVisibility(I)V

    goto :goto_0

    .line 21
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Linstall/app/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    invoke-virtual {v0}, Linstall/app/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Linstall/app/VisibilityViewAttributed;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
