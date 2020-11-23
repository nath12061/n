.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/JSch;

.field private sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

.field private zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/JSch;

    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->zxcvxvsdvsvsvs:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 2

    invoke-static {p2, p0, p1}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {v1, p2, p0, v0}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v1
.end method

.method static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .locals 2

    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {v1, p3, p0, v0}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v1
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd([B)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->zxcvxvsdvsvsvs([B)Z

    move-result v0

    return v0
.end method

.method public fsafsdfsfsdfsfsdfsd()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->serfwefewfwefewef()[B

    move-result-object v0

    return-object v0
.end method

.method public hukuiluliulu()Lcom/jcraft/jsch/KeyPair;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method

.method public sdfsdfsdfsdf()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->zxcvxvsdvsvsvs()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public sdfsdfsdfsdf([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sdvsdvsvsevsvsev()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->hukuiluliulu()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method public serfwefewfwefewef()Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->sdfsdfsdfsdf:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->sdvsdvsvsevsvsev()Z

    move-result v0

    return v0
.end method

.method public zxcvxvsdvsvsvs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->zxcvxvsdvsvsvs:Ljava/lang/String;

    return-object v0
.end method
