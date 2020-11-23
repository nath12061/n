.class Linstall/app/CNetSocketProvider$ReceiveThread;
.super Ljava/lang/Thread;
.source "CNetSocketProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CNetSocketProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CNetSocketProvider;


# direct methods
.method private constructor <init>(Linstall/app/CNetSocketProvider;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Linstall/app/CNetSocketProvider$ReceiveThread;->this$0:Linstall/app/CNetSocketProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/CNetSocketProvider;Linstall/app/CNetSocketProvider$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/CNetSocketProvider;
    .param p2, "x1"    # Linstall/app/CNetSocketProvider$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Linstall/app/CNetSocketProvider$ReceiveThread;-><init>(Linstall/app/CNetSocketProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Linstall/app/CNetSocketProvider$ReceiveThread;->this$0:Linstall/app/CNetSocketProvider;

    # invokes: Linstall/app/CNetSocketProvider;->ReadProc()V
    invoke-static {v0}, Linstall/app/CNetSocketProvider;->access$000(Linstall/app/CNetSocketProvider;)V

    .line 27
    return-void
.end method
