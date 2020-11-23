.class Linstall/app/TimerAlertDialog;
.super Linstall/app/AlertDialog$Builder;
.source "TimerAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/TimerAlertDialog$CSUPL_LP;
    }
.end annotation


# instance fields
.field private _handler:Linstall/app/Handler;

.field private _time:J

.field public cancel_flag:Z

.field public f0b:Linstall/app/AlertDialog$Builder;

.field public f1d:Linstall/app/AlertDialog;

.field private timerTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linstall/app/Context;J)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "time"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1}, Linstall/app/AlertDialog$Builder;-><init>(Linstall/app/Context;)V

    .line 6
    new-instance v0, Linstall/app/Handler;

    invoke-direct {v0}, Linstall/app/Handler;-><init>()V

    iput-object v0, p0, Linstall/app/TimerAlertDialog;->_handler:Linstall/app/Handler;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/TimerAlertDialog;->cancel_flag:Z

    .line 11
    new-instance v0, Linstall/app/TimerAlertDialog$CSUPL_LP;

    invoke-direct {v0, p0}, Linstall/app/TimerAlertDialog$CSUPL_LP;-><init>(Linstall/app/TimerAlertDialog;)V

    iput-object v0, p0, Linstall/app/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    .line 27
    iput-wide p2, p0, Linstall/app/TimerAlertDialog;->_time:J

    .line 28
    return-void
.end method


# virtual methods
.method public show()Linstall/app/AlertDialog;
    .locals 6

    .prologue
    .line 31
    const-string v0, "TimerAlertDialog: +Show"

    .line 36
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Linstall/app/TimerAlertDialog;->_handler:Linstall/app/Handler;

    iget-object v2, p0, Linstall/app/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Linstall/app/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v1, p0, Linstall/app/TimerAlertDialog;->_handler:Linstall/app/Handler;

    iget-object v2, p0, Linstall/app/TimerAlertDialog;->timerTask:Ljava/lang/Runnable;

    iget-wide v4, p0, Linstall/app/TimerAlertDialog;->_time:J

    invoke-virtual {v1, v2, v4, v5}, Linstall/app/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    invoke-super {p0}, Linstall/app/AlertDialog$Builder;->create()Linstall/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Linstall/app/TimerAlertDialog;->f1d:Linstall/app/AlertDialog;

    .line 39
    iget-object v1, p0, Linstall/app/TimerAlertDialog;->f1d:Linstall/app/AlertDialog;

    invoke-virtual {v1}, Linstall/app/AlertDialog;->getWindow()Linstall/app/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Linstall/app/Window;->setType(I)V

    .line 40
    iget-object v1, p0, Linstall/app/TimerAlertDialog;->f1d:Linstall/app/AlertDialog;

    invoke-virtual {v1}, Linstall/app/AlertDialog;->show()V

    .line 44
    iget-object v1, p0, Linstall/app/TimerAlertDialog;->f1d:Linstall/app/AlertDialog;

    return-object v1
.end method
