.class public abstract Linstall/app/OnKeyListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnKeyListenerMulticastd.java"

# interfaces
.implements Linstall/app/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/View$OnKeyListener;",
        ">;",
        "Linstall/app/View$OnKeyListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Linstall/app/View;ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Linstall/app/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 15
    iget-object v1, p0, Linstall/app/OnKeyListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    const/4 v1, 0x0

    return v1
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 0
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 11
    invoke-virtual {p1, p0}, Linstall/app/View;->setOnKeyListener(Linstall/app/View$OnKeyListener;)V

    .line 12
    return-void
.end method
