.class public Linstall/app/InputMethodService$InputMethodSessionImpl;
.super Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/InputMethodService;


# direct methods
.method public constructor <init>(Linstall/app/InputMethodService;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/InputMethodService;

    .prologue
    .line 44
    iput-object p1, p0, Linstall/app/InputMethodService$InputMethodSessionImpl;->this$0:Linstall/app/InputMethodService;

    .line 45
    invoke-direct {p0, p1}, Linstall/app/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Linstall/app/AbstractInputMethodService;)V

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Linstall/app/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Linstall/app/Bundle;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public displayCompletions([Linstall/app/CompletionInfo;)V
    .locals 2
    .param p1, "completions"    # [Linstall/app/CompletionInfo;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toggleSoftInput(II)V
    .locals 2
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCursor(Linstall/app/Rect;)V
    .locals 2
    .param p1, "newCursor"    # Linstall/app/Rect;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateExtractedText(ILinstall/app/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Linstall/app/ExtractedText;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSelection(IIIIII)V
    .locals 2
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
