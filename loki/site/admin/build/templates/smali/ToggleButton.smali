.class public abstract Linstall/app/ToggleButton;
.super Linstall/app/CompoundButton;
.source "ToggleButton.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 17
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CompoundButton;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 12
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CompoundButton;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 7
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linstall/app/CompoundButton;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;I)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Linstall/app/Drawable;)V
    .locals 2
    .param p1, "d"    # Linstall/app/Drawable;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
