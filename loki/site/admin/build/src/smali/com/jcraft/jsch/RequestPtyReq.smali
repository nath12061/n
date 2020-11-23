.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field private hukuiluliulu:[B

.field private sdfsdfsdfsdf:I

.field private sdvsdvsvsevsvsev:I

.field private serfwefewfwefewef:I

.field private zxcvxvsdvsvsvs:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdfsdfsdfsdf:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->zxcvxvsdvsvsvs:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->serfwefewfwefewef:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdvsdvsvsevsvsev:I

    sget-object v0, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->hukuiluliulu:[B

    return-void
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd(IIII)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdfsdfsdfsdf:I

    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->zxcvxvsdvsvsvs:I

    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->serfwefewfwefewef:I

    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdvsdvsvsevsvsev:I

    return-void
.end method

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

    const-string v0, "pty-req"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestPtyReq;->fsafsdfsfsdfsfsdfsd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdfsdfsdfsdf:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->zxcvxvsdvsvsvs:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->serfwefewfwefewef:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->sdvsdvsvsevsvsev:I

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->hukuiluliulu:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestPtyReq;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-void
.end method

.method fsafsdfsfsdfsfsdfsd([B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->hukuiluliulu:[B

    return-void
.end method
