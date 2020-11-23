.class public abstract Linstall/app/MutableContextWrapper;
.super Linstall/app/ContextWrapper;
.source "MutableContextWrapper.java"


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 2
    .param p1, "base"    # Linstall/app/Context;

    .prologue
    .line 6
    const/4 v0, 0x0

    check-cast v0, Linstall/app/Context;

    invoke-direct {p0, v0}, Linstall/app/ContextWrapper;-><init>(Linstall/app/Context;)V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setBaseContext(Linstall/app/Context;)V
    .locals 2
    .param p1, "base"    # Linstall/app/Context;

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
