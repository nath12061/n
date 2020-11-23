.class public abstract Linstall/app/BaseKeyListener;
.super Linstall/app/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Linstall/app/KeyListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/MetaKeyKeyListener;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public backspace(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyDown(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyOther(Linstall/app/View;Landroid/text/Editable;Linstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
