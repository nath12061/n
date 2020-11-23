.class public Linstall/app/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Linstall/app/HttpRouteDirector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected directStep(Linstall/app/RouteInfo;Linstall/app/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Linstall/app/RouteInfo;
    .param p2, "fact"    # Linstall/app/RouteInfo;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected firstStep(Linstall/app/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Linstall/app/RouteInfo;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextStep(Linstall/app/RouteInfo;Linstall/app/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Linstall/app/RouteInfo;
    .param p2, "fact"    # Linstall/app/RouteInfo;

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected proxiedStep(Linstall/app/RouteInfo;Linstall/app/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Linstall/app/RouteInfo;
    .param p2, "fact"    # Linstall/app/RouteInfo;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
