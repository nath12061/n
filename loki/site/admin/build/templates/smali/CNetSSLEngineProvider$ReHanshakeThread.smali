.class Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;
.super Ljava/lang/Thread;
.source "CNetSSLEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CNetSSLEngineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReHanshakeThread"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CNetSSLEngineProvider;


# direct methods
.method private constructor <init>(Linstall/app/CNetSSLEngineProvider;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;->this$0:Linstall/app/CNetSSLEngineProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/CNetSSLEngineProvider;Linstall/app/CNetSSLEngineProvider$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/CNetSSLEngineProvider;
    .param p2, "x1"    # Linstall/app/CNetSSLEngineProvider$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;-><init>(Linstall/app/CNetSSLEngineProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Linstall/app/CNetSSLEngineProvider$ReHanshakeThread;->this$0:Linstall/app/CNetSSLEngineProvider;

    # invokes: Linstall/app/CNetSSLEngineProvider;->ReHandshake()V
    invoke-static {v0}, Linstall/app/CNetSSLEngineProvider;->access$100(Linstall/app/CNetSSLEngineProvider;)V

    .line 91
    return-void
.end method
