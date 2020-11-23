.class Linstall/app/CNetSSLSocketProvider$ReceiveThread;
.super Ljava/lang/Thread;
.source "CNetSSLSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CNetSSLSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CNetSSLSocketProvider;


# direct methods
.method private constructor <init>(Linstall/app/CNetSSLSocketProvider;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Linstall/app/CNetSSLSocketProvider$ReceiveThread;->this$0:Linstall/app/CNetSSLSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/CNetSSLSocketProvider;Linstall/app/CNetSSLSocketProvider$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/CNetSSLSocketProvider;
    .param p2, "x1"    # Linstall/app/CNetSSLSocketProvider$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Linstall/app/CNetSSLSocketProvider$ReceiveThread;-><init>(Linstall/app/CNetSSLSocketProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Linstall/app/CNetSSLSocketProvider$ReceiveThread;->this$0:Linstall/app/CNetSSLSocketProvider;

    # invokes: Linstall/app/CNetSSLSocketProvider;->ReadProc()V
    invoke-static {v0}, Linstall/app/CNetSSLSocketProvider;->access$100(Linstall/app/CNetSSLSocketProvider;)V

    .line 41
    return-void
.end method
