.class public Linstall/app/AsyncQueryHandler$WorkerHandler;
.super Linstall/app/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Linstall/app/AsyncQueryHandler;Linstall/app/Looper;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/AsyncQueryHandler;
    .param p2, "looper"    # Linstall/app/Looper;

    .prologue
    .line 22
    iput-object p1, p0, Linstall/app/AsyncQueryHandler$WorkerHandler;->this$0:Linstall/app/AsyncQueryHandler;

    invoke-direct {p0}, Linstall/app/Handler;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Linstall/app/Message;)V
    .locals 2
    .param p1, "msg"    # Linstall/app/Message;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
