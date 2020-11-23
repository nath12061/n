.class public Linstall/app/SingleClientConnManager$ConnAdapter;
.super Linstall/app/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Linstall/app/SingleClientConnManager;Linstall/app/SingleClientConnManager$PoolEntry;Linstall/app/HttpRoute;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/SingleClientConnManager;
    .param p2, "entry"    # Linstall/app/SingleClientConnManager$PoolEntry;
    .param p3, "route"    # Linstall/app/HttpRoute;

    .prologue
    const/4 v1, 0x0

    .line 18
    iput-object p1, p0, Linstall/app/SingleClientConnManager$ConnAdapter;->this$0:Linstall/app/SingleClientConnManager;

    move-object v0, v1

    .line 19
    check-cast v0, Linstall/app/ClientConnectionManager;

    check-cast v1, Linstall/app/AbstractPoolEntry;

    invoke-direct {p0, v0, v1}, Linstall/app/AbstractPooledConnAdapter;-><init>(Linstall/app/ClientConnectionManager;Linstall/app/AbstractPoolEntry;)V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
