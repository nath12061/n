.class Linstall/app/ScanListener$C00081;
.super Landroid/os/Handler;
.source "ScanListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00081"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ScanListener;


# direct methods
.method constructor <init>(Linstall/app/ScanListener;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ScanListener;

    .prologue
    .line 12
    iput-object p1, p0, Linstall/app/ScanListener$C00081;->this$0:Linstall/app/ScanListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 25
    :goto_0
    return-void

    .line 19
    :pswitch_0
    iget-object v1, p0, Linstall/app/ScanListener$C00081;->this$0:Linstall/app/ScanListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Linstall/app/RemoteDevice;

    invoke-virtual {v1, v0}, Linstall/app/ScanListener;->deviceFound(Linstall/app/RemoteDevice;)V

    goto :goto_0

    .line 22
    :pswitch_1
    iget-object v0, p0, Linstall/app/ScanListener$C00081;->this$0:Linstall/app/ScanListener;

    invoke-virtual {v0}, Linstall/app/ScanListener;->scanCompleted()V

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
