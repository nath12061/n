.class public Linstall/app/SingleClientConnManager$PoolEntry;
.super Linstall/app/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PoolEntry"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Linstall/app/SingleClientConnManager;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/SingleClientConnManager;

    .prologue
    const/4 v1, 0x0

    .line 25
    iput-object p1, p0, Linstall/app/SingleClientConnManager$PoolEntry;->this$0:Linstall/app/SingleClientConnManager;

    move-object v0, v1

    .line 26
    check-cast v0, Linstall/app/ClientConnectionOperator;

    check-cast v1, Linstall/app/HttpRoute;

    invoke-direct {p0, v0, v1}, Linstall/app/AbstractPoolEntry;-><init>(Linstall/app/ClientConnectionOperator;Linstall/app/HttpRoute;)V

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
