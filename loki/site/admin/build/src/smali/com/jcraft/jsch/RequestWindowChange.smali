.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field fsafsdfsfsdfsfsdfsd:I

.field sdfsdfsdfsdf:I

.field serfwefewfwefewef:I

.field zxcvxvsdvsvsvs:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->fsafsdfsfsdfsfsdfsd:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->sdfsdfsdfsdf:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->zxcvxvsdvsvsvs:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->serfwefewfwefewef:I

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/16 v0, 0x62

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    const-string v0, "window-change"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestWindowChange;->fsafsdfsfsdfsfsdfsd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->sdfsdfsdfsdf:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->zxcvxvsdvsvsvs:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->serfwefewfwefewef:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestWindowChange;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
