.class public Linstall/app/OnCheckedChangeListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnCheckedChangeListenerMulticastd.java"

# interfaces
.implements Linstall/app/OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/OnCheckedChangeListener;",
        ">;",
        "Linstall/app/OnCheckedChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Linstall/app/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Linstall/app/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 15
    iget-object v1, p0, Linstall/app/OnCheckedChangeListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Linstall/app/OnCheckedChangeListenerMulticastd;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Linstall/app/OnCheckedChangeListenerMulticastd;->invokeCommands(Linstall/app/View;[Ljava/lang/Object;)V

    .line 21
    :cond_1
    invoke-virtual {p0}, Linstall/app/OnCheckedChangeListenerMulticastd;->clearBroadcastState()V

    .line 22
    return-void
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 1
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 9
    const-class v0, Linstall/app/CompoundButton;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    :cond_0
    return-void
.end method
