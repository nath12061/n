.class public Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;
.super Lcom/jcraft/jsch/UserAuth;


# static fields
.field private static final hukuiluliulu:[Ljava/lang/String;

.field private static final sdvsdvsvsevsvsev:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [[B

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "gssapi-with-mic.krb5"

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->hukuiluliulu:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0x12t
        0x1t
        0x2t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z
    .locals 8

    const/16 v7, 0x32

    const/16 v6, 0x33

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->serfwefewfwefewef:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-connection"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v2, "gssapi-with-mic"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    sget-object v2, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    const/4 v2, 0x0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_3

    :cond_2
    :goto_2
    return v1

    :cond_3
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v4

    move v0, v1

    :goto_3
    sget-object v5, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    array-length v5, v5

    if-ge v0, v5, :cond_c

    sget-object v5, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdvsdvsvsevsvsev:[[B

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v2, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->hukuiluliulu:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_4
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdvsdvsvsevsvsev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/GSSContext;

    check-cast v0, Lcom/jcraft/jsch/GSSContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->serfwefewfwefewef:Ljava/lang/String;

    iget-object v4, p1, Lcom/jcraft/jsch/Session;->uiiliuluiiuluilulu:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/jcraft/jsch/GSSContext;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1

    new-array v2, v1, [B

    :cond_4
    :goto_5
    invoke-interface {v0}, Lcom/jcraft/jsch/GSSContext;->fsafsdfsfsdfsfsdfsd()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :try_start_2
    array-length v5, v2

    invoke-interface {v0, v2, v4, v5}, Lcom/jcraft/jsch/GSSContext;->fsafsdfsfsdfsfsdfsd([BII)[B
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    :cond_5
    invoke-interface {v0}, Lcom/jcraft/jsch/GSSContext;->fsafsdfsfsdfsfsdfsd()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x40

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :cond_6
    :goto_6
    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v2

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v4, 0x35

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v4, v0}, Lcom/jcraft/jsch/UserInfo;->serfwefewfwefewef(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x41

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_6

    :cond_a
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    const-string v3, "gssapi-with-mic"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v2

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/GSSContext;->sdfsdfsdfsdf([BII)[B

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/GSSContext;->sdfsdfsdfsdf()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x34

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_b
    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_4
.end method
