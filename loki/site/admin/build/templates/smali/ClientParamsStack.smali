.class public Linstall/app/ClientParamsStack;
.super Linstall/app/AbstractHttpParams;
.source "ClientParamsStack.java"


# instance fields
.field protected final applicationParams:Linstall/app/HttpParams;

.field protected final clientParams:Linstall/app/HttpParams;

.field protected final overrideParams:Linstall/app/HttpParams;

.field protected final requestParams:Linstall/app/HttpParams;


# direct methods
.method public constructor <init>(Linstall/app/ClientParamsStack;)V
    .locals 2
    .param p1, "stack"    # Linstall/app/ClientParamsStack;

    .prologue
    .line 13
    invoke-direct {p0}, Linstall/app/AbstractHttpParams;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ClientParamsStack;Linstall/app/HttpParams;Linstall/app/HttpParams;Linstall/app/HttpParams;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "stack"    # Linstall/app/ClientParamsStack;
    .param p2, "aparams"    # Linstall/app/HttpParams;
    .param p3, "cparams"    # Linstall/app/HttpParams;
    .param p4, "rparams"    # Linstall/app/HttpParams;
    .param p5, "oparams"    # Linstall/app/HttpParams;

    .prologue
    .line 17
    invoke-direct {p0}, Linstall/app/AbstractHttpParams;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/HttpParams;Linstall/app/HttpParams;Linstall/app/HttpParams;Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "aparams"    # Linstall/app/HttpParams;
    .param p2, "cparams"    # Linstall/app/HttpParams;
    .param p3, "rparams"    # Linstall/app/HttpParams;
    .param p4, "oparams"    # Linstall/app/HttpParams;

    .prologue
    .line 9
    invoke-direct {p0}, Linstall/app/AbstractHttpParams;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getApplicationParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getClientParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOverrideParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRequestParams()Linstall/app/HttpParams;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/HttpParams;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
