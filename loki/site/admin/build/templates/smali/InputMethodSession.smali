.class public interface abstract Linstall/app/InputMethodSession;
.super Ljava/lang/Object;
.source "InputMethodSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/InputMethodSession$EventCallback;
    }
.end annotation


# virtual methods
.method public abstract appPrivateCommand(Ljava/lang/String;Linstall/app/Bundle;)V
.end method

.method public abstract dispatchKeyEvent(ILinstall/app/KeyEvent;Linstall/app/InputMethodSession$EventCallback;)V
.end method

.method public abstract dispatchTrackballEvent(ILinstall/app/MotionEvent;Linstall/app/InputMethodSession$EventCallback;)V
.end method

.method public abstract displayCompletions([Linstall/app/CompletionInfo;)V
.end method

.method public abstract finishInput()V
.end method

.method public abstract toggleSoftInput(II)V
.end method

.method public abstract updateCursor(Linstall/app/Rect;)V
.end method

.method public abstract updateExtractedText(ILinstall/app/ExtractedText;)V
.end method

.method public abstract updateSelection(IIIIII)V
.end method
