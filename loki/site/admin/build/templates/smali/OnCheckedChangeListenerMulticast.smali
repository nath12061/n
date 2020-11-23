.class public Linstall/app/OnCheckedChangeListenerMulticast;
.super Linstall/app/MulticastListener;
.source "OnCheckedChangeListenerMulticast.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListener",
        "<",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/MulticastListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 16
    iget-object v1, p0, Linstall/app/OnCheckedChangeListenerMulticast;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 17
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Linstall/app/OnCheckedChangeListenerMulticast;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Linstall/app/OnCheckedChangeListenerMulticast;->invokeCommands(Landroid/view/View;[Ljava/lang/Object;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Linstall/app/OnCheckedChangeListenerMulticast;->clearBroadcastState()V

    .line 24
    return-void
.end method

.method public registerToView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 10
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    :cond_0
    return-void
.end method
