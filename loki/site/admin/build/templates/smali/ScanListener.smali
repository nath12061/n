.class public abstract Linstall/app/ScanListener;
.super Ljava/lang/Object;
.source "ScanListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ScanListener$C00081;
    }
.end annotation


# static fields
.field private static final DEVICE_FOUND:I = 0x1

.field private static final SCAN_COMPLETED:I = 0x2


# instance fields
.field private delegate:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Linstall/app/ScanListener$C00081;

    invoke-direct {v0, p0}, Linstall/app/ScanListener$C00081;-><init>(Linstall/app/ScanListener;)V

    iput-object v0, p0, Linstall/app/ScanListener;->delegate:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract deviceFound(Linstall/app/RemoteDevice;)V
.end method

.method final notifyDeviceFound(Linstall/app/RemoteDevice;)V
    .locals 3
    .param p1, "tobounce"    # Linstall/app/RemoteDevice;

    .prologue
    .line 39
    iget-object v0, p0, Linstall/app/ScanListener;->delegate:Landroid/os/Handler;

    iget-object v1, p0, Linstall/app/ScanListener;->delegate:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void
.end method

.method final notifyScanCompleted()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Linstall/app/ScanListener;->delegate:Landroid/os/Handler;

    iget-object v1, p0, Linstall/app/ScanListener;->delegate:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method

.method public abstract scanCompleted()V
.end method
