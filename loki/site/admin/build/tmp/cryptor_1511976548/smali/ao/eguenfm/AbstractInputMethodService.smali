.class public abstract Linstall/app/AbstractInputMethodService;
.super Linstall/app/Service;
.source "AbstractInputMethodService.java"

# interfaces
.implements Linstall/app/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;,
        Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Linstall/app/Service;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onBind(Linstall/app/Intent;)Linstall/app/IBinder;
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onCreateInputMethodInterface()Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract onCreateInputMethodSessionInterface()Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public onTrackballEvent(Linstall/app/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Linstall/app/MotionEvent;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
