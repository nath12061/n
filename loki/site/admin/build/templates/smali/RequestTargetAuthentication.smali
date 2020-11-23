.class public Linstall/app/RequestTargetAuthentication;
.super Ljava/lang/Object;
.source "RequestTargetAuthentication.java"

# interfaces
.implements Linstall/app/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 2

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
.method public process(Linstall/app/HttpRequest;Linstall/app/HttpContext;)V
    .locals 2
    .param p1, "request"    # Linstall/app/HttpRequest;
    .param p2, "context"    # Linstall/app/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
