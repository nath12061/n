.class public abstract Linstall/app/CharacterPickerDialog;
.super Linstall/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Linstall/app/AdapterView$OnItemClickListener;
.implements Linstall/app/View$OnClickListener;


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "view"    # Linstall/app/View;
    .param p3, "text"    # Landroid/text/Editable;
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "insert"    # Z

    .prologue
    const/4 v1, 0x0

    .line 9
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/Dialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onClick(Linstall/app/View;)V
    .locals 2
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Linstall/app/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Linstall/app/Bundle;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemClick(Linstall/app/AdapterView;Linstall/app/View;IJ)V
    .locals 2
    .param p1, "parent"    # Linstall/app/AdapterView;
    .param p2, "view"    # Linstall/app/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
