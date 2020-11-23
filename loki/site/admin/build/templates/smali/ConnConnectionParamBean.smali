.class public Linstall/app/ConnConnectionParamBean;
.super Linstall/app/HttpAbstractParamBean;
.source "ConnConnectionParamBean.java"


# direct methods
.method public constructor <init>(Linstall/app/HttpParams;)V
    .locals 2
    .param p1, "params"    # Linstall/app/HttpParams;

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Linstall/app/HttpParams;

    invoke-direct {p0, v0}, Linstall/app/HttpAbstractParamBean;-><init>(Linstall/app/HttpParams;)V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setMaxStatusLineGarbage(I)V
    .locals 2
    .param p1, "maxStatusLineGarbage"    # I

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
