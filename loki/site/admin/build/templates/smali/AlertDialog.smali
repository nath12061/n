.class public abstract Linstall/app/AlertDialog;
.super Linstall/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Linstall/app/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/AlertDialog$Builder;
    }
.end annotation


# direct methods
.method protected constructor <init>(Linstall/app/Context;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 143
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/Dialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Linstall/app/Context;I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 148
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/Dialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Linstall/app/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 153
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/Dialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getButton(I)Linstall/app/Button;
    .locals 2
    .param p1, "whichButton"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListView()Linstall/app/ListView;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Linstall/app/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Linstall/app/Bundle;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyDown(ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyUp(ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton(ILjava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Linstall/app/DialogInterface$OnClickListener;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton(ILjava/lang/CharSequence;Linstall/app/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Linstall/app/Message;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton(Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Linstall/app/DialogInterface$OnClickListener;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton(Ljava/lang/CharSequence;Linstall/app/Message;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Linstall/app/Message;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton2(Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Linstall/app/DialogInterface$OnClickListener;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton2(Ljava/lang/CharSequence;Linstall/app/Message;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Linstall/app/Message;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton3(Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Linstall/app/DialogInterface$OnClickListener;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButton3(Ljava/lang/CharSequence;Linstall/app/Message;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Linstall/app/Message;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomTitle(Linstall/app/View;)V
    .locals 2
    .param p1, "customTitleView"    # Linstall/app/View;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(Linstall/app/Drawable;)V
    .locals 2
    .param p1, "icon"    # Linstall/app/Drawable;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 2
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setView(Linstall/app/View;)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setView(Linstall/app/View;IIII)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
