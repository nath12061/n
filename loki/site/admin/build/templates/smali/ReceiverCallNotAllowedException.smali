.class public Linstall/app/ReceiverCallNotAllowedException;
.super Linstall/app/AndroidRuntimeException;
.source "ReceiverCallNotAllowedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/AndroidRuntimeException;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
