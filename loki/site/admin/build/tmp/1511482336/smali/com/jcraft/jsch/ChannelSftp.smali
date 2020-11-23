.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# static fields
.field private static final F:Ljava/lang/String;

.field private static final G:C

.field private static H:Z


# instance fields
.field private A:Ljava/util/Hashtable;

.field private B:Ljava/io/InputStream;

.field private C:Z

.field private D:Z

.field private E:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private g:Z

.field private r:I

.field private s:[I

.field private t:Lcom/jcraft/jsch/Buffer;

.field private u:Lcom/jcraft/jsch/Packet;

.field private v:Lcom/jcraft/jsch/Buffer;

.field private w:Lcom/jcraft/jsch/Packet;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->F:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->G:C

    sget-char v0, Ljava/io/File;->separatorChar:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->H:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x200000

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->g:Z

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->s:[I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->x:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->y:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->x:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->z:Ljava/lang/String;

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->C:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->D:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Z

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs(I)V

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->serfwefewfwefewef(I)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->sdvsdvsvsevsvsev(I)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    return v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs([BII)I

    move-result v0

    return v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([BJ[BII)I

    move-result v0

    return v0
.end method

.method private fsafsdfsfsdfsfsdfsd([BJ[BII)I
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->w:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p6

    add-int/lit16 v1, v1, 0x80

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x80

    sub-int p6, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x6

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([BII)V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->w:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf(I)V

    goto :goto_0
.end method

.method private fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->ertertetetetete()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs([BII)I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->fsafsdfsfsdfsfsdfsd:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->hukuiluliulu()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->sdfsdfsdfsdf:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->zxcvxvsdvsvsvs:I

    return-object p2
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    return-object v0
.end method

.method private fsafsdfsfsdfsfsdfsd(BI)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;BI)V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd(B[B)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(B[BLjava/lang/String;)V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd(B[BLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, p0, v0}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(BI)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    goto :goto_0
.end method

.method private fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 1

    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(B)V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;I)V
    .locals 3

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->y:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "Failure"

    invoke-direct {v0, p2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs(J)V

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd([B)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(B[B)V

    return-void
.end method

.method private fsafsdfsfsdfsfsdfsd([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->fsafsdfsfsdfsfsdfsd()V

    const/4 v0, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->fsafsdfsfsdfsfsdfsd(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->r:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->fsafsdfsfsdfsfsdfsd(IJI)V

    :cond_0
    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method static fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private fsafsdfsfsdfsfsdfsd([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private fsafsdfsfsdfsfsdfsd([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->fsafsdfsfsdfsfsdfsd:I

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->sdfsdfsdfsdf:I

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->zxcvxvsdvsvsvs:I

    aput v0, p1, v3

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v2, v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->zxcvxvsdvsvsvs()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static sdfsdfsdfsdf(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    return-object v0
.end method

.method private sdfsdfsdfsdf(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->fgjyukukuiki()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->zxcvxvsdvsvsvs([BII)I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->sdfsdfsdfsdf(I)V

    return-void
.end method

.method static sdvsdvsvsevsvsev(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object v0
.end method

.method static serfwefewfwefewef(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->y:I

    return v0
.end method

.method private zxcvxvsdvsvsvs([BII)I
    .locals 2

    move v0, p2

    :goto_0
    if-lez p3, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputstream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method static zxcvxvsdvsvsvs(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method private zxcvxvsdvsvsvs(J)V
    .locals 7

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public rthrthrtjrtjrjtdcbcvbc()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->rthrthrtjrtjrjtdcbcvbc()V

    return-void
.end method

.method sdfsdfsdfsdf()V
    .locals 0

    return-void
.end method

.method public zxcvxvsdvsvsvs()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->wrrgehehehehe:I

    invoke-direct {v1, p0, v0, v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->fsafsdfsfsdfsfsdfsd:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->B:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->fgjyukukuiki()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->eryryhrtytujrtujrurt:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->u:Lcom/jcraft/jsch/Packet;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->wrrgehehehehe:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->v:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->w:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->a()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->fsafsdfsfsdfsfsdfsd:I

    const/high16 v2, 0x40000

    if-le v0, v2, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Received message is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->sdfsdfsdfsdf:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->zxcvxvsdvsvsvs:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->y:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sdfsdfsdfsdf(Lcom/jcraft/jsch/Buffer;I)V

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->wrrgehehehehe()[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->fsafsdfsfsdfsfsdfsd([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->C:Z

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "statvfs@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->D:Z

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->A:Ljava/util/Hashtable;

    const-string v1, "hardlink@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->E:Z

    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_6
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
