.class public interface abstract Linstall/app/InputConnection;
.super Ljava/lang/Object;
.source "InputConnection.java"


# static fields
.field public static final GET_EXTRACTED_TEXT_MONITOR:I = 0x1

.field public static final GET_TEXT_WITH_STYLES:I = 0x1


# virtual methods
.method public abstract beginBatchEdit()Z
.end method

.method public abstract clearMetaKeyStates(I)Z
.end method

.method public abstract commitCompletion(Linstall/app/CompletionInfo;)Z
.end method

.method public abstract commitText(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract deleteSurroundingText(II)Z
.end method

.method public abstract endBatchEdit()Z
.end method

.method public abstract finishComposingText()Z
.end method

.method public abstract getCursorCapsMode(I)I
.end method

.method public abstract getExtractedText(Linstall/app/ExtractedTextRequest;I)Linstall/app/ExtractedText;
.end method

.method public abstract getTextAfterCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract getTextBeforeCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract performContextMenuAction(I)Z
.end method

.method public abstract performEditorAction(I)Z
.end method

.method public abstract performPrivateCommand(Ljava/lang/String;Linstall/app/Bundle;)Z
.end method

.method public abstract reportFullscreenMode(Z)Z
.end method

.method public abstract sendKeyEvent(Linstall/app/KeyEvent;)Z
.end method

.method public abstract setComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract setSelection(II)Z
.end method
