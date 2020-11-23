.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;


# instance fields
.field protected fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

.field protected sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

.field protected serfwefewfwefewef:Ljava/lang/String;

.field protected zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->serfwefewfwefewef()Lcom/jcraft/jsch/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->fsafsdfsfsdfsfsdfsd:Lcom/jcraft/jsch/UserInfo;

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->rthrthrtjrtjrjtdcbcvbc:Lcom/jcraft/jsch/Packet;

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->sdfsdfsdfsdf()Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->zxcvxvsdvsvsvs:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->wrrgehehehehe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->serfwefewfwefewef:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
