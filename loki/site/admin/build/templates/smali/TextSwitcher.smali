.class public abstract Linstall/app/TextSwitcher;
.super Linstall/app/ViewSwitcher;
.source "TextSwitcher.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    const/4 v1, 0x0

    .line 5
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/ViewSwitcher;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 10
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    check-cast v1, Linstall/app/AttributeSet;

    invoke-direct {p0, v0, v1}, Linstall/app/ViewSwitcher;-><init>(Linstall/app/Context;Linstall/app/AttributeSet;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addView(Linstall/app/View;ILinstall/app/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Linstall/app/View;
    .param p2, "index"    # I
    .param p3, "params"    # Linstall/app/FrameLayout$LayoutParams;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
