.class public interface abstract Linstall/app/PoolEntryRequest;
.super Ljava/lang/Object;
.source "PoolEntryRequest.java"


# virtual methods
.method public abstract abortRequest()V
.end method

.method public abstract getPoolEntry(JLjava/util/concurrent/TimeUnit;)Linstall/app/BasicPoolEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Linstall/app/ConnectionPoolTimeoutException;
        }
    .end annotation
.end method
