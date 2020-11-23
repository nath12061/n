.class public abstract Linstall/app/TimePickerDialog;
.super Linstall/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Linstall/app/DialogInterface$OnClickListener;
.implements Linstall/app/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;ILinstall/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Linstall/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v1, 0x0

    .line 18
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/AlertDialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;Linstall/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 3
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "callBack"    # Linstall/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    const/4 v1, 0x0

    .line 13
    move-object v0, v1

    check-cast v0, Linstall/app/Context;

    const/4 v2, 0x0

    check-cast v1, Linstall/app/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v2, v1}, Linstall/app/AlertDialog;-><init>(Linstall/app/Context;ZLinstall/app/DialogInterface$OnCancelListener;)V

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onClick(Linstall/app/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Linstall/app/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRestoreInstanceState(Linstall/app/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Linstall/app/Bundle;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState()Linstall/app/Bundle;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTimeChanged(Linstall/app/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Linstall/app/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
