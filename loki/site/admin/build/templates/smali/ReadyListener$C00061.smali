.class Linstall/app/ReadyListener$C00061;
.super Landroid/os/Handler;
.source "ReadyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ReadyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00061"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ReadyListener;


# direct methods
.method constructor <init>(Linstall/app/ReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ReadyListener;

    .prologue
    .line 11
    iput-object p1, p0, Linstall/app/ReadyListener$C00061;->this$0:Linstall/app/ReadyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Linstall/app/ReadyListener$C00061;->this$0:Linstall/app/ReadyListener;

    invoke-virtual {v0}, Linstall/app/ReadyListener;->ready()V

    .line 19
    :cond_0
    return-void
.end method
