.class Linstall/app/TimerAlertDialog$CSUPL_LP;
.super Ljava/lang/Object;
.source "TimerAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TimerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CSUPL_LP"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/TimerAlertDialog;


# direct methods
.method constructor <init>(Linstall/app/TimerAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/TimerAlertDialog;

    .prologue
    .line 14
    iput-object p1, p0, Linstall/app/TimerAlertDialog$CSUPL_LP;->this$0:Linstall/app/TimerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Linstall/app/TimerAlertDialog$CSUPL_LP;->this$0:Linstall/app/TimerAlertDialog;

    iget-boolean v0, v0, Linstall/app/TimerAlertDialog;->cancel_flag:Z

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Linstall/app/TimerAlertDialog$CSUPL_LP;->this$0:Linstall/app/TimerAlertDialog;

    iget-object v0, v0, Linstall/app/TimerAlertDialog;->f1d:Linstall/app/AlertDialog;

    invoke-virtual {v0}, Linstall/app/AlertDialog;->cancel()V

    .line 21
    :cond_0
    return-void
.end method
