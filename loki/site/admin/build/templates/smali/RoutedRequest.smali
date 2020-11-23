.class public Linstall/app/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"


# instance fields
.field protected final request:Linstall/app/RequestWrapper;

.field protected final route:Linstall/app/HttpRoute;


# direct methods
.method public constructor <init>(Linstall/app/RequestWrapper;Linstall/app/HttpRoute;)V
    .locals 2
    .param p1, "req"    # Linstall/app/RequestWrapper;
    .param p2, "route"    # Linstall/app/HttpRoute;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getRequest()Linstall/app/RequestWrapper;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRoute()Linstall/app/HttpRoute;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
