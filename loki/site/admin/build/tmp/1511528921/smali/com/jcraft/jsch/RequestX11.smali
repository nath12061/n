.class Lcom/jcraft/jsch/RequestX11;
.super Lcom/jcraft/jsch/Request;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v0, 0x62

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    const-string v0, "x11-req"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestX11;->fsafsdfsfsdfsfsdfsd()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    const-string v0, "MIT-MAGIC-COOKIE-1"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->zxcvxvsdvsvsvs(Lcom/jcraft/jsch/Session;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/RequestX11;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;)V

    iput-boolean v1, p1, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
