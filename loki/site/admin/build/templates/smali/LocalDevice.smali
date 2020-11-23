.class public abstract Linstall/app/LocalDevice;
.super Ljava/lang/Object;
.source "LocalDevice.java"


# static fields
.field private static final SDK_NUM_2_0:I = 0x5

.field private static instance:Linstall/app/LocalDevice;


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected scanListener:Linstall/app/ScanListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LocalDevice;->scanListener:Linstall/app/ScanListener;

    return-void
.end method

.method public static declared-synchronized getInstance()Linstall/app/LocalDevice;
    .locals 7

    .prologue
    .line 22
    const-class v3, Linstall/app/LocalDevice;

    monitor-enter v3

    :try_start_0
    const-class v4, Linstall/app/LocalDevice;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    sget-object v2, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    if-nez v2, :cond_0

    .line 24
    invoke-static {}, Linstall/app/LocalDevice;->getVersionNumber()I

    move-result v1

    .line 25
    .local v1, "vInt":I
    const-class v2, Linstall/app/LocalDevice;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed version number is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Linstall/app/Logger;->m8i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 27
    new-instance v2, Linstall/app/LocalDevice1Impl;

    invoke-direct {v2}, Linstall/app/LocalDevice1Impl;-><init>()V

    sput-object v2, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    .line 32
    :cond_0
    :goto_0
    const-class v2, Linstall/app/LocalDevice;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Linstall/app/Logger;->m8i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    .line 34
    .local v0, "localDevice":Linstall/app/LocalDevice;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v3

    return-object v0

    .line 29
    .end local v0    # "localDevice":Linstall/app/LocalDevice;
    :cond_1
    :try_start_2
    new-instance v2, Linstall/app/LocalDevice2Impl;

    invoke-direct {v2}, Linstall/app/LocalDevice2Impl;-><init>()V

    sput-object v2, Linstall/app/LocalDevice;->instance:Linstall/app/LocalDevice;

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getVersionNumber()I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LocalDevice;->ctx:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public abstract ensureDiscoverable()V
.end method

.method public abstract getRemoteForAddr(Ljava/lang/String;)Linstall/app/RemoteDevice;
.end method

.method public init(Landroid/content/Context;Linstall/app/ReadyListener;)V
    .locals 0
    .param p1, "_ctx"    # Landroid/content/Context;
    .param p2, "ready"    # Linstall/app/ReadyListener;

    .prologue
    .line 43
    iput-object p1, p0, Linstall/app/LocalDevice;->ctx:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public abstract listenForConnection(Linstall/app/ConnectionListener;I)Linstall/app/ServerControl;
.end method

.method public scan(Linstall/app/ScanListener;)V
    .locals 0
    .param p1, "listener"    # Linstall/app/ScanListener;

    .prologue
    .line 51
    iput-object p1, p0, Linstall/app/LocalDevice;->scanListener:Linstall/app/ScanListener;

    .line 52
    return-void
.end method

.method public abstract stopScan()V
.end method
