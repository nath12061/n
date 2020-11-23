.class final Linstall/app/CSUPL_LP$3;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Linstall/app/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$td:Linstall/app/TimerAlertDialog;


# direct methods
.method constructor <init>(Linstall/app/TimerAlertDialog;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Linstall/app/CSUPL_LP$3;->val$td:Linstall/app/TimerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Linstall/app/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Linstall/app/DialogInterface;

    .prologue
    .line 261
    const-string v0, "showSUPLInitDialog: onCancel"

    invoke-static {v0}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Linstall/app/CSUPL_LP$3;->val$td:Linstall/app/TimerAlertDialog;

    iget-boolean v0, v0, Linstall/app/TimerAlertDialog;->cancel_flag:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Linstall/app/CSUPL_LP$3;->val$td:Linstall/app/TimerAlertDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linstall/app/TimerAlertDialog;->cancel_flag:Z

    .line 264
    const-string v0, "showSUPLInitDialog: cancel_flag set to True"

    invoke-static {v0}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void
.end method
