.class public Linstall/app/CNetSSLEngineProvider;
.super Linstall/app/CNetTLSProviderBase;
.source "CNetSSLEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;,
        Linstall/app/CNetSSLEngineProvider$ReceiveThread;,
        Linstall/app/CNetSSLEngineProvider$C00011;
    }
.end annotation


# static fields
.field private static resultOnce:Z


# instance fields
.field private FromServAppData:Ljava/nio/ByteBuffer;

.field private FromServNetData:Ljava/nio/ByteBuffer;

.field private ReHandshakeResult:I

.field private ReHandshakeSynch:Ljava/lang/Object;

.field private ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

.field private ToServAppData:Ljava/nio/ByteBuffer;

.field private ToServNetData:Ljava/nio/ByteBuffer;

.field private channel:Ljava/nio/channels/SocketChannel;

.field private engine:Ljavax/net/ssl/SSLEngine;

.field private readMessage:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Linstall/app/CNetSSLEngineProvider;->resultOnce:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 2
    .param p1, "Context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Linstall/app/CNetTLSProviderBase;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    .line 29
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    .line 32
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 34
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 96
    return-void
.end method

.method private ReHandshake()V
    .locals 5

    .prologue
    .line 531
    iget-object v3, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v3

    .line 533
    :try_start_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 534
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 535
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 536
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 537
    :cond_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gez v2, :cond_0

    .line 539
    new-instance v2, Ljava/io/IOException;

    const-string v4, "channel has reached end-of-stream."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSL engine error ReHadshake:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 548
    const/16 v2, -0xa

    iput v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 554
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    return-void

    .line 542
    :cond_1
    :try_start_2
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 543
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->doHandshake(Z)I

    move-result v2

    iput v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 544
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 549
    :catch_1
    move-exception v1

    .line 550
    .local v1, "e2":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/0 Error ReHadshake:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 552
    const/16 v2, -0xb

    iput v2, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    goto :goto_0

    .line 554
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private declared-synchronized Read()Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z

    if-eqz v5, :cond_5

    .line 370
    const/4 v3, 0x0

    .line 371
    .local v3, "exit":Z
    :goto_0
    if-nez v3, :cond_4

    .line 372
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 373
    new-instance v5, Ljava/io/IOException;

    const-string v6, "channel has reached end-of-stream."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .end local v3    # "exit":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 375
    .restart local v3    # "exit":Z
    :cond_0
    :try_start_1
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 376
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 377
    .local v4, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_1

    .line 378
    sget-object v5, Linstall/app/CNetSSLEngineProvider$C00011;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 404
    :cond_1
    :goto_1
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :try_start_2
    new-instance v5, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;-><init>(Linstall/app/CNetSSLEngineProvider;Linstall/app/CNetSSLEngineProvider$1;)V

    invoke-virtual {v5}, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    :try_start_3
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 408
    iget v5, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    if-gez v5, :cond_3

    .line 409
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReHandshake filed:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    iput v5, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 411
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 413
    .end local v1    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e2":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    const-string v7, "ReHandshake interrupted."

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    .end local v2    # "e2":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5

    .line 381
    :pswitch_0
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 385
    :cond_2
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 386
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-nez v5, :cond_1

    .line 389
    const/4 v3, 0x1

    .line 390
    goto :goto_1

    .line 392
    :pswitch_1
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 393
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 394
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 395
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 396
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Linstall/app/CNetSSLEngineProvider;->resize_FromServAppData_Buffer(Z)V

    goto :goto_1

    .line 399
    :pswitch_2
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "SSL engine was closed."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 416
    :cond_3
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 418
    .end local v4    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_4
    :try_start_7
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 419
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 420
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 421
    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 422
    iget-object v0, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 426
    .end local v3    # "exit":Z
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    monitor-exit p0

    return-object v0

    .line 424
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ReadProc()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 431
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v8

    .line 432
    .local v8, "selector":Ljava/nio/channels/Selector;
    iget-object v9, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    .line 433
    .local v5, "keylisten":Ljava/nio/channels/SelectionKey;
    :goto_0
    iget-boolean v9, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z

    if-eqz v9, :cond_2

    .line 434
    const-string v9, "Select!"

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 436
    :cond_0
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->select()I

    move-result v9

    if-eqz v9, :cond_0

    .line 437
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v6

    .line 438
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 439
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    const-string v9, "Ready for reading!"

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 440
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 441
    :cond_1
    const-string v9, "Selector error: keys.iterator()"

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 458
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v5    # "keylisten":Ljava/nio/channels/SelectionKey;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v8    # "selector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): SSL engine exception, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    .line 468
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_2
    :goto_1
    return-void

    .line 443
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v5    # "keylisten":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v8    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    const/16 v9, 0x2800

    :try_start_1
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 445
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_6

    .line 446
    :cond_4
    const-string v9, "Select error"

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 455
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 461
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    .end local v5    # "keylisten":Ljava/nio/channels/SelectionKey;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v8    # "selector":Ljava/nio/channels/Selector;
    :catch_1
    move-exception v1

    .line 462
    .local v1, "e2":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): I/O Exception, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    goto :goto_1

    .line 447
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v4    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v5    # "keylisten":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v8    # "selector":Ljava/nio/channels/Selector;
    :cond_6
    :try_start_2
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Read()Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 448
    iget-object v9, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    new-array v7, v9, [B

    .line 449
    .local v7, "mess":[B
    iget-object v9, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 450
    iget-object v9, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v9, v7, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 451
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Try PostSLPMessageToQueue length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v11, v7, v11

    or-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, v7}, Linstall/app/CNetSSLEngineProvider;->DumpMessage([B)Z

    .line 453
    const/4 v9, 0x0

    iput-object v9, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 464
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    .end local v5    # "keylisten":Ljava/nio/channels/SelectionKey;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v7    # "mess":[B
    .end local v8    # "selector":Ljava/nio/channels/Selector;
    :catch_2
    move-exception v2

    .line 465
    .local v2, "e3":Ljava/nio/channels/ClosedSelectorException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReadProc(): selector was closed,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/nio/channels/ClosedSelectorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    goto/16 :goto_1
.end method

.method private Reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 499
    iput-boolean v5, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z

    .line 501
    :try_start_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 503
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    .line 504
    const-string v2, "channel != null: socket.close()!"

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client socket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    if-eqz v2, :cond_2

    .line 512
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v2}, Linstall/app/CNetSSLEngineProvider$ReceiveThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v2}, Linstall/app/CNetSSLEngineProvider$ReceiveThread;->interrupt()V

    .line 515
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :cond_2
    :goto_1
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 521
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    .line 522
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->readMessage:Ljava/nio/ByteBuffer;

    .line 523
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 524
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 525
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 526
    iput-object v4, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 527
    iput v5, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 528
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset() I/O Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 518
    .local v1, "e2":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t interrupt the listener task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized Write([B)I
    .locals 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z

    if-eqz v6, :cond_9

    .line 301
    array-length v4, p1

    .line 302
    .local v4, "remain":I
    const/4 v3, 0x0

    .line 303
    .local v3, "off":I
    :goto_0
    if-lez v4, :cond_8

    .line 304
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v4, v6, :cond_1

    .line 305
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, p1, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 306
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v3, v6

    .line 307
    array-length v6, p1

    sub-int v4, v6, v3

    .line 313
    :goto_1
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 314
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 315
    .local v5, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_0

    .line 316
    sget-object v6, Linstall/app/CNetSSLEngineProvider$C00011;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 344
    :cond_0
    :goto_2
    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    new-instance v6, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;-><init>(Linstall/app/CNetSSLEngineProvider;Linstall/app/CNetSSLEngineProvider$1;)V

    invoke-virtual {v6}, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :try_start_2
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeSynch:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 348
    iget v6, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    if-gez v6, :cond_7

    .line 349
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReHandshake filed:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    iput v6, p0, Linstall/app/CNetSSLEngineProvider;->ReHandshakeResult:I

    .line 351
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e2":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    const-string v8, "ReHandshake interrupted."

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 356
    .end local v1    # "e2":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    .end local v3    # "off":I
    .end local v4    # "remain":I
    .end local v5    # "res":Ljavax/net/ssl/SSLEngineResult;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 309
    .restart local v3    # "off":I
    .restart local v4    # "remain":I
    :cond_1
    :try_start_5
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 310
    add-int/2addr v3, v4

    .line 311
    const/4 v4, 0x0

    goto :goto_1

    .line 319
    .restart local v5    # "res":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 320
    :cond_2
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 322
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v7, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-gez v6, :cond_2

    .line 323
    new-instance v6, Ljava/io/IOException;

    const-string v7, "channel has reached end-of-stream."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 326
    :cond_3
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 327
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_4

    .line 328
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Linstall/app/CNetSSLEngineProvider;->resize_ToServNetData_Buffer(Z)V

    .line 330
    :cond_4
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 333
    :pswitch_1
    if-nez v4, :cond_5

    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-nez v6, :cond_6

    .line 334
    :cond_5
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 337
    :cond_6
    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "Write error: underflow at the wrap operation."

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 339
    :pswitch_2
    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "Write engine was closed."

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    :cond_7
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 358
    .end local v5    # "res":Ljavax/net/ssl/SSLEngineResult;
    :cond_8
    :try_start_7
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 359
    iget-object v6, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 360
    array-length v2, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 364
    .end local v3    # "off":I
    .end local v4    # "remain":I
    .local v2, "length":I
    :goto_3
    monitor-exit p0

    return v2

    .line 362
    .end local v2    # "length":I
    :cond_9
    const/4 v2, -0x1

    .restart local v2    # "length":I
    goto :goto_3

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Linstall/app/CNetSSLEngineProvider;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/CNetSSLEngineProvider;

    .prologue
    .line 23
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->ReadProc()V

    return-void
.end method

.method static synthetic access$100(Linstall/app/CNetSSLEngineProvider;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/CNetSSLEngineProvider;

    .prologue
    .line 23
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->ReHandshake()V

    return-void
.end method

.method private createBuffers()V
    .locals 2

    .prologue
    .line 869
    iget-object v1, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 870
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 871
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 872
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 873
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 874
    return-void
.end method

.method private doHandshake(Z)I
    .locals 2
    .param p1, "r14"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.calss.CNetSSLEngineProvider.doHandshake(boolean):int"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 909
    iget-boolean v0, p0, Linstall/app/CNetSSLEngineProvider;->logging:Z

    if-eqz v0, :cond_0

    .line 910
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 912
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "result"    # Ljavax/net/ssl/SSLEngineResult;

    .prologue
    .line 877
    const-string v2, "/"

    .line 878
    .local v2, "str2":Ljava/lang/String;
    iget-boolean v4, p0, Linstall/app/CNetSSLEngineProvider;->logging:Z

    if-eqz v4, :cond_2

    .line 879
    sget-boolean v4, Linstall/app/CNetSSLEngineProvider;->resultOnce:Z

    if-eqz v4, :cond_0

    .line 880
    const/4 v4, 0x0

    sput-boolean v4, Linstall/app/CNetSSLEngineProvider;->resultOnce:Z

    .line 881
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "The format of the SSLEngineResult is: \n\t\"getStatus() / getHandshakeStatus()\" +\n\t\"bytesConsumed() / bytesProduced()\"\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 884
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 885
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const-string v3, "/"

    .line 886
    .local v3, "str3":Ljava/lang/String;
    const-string v3, "/"

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 888
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v4, :cond_3

    .line 889
    const-string v4, "\t...buffer overflow"

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 897
    :cond_1
    :goto_0
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v4, :cond_2

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t...ready for application data, remaining data in net buffer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t   Host name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t   Host port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t   Protocol : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t   Cipher suite : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t   Session Id   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 906
    .end local v0    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v3    # "str3":Ljava/lang/String;
    :cond_2
    return-void

    .line 890
    .restart local v0    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v3    # "str3":Ljava/lang/String;
    :cond_3
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v4, :cond_4

    .line 891
    const-string v4, "\t...buffer underflow"

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    :cond_4
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v4, :cond_5

    .line 893
    const-string v4, "\t...The operation just closed this side of the SSLEngine."

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    :cond_5
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v4, :cond_1

    .line 895
    const-string v4, "\t...The SSLEngine completed the operation."

    invoke-direct {p0, v4}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resize_FromServAppData_Buffer(Z)V
    .locals 3
    .param p1, "need_flip"    # Z

    .prologue
    .line 263
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 264
    .local v0, "appBuffNeed":I
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 265
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 266
    .local v1, "new_buffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 267
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 269
    :cond_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 270
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->FromServAppData:Ljava/nio/ByteBuffer;

    .line 272
    .end local v1    # "new_buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_FromServNetData_Buffer(Z)V
    .locals 3
    .param p1, "need_flip"    # Z

    .prologue
    .line 287
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 288
    .local v0, "netBuffNeed":I
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 289
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 290
    .local v1, "new_buffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 291
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 293
    :cond_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 294
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->FromServNetData:Ljava/nio/ByteBuffer;

    .line 296
    .end local v1    # "new_buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_ToServAppData_Buffer(Z)V
    .locals 3
    .param p1, "need_flip"    # Z

    .prologue
    .line 251
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 252
    .local v0, "appBuffNeed":I
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 253
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    .local v1, "new_buffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 255
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    :cond_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 258
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->ToServAppData:Ljava/nio/ByteBuffer;

    .line 260
    .end local v1    # "new_buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private resize_ToServNetData_Buffer(Z)V
    .locals 3
    .param p1, "need_flip"    # Z

    .prologue
    .line 275
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 276
    .local v0, "netBuffNeed":I
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 277
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 278
    .local v1, "new_buffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 279
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 281
    :cond_0
    iget-object v2, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 282
    iput-object v1, p0, Linstall/app/CNetSSLEngineProvider;->ToServNetData:Ljava/nio/ByteBuffer;

    .line 284
    .end local v1    # "new_buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method


# virtual methods
.method public CreateConnection(Ljava/lang/String;)I
    .locals 15
    .param p1, "Host_port"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v11, ":"

    .line 101
    .local v11, "str":Ljava/lang/String;
    :try_start_0
    invoke-super/range {p0 .. p1}, Linstall/app/CNetTLSProviderBase;->CreateConnection(Ljava/lang/String;)I

    .line 102
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v13, p0, Linstall/app/CNetSSLEngineProvider;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    iget v14, p0, Linstall/app/CNetSSLEngineProvider;->Port:I

    invoke-virtual {v12, v13, v14}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v12

    iput-object v12, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    .line 103
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 104
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    .line 105
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v8

    .line 106
    .local v8, "prov":Ljava/security/Provider;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SSL context provider - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 107
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cipherSuites":[Ljava/lang/String;
    const-string v12, "names of the cipher suites which could be enabled: "

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v12, v0

    if-ge v7, v12, :cond_0

    .line 110
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suite "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v12

    iput-object v12, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 113
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v10

    .line 114
    .local v10, "s":Ljava/net/Socket;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Try connect to server: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Linstall/app/CNetSSLEngineProvider;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Linstall/app/CNetSSLEngineProvider;->Port:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 115
    new-instance v12, Ljava/net/InetSocketAddress;

    iget-object v13, p0, Linstall/app/CNetSSLEngineProvider;->InetAddr:Ljava/net/InetAddress;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    iget v14, p0, Linstall/app/CNetSSLEngineProvider;->Port:I

    invoke-direct {v12, v13, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 116
    invoke-virtual {v10}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v12

    iput-object v12, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===>> Channel value is: <<==="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 118
    iget-object v12, p0, Linstall/app/CNetSSLEngineProvider;->channel:Ljava/nio/channels/SocketChannel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 119
    const-string v12, "===>> Creating Buffer <<==="

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->createBuffers()V

    .line 121
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->doHandshake(Z)I

    move-result v9

    .line 122
    .local v9, "rezult":I
    if-gez v9, :cond_1

    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initial Handshake error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 124
    const/4 v12, -0x1

    .line 142
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "prov":Ljava/security/Provider;
    .end local v9    # "rezult":I
    .end local v10    # "s":Ljava/net/Socket;
    :goto_1
    return v12

    .line 126
    .restart local v0    # "cipherSuites":[Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "prov":Ljava/security/Provider;
    .restart local v9    # "rezult":I
    .restart local v10    # "s":Ljava/net/Socket;
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    const/4 v12, 0x0

    goto :goto_1

    .line 128
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "prov":Ljava/security/Provider;
    .end local v9    # "rezult":I
    .end local v10    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, v1

    .line 130
    .local v2, "e2":Ljava/net/UnknownHostException;
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CreateConnection(): Unknown host exception, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 132
    const/4 v12, -0x1

    goto :goto_1

    .line 133
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "e2":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 134
    .local v3, "e3":Ljavax/net/ssl/SSLException;
    move-object v4, v3

    .line 135
    .local v4, "e4":Ljavax/net/ssl/SSLException;
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CreateConnection(): SSL engine exception, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 137
    const/4 v12, -0x1

    goto :goto_1

    .line 138
    .end local v3    # "e3":Ljavax/net/ssl/SSLException;
    .end local v4    # "e4":Ljavax/net/ssl/SSLException;
    :catch_2
    move-exception v5

    .line 139
    .local v5, "e5":Ljava/io/IOException;
    move-object v6, v5

    .line 140
    .local v6, "e6":Ljava/io/IOException;
    invoke-direct {p0}, Linstall/app/CNetSSLEngineProvider;->Reset()V

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CreateConnection(): I/O Exception, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    .line 142
    const/4 v12, -0x1

    goto :goto_1
.end method

.method public declared-synchronized FreeConnection()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.calss.CNetSSLEngineProvider.FreeConnection():void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public IsActive()I
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Linstall/app/CNetSSLEngineProvider;->InitialHandshakeComplete:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Receive()I
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/CNetSSLEngineProvider$ReceiveThread;-><init>(Linstall/app/CNetSSLEngineProvider;Linstall/app/CNetSSLEngineProvider$1;)V

    iput-object v0, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    .line 473
    iget-object v0, p0, Linstall/app/CNetSSLEngineProvider;->ReadListener:Linstall/app/CNetSSLEngineProvider$ReceiveThread;

    invoke-virtual {v0}, Linstall/app/CNetSSLEngineProvider$ReceiveThread;->start()V

    .line 475
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ResetConnection()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public Send([B)I
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v4, -0x1

    .line 483
    const-string v3, "Send() error:"

    .line 485
    .local v3, "str2":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Linstall/app/CNetSSLEngineProvider;->DumpMessage([B)Z

    .line 486
    invoke-direct {p0, p1}, Linstall/app/CNetSSLEngineProvider;->Write([B)I
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 494
    :goto_0
    return v4

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljavax/net/ssl/SSLException;
    const-string v2, "Send() error:"

    .line 489
    .local v2, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v2    # "str":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 492
    .local v1, "e2":Ljava/io/IOException;
    const-string v2, "Send() error:"

    .line 493
    .restart local v2    # "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Linstall/app/CNetSSLEngineProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
