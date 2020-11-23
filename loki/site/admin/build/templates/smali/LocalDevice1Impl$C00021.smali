.class Linstall/app/LocalDevice1Impl$C00021;
.super Ljava/lang/Object;
.source "LocalDevice1Impl.java"

# interfaces
.implements Linstall/app/LocalBluetoothDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LocalDevice1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00021"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/LocalDevice1Impl;


# direct methods
.method constructor <init>(Linstall/app/LocalDevice1Impl;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/LocalDevice1Impl;

    .prologue
    .line 13
    iput-object p1, p0, Linstall/app/LocalDevice1Impl$C00021;->this$0:Linstall/app/LocalDevice1Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public bluetoothDisabled()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public bluetoothEnabled()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public deviceFound(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public scanCompleted(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Linstall/app/LocalDevice1Impl$C00021;->this$0:Linstall/app/LocalDevice1Impl;

    iget-object v0, v0, Linstall/app/LocalDevice1Impl;->scanListener:Linstall/app/ScanListener;

    invoke-virtual {v0}, Linstall/app/ScanListener;->notifyScanCompleted()V

    .line 21
    return-void
.end method

.method public scanStarted()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
