.class public Linstall/app/OnLongClickListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnLongClickListenerMulticastd.java"

# interfaces
.implements Linstall/app/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/View$OnLongClickListener;",
        ">;",
        "Linstall/app/View$OnLongClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Linstall/app/View;)Z
    .locals 3
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, "returnValue":Z
    iget-object v2, p0, Linstall/app/OnLongClickListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/View$OnLongClickListener;

    invoke-interface {v2, p1}, Linstall/app/View$OnLongClickListener;->onLongClick(Linstall/app/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    const/4 v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Linstall/app/OnLongClickListenerMulticastd;->invokeCommands(Linstall/app/View;[Ljava/lang/Object;)V

    .line 22
    return v1
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 0
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 10
    invoke-virtual {p1, p0}, Linstall/app/View;->setOnLongClickListener(Linstall/app/View$OnLongClickListener;)V

    .line 11
    return-void
.end method
