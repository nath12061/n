.class public Linstall/app/KeyListenerMulticast;
.super Linstall/app/MulticastListener;
.source "KeyListenerMulticast.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListener",
        "<",
        "Landroid/text/method/KeyListener;",
        ">;",
        "Landroid/text/method/KeyListener;"
    }
.end annotation


# instance fields
.field private originalListener:Landroid/text/method/KeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/MulticastListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I

    .prologue
    .line 20
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V

    .line 23
    :cond_0
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 40
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/text/Editable;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/view/KeyEvent;

    .prologue
    .line 47
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerToView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 13
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 14
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Linstall/app/KeyListenerMulticast;->originalListener:Landroid/text/method/KeyListener;

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 17
    :cond_0
    return-void
.end method
