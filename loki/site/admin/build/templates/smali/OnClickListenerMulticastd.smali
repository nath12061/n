.class public Linstall/app/OnClickListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnClickListenerMulticastd.java"

# interfaces
.implements Linstall/app/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/View$OnClickListener;",
        ">;",
        "Linstall/app/View$OnClickListener;"
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
.method public onClick(Linstall/app/View;)V
    .locals 2
    .param p1, "arg0"    # Linstall/app/View;

    .prologue
    .line 10
    iget-object v1, p0, Linstall/app/OnClickListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/View$OnClickListener;

    invoke-interface {v1, p1}, Linstall/app/View$OnClickListener;->onClick(Linstall/app/View;)V

    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Linstall/app/OnClickListenerMulticastd;->invokeCommands(Linstall/app/View;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 0
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 18
    invoke-virtual {p1, p0}, Linstall/app/View;->setOnClickListener(Linstall/app/View$OnClickListener;)V

    .line 19
    return-void
.end method
