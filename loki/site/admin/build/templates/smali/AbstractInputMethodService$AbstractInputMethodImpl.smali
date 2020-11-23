.class public abstract Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Linstall/app/InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Linstall/app/AbstractInputMethodService;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/AbstractInputMethodService;

    .prologue
    .line 11
    iput-object p1, p0, Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Linstall/app/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSession(Linstall/app/InputMethod$SessionCallback;)V
    .locals 2
    .param p1, "callback"    # Linstall/app/InputMethod$SessionCallback;

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revokeSession(Linstall/app/InputMethodSession;)V
    .locals 2
    .param p1, "session"    # Linstall/app/InputMethodSession;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionEnabled(Linstall/app/InputMethodSession;Z)V
    .locals 2
    .param p1, "session"    # Linstall/app/InputMethodSession;
    .param p2, "enabled"    # Z

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
