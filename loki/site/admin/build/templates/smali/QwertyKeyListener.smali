.class public Linstall/app/QwertyKeyListener;
.super Linstall/app/BaseKeyListener;
.source "QwertyKeyListener.java"


# direct methods
.method public constructor <init>(Linstall/app/TextKeyListener$Capitalize;Z)V
    .locals 2
    .param p1, "cap"    # Linstall/app/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/BaseKeyListener;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(ZLinstall/app/TextKeyListener$Capitalize;)Linstall/app/QwertyKeyListener;
    .locals 2
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Linstall/app/TextKeyListener$Capitalize;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 2
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "original"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyDown(Linstall/app/View;Landroid/text/Editable;ILinstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
