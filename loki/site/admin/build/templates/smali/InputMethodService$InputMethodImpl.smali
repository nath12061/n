.class public Linstall/app/InputMethodService$InputMethodImpl;
.super Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/InputMethodService;


# direct methods
.method public constructor <init>(Linstall/app/InputMethodService;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/InputMethodService;

    .prologue
    .line 9
    iput-object p1, p0, Linstall/app/InputMethodService$InputMethodImpl;->this$0:Linstall/app/InputMethodService;

    .line 10
    invoke-direct {p0, p1}, Linstall/app/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Linstall/app/AbstractInputMethodService;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attachToken(Linstall/app/IBinder;)V
    .locals 2
    .param p1, "token"    # Linstall/app/IBinder;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindInput(Linstall/app/InputBinding;)V
    .locals 2
    .param p1, "binding"    # Linstall/app/InputBinding;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideSoftInput(ILinstall/app/ResultReceiver;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Linstall/app/ResultReceiver;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restartInput(Linstall/app/InputConnection;Linstall/app/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Linstall/app/InputConnection;
    .param p2, "attribute"    # Linstall/app/EditorInfo;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showSoftInput(ILinstall/app/ResultReceiver;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Linstall/app/ResultReceiver;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startInput(Linstall/app/InputConnection;Linstall/app/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Linstall/app/InputConnection;
    .param p2, "attribute"    # Linstall/app/EditorInfo;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unbindInput()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
