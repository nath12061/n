.class Linstall/app/CNetSSLSocketProvider$C00021;
.super Ljava/lang/Object;
.source "CNetSSLSocketProvider.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CNetSSLSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00021"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CNetSSLSocketProvider;


# direct methods
.method constructor <init>(Linstall/app/CNetSSLSocketProvider;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/CNetSSLSocketProvider;

    .prologue
    .line 25
    iput-object p1, p0, Linstall/app/CNetSSLSocketProvider$C00021;->this$0:Linstall/app/CNetSSLSocketProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    .line 29
    const-string v0, "CNetSSLSocketProvider"

    const-string v1, "[GPS_NET] **HANDSHAKE FINISHED**"

    invoke-static {v0, v1}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Linstall/app/CNetSSLSocketProvider$C00021;->this$0:Linstall/app/CNetSSLSocketProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t SessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Linstall/app/CNetSSLSocketProvider;->access$000(Linstall/app/CNetSSLSocketProvider;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Linstall/app/CNetSSLSocketProvider$C00021;->this$0:Linstall/app/CNetSSLSocketProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t PeerHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Linstall/app/CNetSSLSocketProvider;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Linstall/app/CNetSSLSocketProvider;->access$000(Linstall/app/CNetSSLSocketProvider;Ljava/lang/String;)V

    .line 32
    return-void
.end method
