.class Lcom/jcraft/jsch/LocalIdentityRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

.field private sdfsdfsdfsdf:Lcom/jcraft/jsch/JSch;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    iput-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->sdfsdfsdfsdf:Lcom/jcraft/jsch/JSch;

    return-void
.end method

.method private zxcvxvsdvsvsvs()V
    .locals 9

    const/4 v2, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/Identity;

    invoke-interface {v1}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v8

    if-nez v8, :cond_5

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-static {v7, v8}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v8

    invoke-interface {v1}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v1

    if-ne v8, v1, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/LocalIdentityRepository;->sdfsdfsdfsdf([B)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized fsafsdfsfsdfsfsdfsd()Ljava/util/Vector;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/LocalIdentityRepository;->zxcvxvsdvsvsvs()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/LocalIdentityRepository;->sdfsdfsdfsdf([B)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fsafsdfsfsdfsfsdfsd([B)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "from remote:"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->sdfsdfsdfsdf:Lcom/jcraft/jsch/JSch;

    invoke-static {v0, p1, v1, v2}, Lcom/jcraft/jsch/IdentityFile;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sdfsdfsdfsdf()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->sdvsdvsvsevsvsev()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sdfsdfsdfsdf([B)Z
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->sdfsdfsdfsdf([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->sdvsdvsvsevsvsev()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
