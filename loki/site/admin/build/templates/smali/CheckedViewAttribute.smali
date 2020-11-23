.class public abstract Linstall/app/CheckedViewAttribute;
.super Linstall/app/ViewAttribute;
.source "CheckedViewAttribute.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttribute",
        "<",
        "Landroid/widget/CompoundButton;",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .locals 0
    .param p2, "view"    # Landroid/widget/ProgressBar;
    .param p3, "progress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "mType":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Linstall/app/ViewAttribute;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 15
    .local v0, "changeTo":Z
    if-nez p1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 22
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 25
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    const-class v2, Linstall/app/OnCheckedChangeListenerMulticast;

    invoke-static {v1, v2}, Linstall/app/Binder;->getMulticastListenerForView(Landroid/view/View;Ljava/lang/Class;)Linstall/app/MulticastListener;

    move-result-object v1

    check-cast v1, Linstall/app/OnCheckedChangeListenerMulticast;

    invoke-virtual {v1}, Linstall/app/OnCheckedChangeListenerMulticast;->nextActionIsNotFromUser()V

    .line 26
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 28
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 22
    goto :goto_0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Linstall/app/CheckedViewAttribute;->notifyChanged()V

    .line 36
    return-void
.end method
