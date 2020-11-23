.class Linstall/app/RemoteDevice1Impl$C00071;
.super Ljava/lang/Object;
.source "RemoteDevice1Impl.java"

# interfaces
.implements Linstall/app/RemoteBluetoothDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/RemoteDevice1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00071"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/RemoteDevice1Impl;


# direct methods
.method constructor <init>(Linstall/app/RemoteDevice1Impl;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/RemoteDevice1Impl;

    .prologue
    .line 9
    iput-object p1, p0, Linstall/app/RemoteDevice1Impl$C00071;->this$0:Linstall/app/RemoteDevice1Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public gotServiceChannel(II)V
    .locals 0
    .param p1, "serviceID"    # I
    .param p2, "channel"    # I

    .prologue
    .line 22
    return-void
.end method

.method public paired()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public pinRequested()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public serviceChannelNotAvailable(I)V
    .locals 0
    .param p1, "serviceID"    # I

    .prologue
    .line 13
    return-void
.end method
