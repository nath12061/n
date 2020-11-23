.class public interface abstract Linstall/app/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/RouteInfo$TunnelType;,
        Linstall/app/RouteInfo$LayerType;
    }
.end annotation


# virtual methods
.method public abstract getHopCount()I
.end method

.method public abstract getHopTarget(I)Linstall/app/HttpHost;
.end method

.method public abstract getLayerType()Linstall/app/RouteInfo$LayerType;
.end method

.method public abstract getLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract getProxyHost()Linstall/app/HttpHost;
.end method

.method public abstract getTargetHost()Linstall/app/HttpHost;
.end method

.method public abstract getTunnelType()Linstall/app/RouteInfo$TunnelType;
.end method

.method public abstract isLayered()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isTunnelled()Z
.end method
