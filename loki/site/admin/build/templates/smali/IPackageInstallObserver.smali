.class public interface abstract Linstall/app/IPackageInstallObserver;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Linstall/app/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/IPackageInstallObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/RemoteException;
        }
    .end annotation
.end method
