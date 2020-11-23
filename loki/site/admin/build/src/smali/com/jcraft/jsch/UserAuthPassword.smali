.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private final sdvsdvsvsevsvsev:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->sdvsdvsvsevsvsev:I

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z

    iget-object v6, p1, Lcom/jcraft/jsch/Session;->c:[B

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPassword;->serfwefewfwefewef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lcom/jcraft/jsch/Session;->uiiliuluiiuluilulu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/jcraft/jsch/Session;->a:I

    const/16 v2, 0x16

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p1, Lcom/jcraft/jsch/Session;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/jcraft/jsch/Session;->ertertetetetete:I

    iget v2, p1, Lcom/jcraft/jsch/Session;->htyjyukuilulululu:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_2

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_1
    move v0, v7

    :goto_1
    return v0

    :cond_2
    if-nez v6, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Password for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/UserInfo;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_5
    throw v0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v0}, Lcom/jcraft/jsch/UserInfo;->sdfsdfsdfsdf()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v6

    :cond_8
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->serfwefewfwefewef:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-connection"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v2, "password"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->uiiliuluiiuluilulu()B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x34

    if-ne v0, v2, :cond_b

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_a
    move v0, v8

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x35

    if-ne v0, v2, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->serfwefewfwefewef(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_10

    :cond_d
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    const-string v1, "Password must be changed."

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->serfwefewfwefewef(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    if-eqz v6, :cond_f

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_f
    move v0, v7

    goto/16 :goto_1

    :cond_10
    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    const-string v2, "Password Change Required"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "New Password: "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-boolean v11, v5, v10

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const-string v3, "password"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v6}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_2

    :cond_12
    const/16 v2, 0x33

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v2

    if-eqz v2, :cond_13

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget v0, p1, Lcom/jcraft/jsch/Session;->ertertetetetete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/jcraft/jsch/Session;->ertertetetetete:I

    if-eqz v6, :cond_16

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :goto_3
    move-object v6, v0

    goto/16 :goto_0

    :cond_14
    if-eqz v6, :cond_15

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_15
    move v0, v7

    goto/16 :goto_1

    :cond_16
    move-object v0, v6

    goto :goto_3
.end method
