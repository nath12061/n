.class public Linstall/app/TunnelRefusedException;
.super Linstall/app/HttpException;
.source "TunnelRefusedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Linstall/app/HttpResponse;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Linstall/app/HttpResponse;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/HttpException;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResponse()Linstall/app/HttpResponse;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
