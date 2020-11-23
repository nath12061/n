.class public interface abstract Linstall/app/ICardChannel;
.super Ljava/lang/Object;
.source "ICardChannel.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLogicalChannel()Z
.end method

.method public abstract transmit([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/CardException;
        }
    .end annotation
.end method
