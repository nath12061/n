.class public Lcom/jcraft/jsch/IdentityRepository$Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

.field private sdfsdfsdfsdf:Ljava/util/Vector;

.field private zxcvxvsdvsvsvs:Z


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->zxcvxvsdvsvsvs:Z

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    iput-boolean p2, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->zxcvxvsdvsvsvs:Z

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/util/Vector;
    .locals 4

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd()Ljava/util/Vector;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->zxcvxvsdvsvsvs:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->hukuiluliulu()Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd([B)Z
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public fsafsdfsfsdfsfsdfsd([B)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd([B)Z

    move-result v0

    return v0
.end method

.method public sdfsdfsdfsdf()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->sdfsdfsdfsdf()V

    return-void
.end method

.method public sdfsdfsdfsdf([B)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->sdfsdfsdfsdf([B)Z

    move-result v0

    return v0
.end method

.method zxcvxvsdvsvsvs()V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->sdfsdfsdfsdf:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
