.class public Linstall/app/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SEService$CallBack;,
        Linstall/app/SEService$C00042;,
        Linstall/app/SEService$C00031;
    }
.end annotation


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private _callerCallback:Linstall/app/SEService$CallBack;

.field private _connection:Landroid/content/ServiceConnection;

.field private final _context:Landroid/content/Context;

.field private _readers:[Linstall/app/Reader;

.field private volatile _smartcardService:Linstall/app/ISmartcardService;

.field private final callback:Linstall/app/ISmartcardServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/SEService$CallBack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Linstall/app/SEService$CallBack;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Linstall/app/SEService$C00031;

    invoke-direct {v0, p0}, Linstall/app/SEService$C00031;-><init>(Linstall/app/SEService;)V

    iput-object v0, p0, Linstall/app/SEService;->callback:Linstall/app/ISmartcardServiceCallback;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Linstall/app/SEService;->_context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Linstall/app/SEService;->_callerCallback:Linstall/app/SEService$CallBack;

    .line 66
    new-instance v0, Linstall/app/SEService$C00042;

    invoke-direct {v0, p0}, Linstall/app/SEService$C00042;-><init>(Linstall/app/SEService;)V

    iput-object v0, p0, Linstall/app/SEService;->_connection:Landroid/content/ServiceConnection;

    .line 67
    iget-object v0, p0, Linstall/app/SEService;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Linstall/app/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Linstall/app/SEService;->_connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "SEService"

    const-string v1, "bindService successful"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    return-void
.end method

.method static synthetic access$000(Linstall/app/SEService;)Linstall/app/SEService$CallBack;
    .locals 1
    .param p0, "x0"    # Linstall/app/SEService;

    .prologue
    .line 15
    iget-object v0, p0, Linstall/app/SEService;->_callerCallback:Linstall/app/SEService$CallBack;

    return-object v0
.end method

.method static synthetic access$100(Linstall/app/SEService;)[Linstall/app/Reader;
    .locals 1
    .param p0, "x0"    # Linstall/app/SEService;

    .prologue
    .line 15
    iget-object v0, p0, Linstall/app/SEService;->_readers:[Linstall/app/Reader;

    return-object v0
.end method

.method static synthetic access$202(Linstall/app/SEService;Linstall/app/ISmartcardService;)Linstall/app/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Linstall/app/SEService;
    .param p1, "x1"    # Linstall/app/ISmartcardService;

    .prologue
    .line 15
    iput-object p1, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    return-object p1
.end method

.method private checkForException(Linstall/app/SmartcardError;)V
    .locals 4
    .param p1, "error"    # Linstall/app/SmartcardError;

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_0
    .catch Linstall/app/CardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "exp":Linstall/app/CardException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Linstall/app/CardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v0    # "exp":Linstall/app/CardException;
    :catch_1
    move-exception v1

    .line 229
    .local v1, "exp2":Ljava/security/AccessControlException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method closeChannel(Linstall/app/Channel;)V
    .locals 4
    .param p1, "channel"    # Linstall/app/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "channel must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_1
    invoke-virtual {p1}, Linstall/app/Channel;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 178
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "error":Linstall/app/SmartcardError;
    :cond_2
    return-void

    .line 179
    .restart local v1    # "error":Linstall/app/SmartcardError;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getAtr(Linstall/app/Reader;)[B
    .locals 4
    .param p1, "reader"    # Linstall/app/Reader;

    .prologue
    const/4 v3, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_1

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_1
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 215
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-object v3

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getReaders()[Linstall/app/Reader;
    .locals 5

    .prologue
    .line 81
    iget-object v3, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 86
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "i":I
    iget-object v3, p0, Linstall/app/SEService;->_readers:[Linstall/app/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 90
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSecureElementPresent(Linstall/app/Reader;)Z
    .locals 4
    .param p1, "reader"    # Linstall/app/Reader;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_1
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 122
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V

    .line 123
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 125
    :goto_0
    return v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method openBasicChannel(Linstall/app/Session;[B)Linstall/app/Channel;
    .locals 4
    .param p1, "session"    # Linstall/app/Session;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "session must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    invoke-virtual {p1}, Linstall/app/Session;->getReader()Linstall/app/Reader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_1
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_2

    .line 136
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_2
    invoke-virtual {p1}, Linstall/app/Session;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "session is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_3
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 142
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/4 v2, 0x0

    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method openLogicalChannel(Linstall/app/Session;[B)Linstall/app/Channel;
    .locals 4
    .param p1, "session"    # Linstall/app/Session;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "session must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_0
    invoke-virtual {p1}, Linstall/app/Session;->getReader()Linstall/app/Reader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_2
    invoke-virtual {p1}, Linstall/app/Session;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "session is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_3
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 162
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v2, 0x0

    return-object v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public shutdown()V
    .locals 7

    .prologue
    .line 96
    iget-object v2, p0, Linstall/app/SEService;->_connection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v1, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-eqz v1, :cond_1

    .line 98
    iget-object v3, p0, Linstall/app/SEService;->_readers:[Linstall/app/Reader;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    iget-object v4, p0, Linstall/app/SEService;->_readers:[Linstall/app/Reader;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v0, "reader":Linstall/app/Reader;
    :try_start_2
    invoke-virtual {v0}, Linstall/app/Reader;->closeSessions()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "reader":Linstall/app/Reader;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :cond_1
    :try_start_4
    iget-object v1, p0, Linstall/app/SEService;->_context:Landroid/content/Context;

    iget-object v3, p0, Linstall/app/SEService;->_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    return-void

    .line 105
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 111
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 102
    .restart local v0    # "reader":Linstall/app/Reader;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 109
    .end local v0    # "reader":Linstall/app/Reader;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method transmit(Linstall/app/Channel;[B)[B
    .locals 4
    .param p1, "channel"    # Linstall/app/Channel;
    .param p2, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "command must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    array-length v2, p2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "command must have at least 4 bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_1
    iget-object v2, p0, Linstall/app/SEService;->_smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_2

    .line 191
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_2
    if-nez p1, :cond_3

    .line 193
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "channel must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_3
    invoke-virtual {p1}, Linstall/app/Channel;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "channel is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_4
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 199
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-direct {p0, v1}, Linstall/app/SEService;->checkForException(Linstall/app/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v2, 0x0

    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
