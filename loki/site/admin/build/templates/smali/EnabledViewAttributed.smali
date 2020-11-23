.class public Linstall/app/EnabledViewAttributed;
.super Linstall/app/ViewAttributed;
.source "EnabledViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, p2}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 9
    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Linstall/app/EnabledViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/View;->setEnabled(Z)V

    .line 14
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 11
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Linstall/app/EnabledViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Linstall/app/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Linstall/app/EnabledViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    invoke-virtual {v0}, Linstall/app/View;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0}, Linstall/app/EnabledViewAttributed;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
