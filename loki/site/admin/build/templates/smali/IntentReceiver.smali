.class Linstall/app/IntentReceiver;
.super Linstall/app/BroadcastReceiver;
.source "IntentReceiver.java"


# instance fields
.field private observer:Linstall/app/CSUPL_LP;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public IntentReceiver()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "CSUPL_LP"

    const-string v1, "IntentReceiver Ctor"

    invoke-static {v0, v1}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public notify(Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Linstall/app/Intent;

    .end local p1    # "param":Ljava/lang/Object;
    invoke-static {p1}, Linstall/app/CSUPL_LP;->update(Linstall/app/Intent;)V

    .line 16
    return-void
.end method

.method public onReceive(Linstall/app/Context;Linstall/app/Intent;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "intent"    # Linstall/app/Intent;

    .prologue
    .line 19
    const-string v0, "CSUPL_LP"

    const-string v1, "BroadcastReceiver onReceive"

    invoke-static {v0, v1}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Linstall/app/IntentReceiver;->notify(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
