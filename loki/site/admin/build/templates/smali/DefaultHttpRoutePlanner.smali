.class public Linstall/app/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Linstall/app/HttpRoutePlanner;


# instance fields
.field protected schemeRegistry:Linstall/app/SchemeRegistry;


# direct methods
.method public constructor <init>(Linstall/app/SchemeRegistry;)V
    .locals 2
    .param p1, "schreg"    # Linstall/app/SchemeRegistry;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public determineRoute(Linstall/app/HttpHost;Linstall/app/HttpRequest;Linstall/app/HttpContext;)Linstall/app/HttpRoute;
    .locals 2
    .param p1, "target"    # Linstall/app/HttpHost;
    .param p2, "request"    # Linstall/app/HttpRequest;
    .param p3, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
