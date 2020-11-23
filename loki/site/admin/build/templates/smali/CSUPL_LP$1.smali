.class final Linstall/app/CSUPL_LP$1;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"

# interfaces
.implements Linstall/app/DialogInterface$OnClickListener;


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
    .line 250
    iput-object p1, p0, Linstall/app/CSUPL_LP$1;->val$td:Linstall/app/TimerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Linstall/app/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Linstall/app/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 252
    iget-object v0, p0, Linstall/app/CSUPL_LP$1;->val$td:Linstall/app/TimerAlertDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linstall/app/TimerAlertDialog;->cancel_flag:Z

    .line 253
    return-void
.end method
