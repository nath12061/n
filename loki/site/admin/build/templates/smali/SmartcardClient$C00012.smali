.class Linstall/app/SmartcardClient$C00012;
.super Ljava/lang/Object;
.source "SmartcardClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SmartcardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00012"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SmartcardClient;


# direct methods
.method constructor <init>(Linstall/app/SmartcardClient;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/SmartcardClient;

    .prologue
    .line 28
    iput-object p1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 33
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 36
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    # getter for: Linstall/app/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v1}, Linstall/app/SmartcardClient;->access$000(Linstall/app/SmartcardClient;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    # getter for: Linstall/app/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v1}, Linstall/app/SmartcardClient;->access$000(Linstall/app/SmartcardClient;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/CardChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .local v0, "channel":Linstall/app/CardChannel;
    :try_start_1
    invoke-virtual {v0}, Linstall/app/CardChannel;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v3

    goto :goto_0

    .line 43
    .end local v0    # "channel":Linstall/app/CardChannel;
    :cond_0
    :try_start_2
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    # getter for: Linstall/app/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v1}, Linstall/app/SmartcardClient;->access$000(Linstall/app/SmartcardClient;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 44
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    const/4 v2, 0x0

    # setter for: Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;
    invoke-static {v1, v2}, Linstall/app/SmartcardClient;->access$102(Linstall/app/SmartcardClient;Linstall/app/ISmartcardService;)Linstall/app/ISmartcardService;

    .line 46
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    # getter for: Linstall/app/SmartcardClient;->connectionListener:Linstall/app/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v1}, Linstall/app/SmartcardClient;->access$200(Linstall/app/SmartcardClient;)Linstall/app/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Linstall/app/SmartcardClient$C00012;->this$0:Linstall/app/SmartcardClient;

    # getter for: Linstall/app/SmartcardClient;->connectionListener:Linstall/app/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v1}, Linstall/app/SmartcardClient;->access$200(Linstall/app/SmartcardClient;)Linstall/app/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Linstall/app/SmartcardClient$ISmartcardConnectionListener;->serviceDisconnected()V

    .line 49
    :cond_1
    const-string v1, "SmartcardApi"

    const-string v2, "Smartcard service onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 44
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
