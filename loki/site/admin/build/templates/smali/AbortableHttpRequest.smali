.class public interface abstract Linstall/app/AbortableHttpRequest;
.super Ljava/lang/Object;
.source "AbortableHttpRequest.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract setConnectionRequest(Linstall/app/ClientConnectionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setReleaseTrigger(Linstall/app/ConnectionReleaseTrigger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
