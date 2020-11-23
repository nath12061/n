.class public abstract Linstall/app/IsolatedContext;
.super Linstall/app/ContextWrapper;
.source "IsolatedContext.java"


# direct methods
.method public constructor <init>(Linstall/app/ContentResolver;Linstall/app/Context;)V
    .locals 2
    .param p1, "resolver"    # Linstall/app/ContentResolver;
    .param p2, "targetContext"    # Linstall/app/Context;

    .prologue
    .line 7
    const/4 v0, 0x0

    check-cast v0, Linstall/app/Context;

    invoke-direct {p0, v0}, Linstall/app/ContextWrapper;-><init>(Linstall/app/Context;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindService(Linstall/app/Intent;Linstall/app/ServiceConnection;I)Z
    .locals 2
    .param p1, "service"    # Linstall/app/Intent;
    .param p2, "conn"    # Linstall/app/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkUriPermission(Linstall/app/Uri;III)I
    .locals 2
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkUriPermission(Linstall/app/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Linstall/app/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;)Linstall/app/Intent;
    .locals 2
    .param p1, "receiver"    # Linstall/app/BroadcastReceiver;
    .param p2, "filter"    # Linstall/app/IntentFilter;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendBroadcast(Linstall/app/Intent;)V
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendOrderedBroadcast(Linstall/app/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
