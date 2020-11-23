.class public abstract Linstall/app/EnabledViewAttribute;
.super Linstall/app/ViewAttribute;
.source "EnabledViewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 10
    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Linstall/app/EnabledViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 12
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Linstall/app/EnabledViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Linstall/app/EnabledViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Linstall/app/EnabledViewAttribute;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
