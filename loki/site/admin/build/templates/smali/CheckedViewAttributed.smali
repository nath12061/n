.class public Linstall/app/CheckedViewAttributed;
.super Linstall/app/ViewAttributed;
.source "CheckedViewAttributed.java"

# interfaces
.implements Linstall/app/OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/CompoundButton;",
        "Ljava/lang/Boolean;",
        ">;",
        "Linstall/app/OnCheckedChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/CompoundButton;)V
    .locals 2
    .param p1, "view"    # Linstall/app/CompoundButton;

    .prologue
    .line 6
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "checked"

    invoke-direct {p0, v0, p1, v1}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/CompoundButton;

    invoke-virtual {v1}, Linstall/app/CompoundButton;->isChecked()Z

    move-result v0

    .line 12
    .local v0, "changeTo":Z
    if-nez p1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 18
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 19
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/CompoundButton;

    invoke-virtual {v1}, Linstall/app/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 23
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    check-cast v1, Linstall/app/CompoundButton;

    invoke-virtual {v1, v0}, Linstall/app/CompoundButton;->setChecked(Z)V

    .line 25
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 19
    goto :goto_0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/CompoundButton;

    invoke-virtual {v0}, Linstall/app/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Linstall/app/CompoundButton;Z)V
    .locals 0
    .param p1, "view"    # Linstall/app/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 32
    invoke-virtual {p0}, Linstall/app/CheckedViewAttributed;->notifyChanged()V

    .line 33
    return-void
.end method
