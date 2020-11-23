.class public Linstall/app/KeyListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "KeyListenerMulticastd.java"

# interfaces
.implements Linstall/app/KeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/KeyListener;",
        ">;",
        "Linstall/app/KeyListener;"
    }
.end annotation


# instance fields
.field private originalListener:Linstall/app/KeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Linstall/app/View;Landroid/text/Editable;I)V
    .locals 1
    .param p1, "arg0"    # Linstall/app/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I

    .prologue
    .line 16
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Linstall/app/KeyListener;->clearMetaKeyState(Linstall/app/View;Landroid/text/Editable;I)V

    .line 19
    :cond_0
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    invoke-interface {v0}, Linstall/app/KeyListener;->getInputType()I

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Linstall/app/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Linstall/app/KeyEvent;

    .prologue
    .line 29
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    invoke-interface {v0, p1, p2, p3, p4}, Linstall/app/KeyListener;->onKeyDown(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyOther(Linstall/app/View;Landroid/text/Editable;Linstall/app/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Linstall/app/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # Linstall/app/KeyEvent;

    .prologue
    .line 36
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Linstall/app/KeyListener;->onKeyOther(Linstall/app/View;Landroid/text/Editable;Linstall/app/KeyEvent;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Linstall/app/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Linstall/app/KeyEvent;

    .prologue
    .line 43
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    invoke-interface {v0, p1, p2, p3, p4}, Linstall/app/KeyListener;->onKeyUp(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 1
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 9
    instance-of v0, p1, Linstall/app/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 10
    check-cast v0, Linstall/app/TextView;

    invoke-virtual {v0}, Linstall/app/TextView;->getKeyListener()Linstall/app/KeyListener;

    move-result-object v0

    iput-object v0, p0, Linstall/app/KeyListenerMulticastd;->originalListener:Linstall/app/KeyListener;

    .line 11
    check-cast p1, Linstall/app/TextView;

    .end local p1    # "v":Linstall/app/View;
    invoke-virtual {p1, p0}, Linstall/app/TextView;->setKeyListener(Linstall/app/KeyListener;)V

    .line 13
    :cond_0
    return-void
.end method
