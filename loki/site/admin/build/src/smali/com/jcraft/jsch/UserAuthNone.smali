.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private sdvsdvsvsevsvsev:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdvsdvsvsevsvsev:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdvsdvsvsevsvsev:Ljava/lang/String;

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-userauth"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "SSH_MSG_SERVICE_REQUEST sent"

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    invoke-interface {v3, v1, v4}, Lcom/jcraft/jsch/Logger;->fsafsdfsfsdfsfsdfsd(ILjava/lang/String;)V

    :cond_1
    if-nez v0, :cond_3

    :goto_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->serfwefewfwefewef:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v3, "none"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x34

    if-ne v0, v3, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    const/16 v3, 0x35

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v0}, Lcom/jcraft/jsch/UserInfo;->serfwefewfwefewef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    const/16 v1, 0x33

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthNone;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->sdvsdvsvsevsvsev:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "USERAUTH fail ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
