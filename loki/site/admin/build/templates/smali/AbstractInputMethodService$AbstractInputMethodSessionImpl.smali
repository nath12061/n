.class public abstract Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Linstall/app/InputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Linstall/app/AbstractInputMethodService;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/AbstractInputMethodService;

    .prologue
    .line 29
    iput-object p1, p0, Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Linstall/app/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchKeyEvent(ILinstall/app/KeyEvent;Linstall/app/InputMethodSession$EventCallback;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Linstall/app/KeyEvent;
    .param p3, "callback"    # Linstall/app/InputMethodSession$EventCallback;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchTrackballEvent(ILinstall/app/MotionEvent;Linstall/app/InputMethodSession$EventCallback;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Linstall/app/MotionEvent;
    .param p3, "callback"    # Linstall/app/InputMethodSession$EventCallback;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRevoked()Z
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revokeSelf()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
