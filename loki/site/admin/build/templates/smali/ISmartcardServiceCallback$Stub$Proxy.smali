.class Linstall/app/ISmartcardServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartcardServiceCallback.java"

# interfaces
.implements Linstall/app/ISmartcardServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ISmartcardServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Linstall/app/ISmartcardServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Linstall/app/ISmartcardServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "install.app.ISmartcardServiceCallback"

    return-object v0
.end method
