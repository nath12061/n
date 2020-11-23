.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;


# instance fields
.field eryryhrtytujrtujrurt:[Ljava/lang/String;

.field fsafsdfsfsdfsfsdfsd:I

.field hukuiluliulu:I

.field sdfsdfsdfsdf:J

.field sdvsdvsvsevsvsev:I

.field serfwefewfwefewef:I

.field zxcvxvsdvsvsvs:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->fsafsdfsfsdfsfsdfsd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->eryryhrtytujrtujrurt:[Ljava/lang/String;

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd(I)Z
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->fsafsdfsfsdfsfsdfsd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    const v1, 0xf000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public eryryhrtytujrtujrurt()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->serfwefewfwefewef:I

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x73

    const/16 v5, 0x78

    const/16 v4, 0x77

    const/16 v3, 0x72

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->zxcvxvsdvsvsvs()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->serfwefewfwefewef()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method public hukuiluliulu()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->zxcvxvsdvsvsvs:I

    return v0
.end method

.method public sdfsdfsdfsdf()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->hukuiluliulu:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sdvsdvsvsevsvsev()J
    .locals 2

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->sdfsdfsdfsdf:J

    return-wide v0
.end method

.method public serfwefewfwefewef()Z
    .locals 1

    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->fsafsdfsfsdfsfsdfsd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->hukuiluliulu()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->eryryhrtytujrtujrurt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->sdvsdvsvsevsvsev()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->sdfsdfsdfsdf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zxcvxvsdvsvsvs()Z
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->fsafsdfsfsdfsfsdfsd(I)Z

    move-result v0

    return v0
.end method
