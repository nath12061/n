.class public Linstall/app/SmartcardClient;
.super Ljava/lang/Object;
.source "SmartcardClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SmartcardClient$ISmartcardConnectionListener;,
        Linstall/app/SmartcardClient$C00012;,
        Linstall/app/SmartcardClient$C00001;
    }
.end annotation


# static fields
.field private static final SMARTCARD_TAG:Ljava/lang/String; = "SmartcardApi"


# instance fields
.field private final callback:Linstall/app/ISmartcardServiceCallback;

.field private final channels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Linstall/app/CardChannel;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Landroid/content/ServiceConnection;

.field private final connectionListener:Linstall/app/SmartcardClient$ISmartcardConnectionListener;

.field private final context:Landroid/content/Context;

.field private volatile smartcardService:Linstall/app/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/SmartcardClient$ISmartcardConnectionListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Linstall/app/SmartcardClient$ISmartcardConnectionListener;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Linstall/app/SmartcardClient$C00001;

    invoke-direct {v0, p0}, Linstall/app/SmartcardClient$C00001;-><init>(Linstall/app/SmartcardClient;)V

    iput-object v0, p0, Linstall/app/SmartcardClient;->callback:Linstall/app/ISmartcardServiceCallback;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Linstall/app/SmartcardClient;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Linstall/app/SmartcardClient;->connectionListener:Linstall/app/SmartcardClient$ISmartcardConnectionListener;

    .line 65
    new-instance v0, Linstall/app/SmartcardClient$C00012;

    invoke-direct {v0, p0}, Linstall/app/SmartcardClient$C00012;-><init>(Linstall/app/SmartcardClient;)V

    iput-object v0, p0, Linstall/app/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Linstall/app/ISmartcardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linstall/app/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Linstall/app/SmartcardClient;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Linstall/app/SmartcardClient;

    .prologue
    .line 13
    iget-object v0, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$102(Linstall/app/SmartcardClient;Linstall/app/ISmartcardService;)Linstall/app/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Linstall/app/SmartcardClient;
    .param p1, "x1"    # Linstall/app/ISmartcardService;

    .prologue
    .line 13
    iput-object p1, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$200(Linstall/app/SmartcardClient;)Linstall/app/SmartcardClient$ISmartcardConnectionListener;
    .locals 1
    .param p0, "x0"    # Linstall/app/SmartcardClient;

    .prologue
    .line 13
    iget-object v0, p0, Linstall/app/SmartcardClient;->connectionListener:Linstall/app/SmartcardClient$ISmartcardConnectionListener;

    return-object v0
.end method


# virtual methods
.method closeChannel(Linstall/app/CardChannel;)V
    .locals 4
    .param p1, "channel"    # Linstall/app/CardChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 188
    .local v1, "error":Linstall/app/SmartcardError;
    iget-object v3, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v2, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p1}, Linstall/app/CardChannel;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V

    .line 197
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getReaders()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 94
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isCardPresent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_1

    .line 105
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 109
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v2, 0x0

    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public openBasicChannel(Ljava/lang/String;)Linstall/app/ICardChannel;
    .locals 4
    .param p1, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_1
    iget-object v3, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v3

    .line 125
    :try_start_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_1
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :try_start_2
    monitor-exit v3

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "error":Linstall/app/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public openBasicChannel(Ljava/lang/String;[B)Linstall/app/ICardChannel;
    .locals 4
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    if-nez p2, :cond_1

    .line 140
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AID must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_1
    array-length v2, p2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    array-length v2, p2

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    .line 142
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "AID out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_3
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_4

    .line 144
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_4
    iget-object v3, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v3

    .line 148
    :try_start_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_1
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    monitor-exit v3

    .line 155
    const/4 v2, 0x0

    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 154
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "error":Linstall/app/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public openLogicalChannel(Ljava/lang/String;[B)Linstall/app/ICardChannel;
    .locals 4
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "reader must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_0
    if-nez p2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AID must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1
    array-length v2, p2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    array-length v2, p2

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    .line 165
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "AID out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_3
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_4

    .line 167
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_4
    iget-object v3, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v3

    .line 171
    :try_start_0
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_1
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    monitor-exit v3

    .line 179
    const/4 v2, 0x0

    return-object v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "error":Linstall/app/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public shutdown()V
    .locals 7

    .prologue
    .line 70
    iget-object v3, p0, Linstall/app/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v1, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-eqz v1, :cond_1

    .line 72
    iget-object v4, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v1, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    iget-object v2, p0, Linstall/app/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Linstall/app/CardChannel;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Linstall/app/CardChannel;

    check-cast v1, [Linstall/app/CardChannel;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .local v0, "channel":Linstall/app/CardChannel;
    :try_start_2
    invoke-virtual {v0}, Linstall/app/CardChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "channel":Linstall/app/CardChannel;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :cond_1
    :try_start_4
    iget-object v1, p0, Linstall/app/SmartcardClient;->context:Landroid/content/Context;

    iget-object v2, p0, Linstall/app/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    return-void

    .line 79
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 85
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 76
    .restart local v0    # "channel":Linstall/app/CardChannel;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 83
    .end local v0    # "channel":Linstall/app/CardChannel;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method transmit(J[B)[B
    .locals 4
    .param p1, "hChannel"    # J
    .param p3, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p3, :cond_0

    .line 201
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "command must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    array-length v2, p3

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "command must have at least 4 bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_1
    iget-object v2, p0, Linstall/app/SmartcardClient;->smartcardService:Linstall/app/ISmartcardService;

    if-nez v2, :cond_2

    .line 205
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_2
    new-instance v1, Linstall/app/SmartcardError;

    invoke-direct {v1}, Linstall/app/SmartcardError;-><init>()V

    .line 209
    .local v1, "error":Linstall/app/SmartcardError;
    :try_start_0
    invoke-virtual {v1}, Linstall/app/SmartcardError;->throwException()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v2, 0x0

    return-object v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Linstall/app/CardException;

    invoke-direct {v2, v0}, Linstall/app/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
