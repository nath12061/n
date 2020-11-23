.class Linstall/app/SEService$C00042;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00042"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SEService;


# direct methods
.method constructor <init>(Linstall/app/SEService;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/SEService;

    .prologue
    .line 30
    iput-object p1, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    # getter for: Linstall/app/SEService;->_callerCallback:Linstall/app/SEService$CallBack;
    invoke-static {v0}, Linstall/app/SEService;->access$000(Linstall/app/SEService;)Linstall/app/SEService$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    # getter for: Linstall/app/SEService;->_callerCallback:Linstall/app/SEService$CallBack;
    invoke-static {v0}, Linstall/app/SEService;->access$000(Linstall/app/SEService;)Linstall/app/SEService$CallBack;

    move-result-object v0

    iget-object v1, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    invoke-interface {v0, v1}, Linstall/app/SEService$CallBack;->serviceConnected(Linstall/app/SEService;)V

    .line 37
    :cond_0
    const-string v0, "SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 41
    iget-object v1, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    # getter for: Linstall/app/SEService;->_readers:[Linstall/app/Reader;
    invoke-static {v1}, Linstall/app/SEService;->access$100(Linstall/app/SEService;)[Linstall/app/Reader;

    move-result-object v2

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v1, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    # getter for: Linstall/app/SEService;->_readers:[Linstall/app/Reader;
    invoke-static {v1}, Linstall/app/SEService;->access$100(Linstall/app/SEService;)[Linstall/app/Reader;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .local v0, "reader":Linstall/app/Reader;
    :try_start_1
    invoke-virtual {v0}, Linstall/app/Reader;->closeSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "reader":Linstall/app/Reader;
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    iget-object v1, p0, Linstall/app/SEService$C00042;->this$0:Linstall/app/SEService;

    const/4 v2, 0x0

    # setter for: Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;
    invoke-static {v1, v2}, Linstall/app/SEService;->access$202(Linstall/app/SEService;Linstall/app/ISmartcardService;)Linstall/app/ISmartcardService;

    .line 50
    const-string v1, "SEService"

    const-string v2, "Service onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 48
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 45
    .restart local v0    # "reader":Linstall/app/Reader;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
