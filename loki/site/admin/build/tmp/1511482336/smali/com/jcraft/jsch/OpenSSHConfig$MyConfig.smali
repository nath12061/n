.class Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository$Config;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field private sdfsdfsdfsdf:Ljava/util/Vector;

.field private final zxcvxvsdvsvsvs:Lcom/jcraft/jsch/OpenSSHConfig;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/OpenSSHConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    iput-object p2, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->sdfsdfsdfsdf(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->sdfsdfsdfsdf(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->sdfsdfsdfsdf(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "[ \t]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v3, v4

    :goto_1
    array-length v0, v7

    if-ge v3, v0, :cond_2

    aget-object v0, v7, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "!"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move v5, v2

    :goto_2
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->sdfsdfsdfsdf(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->sdfsdfsdfsdf(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v5, v4

    goto :goto_2
.end method

.method private serfwefewfwefewef(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v1, v1, v7

    if-eqz v1, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->fsafsdfsfsdfsfsdfsd()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->fsafsdfsfsdfsfsdfsd()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    move v2, v3

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v5, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    aget-object v1, v1, v0

    :goto_3
    if-eqz v1, :cond_1

    :goto_4
    return-object v1

    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v4

    goto :goto_4

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 1

    const-string v0, "Hostname"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "compression.s2c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compression.c2s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "none,zlib@openssh.com,zlib"

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "zlib@openssh.com,zlib,none"

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sdfsdfsdfsdf()Ljava/lang/String;
    .locals 1

    const-string v0, "User"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sdfsdfsdfsdf(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->serfwefewfwefewef(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zxcvxvsdvsvsvs()I
    .locals 2

    const-string v0, "Port"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
