.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field private sdfsdfsdfsdf:Ljava/lang/String;


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->fsafsdfsfsdfsfsdfsd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "a decendent of LsEntry must be given."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->sdfsdfsdfsdf:Ljava/lang/String;

    return-object v0
.end method
