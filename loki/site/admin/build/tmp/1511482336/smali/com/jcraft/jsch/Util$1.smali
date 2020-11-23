.class final Lcom/jcraft/jsch/Util$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

.field private final sdfsdfsdfsdf:Ljava/lang/String;

.field private final serfwefewfwefewef:[Ljava/lang/Exception;

.field private final zxcvxvsdvsvsvs:I


# direct methods
.method constructor <init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    iput-object p2, p0, Lcom/jcraft/jsch/Util$1;->sdfsdfsdfsdf:Ljava/lang/String;

    iput p3, p0, Lcom/jcraft/jsch/Util$1;->zxcvxvsdvsvsvs:I

    iput-object p4, p0, Lcom/jcraft/jsch/Util$1;->serfwefewfwefewef:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    aput-object v6, v0, v5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/jcraft/jsch/Util$1;->sdfsdfsdfsdf:Ljava/lang/String;

    iget v4, p0, Lcom/jcraft/jsch/Util$1;->zxcvxvsdvsvsvs:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->serfwefewfwefewef:[Ljava/lang/Exception;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Util$1;->fsafsdfsfsdfsfsdfsd:[Ljava/net/Socket;

    aput-object v6, v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
