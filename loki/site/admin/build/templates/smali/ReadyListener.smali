.class public abstract Linstall/app/ReadyListener;
.super Ljava/lang/Object;
.source "ReadyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ReadyListener$C00061;
    }
.end annotation


# static fields
.field private static final READY:I = 0x1


# instance fields
.field private delegate:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Linstall/app/ReadyListener$C00061;

    invoke-direct {v0, p0}, Linstall/app/ReadyListener$C00061;-><init>(Linstall/app/ReadyListener;)V

    iput-object v0, p0, Linstall/app/ReadyListener;->delegate:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final notifyReady()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Linstall/app/ReadyListener;->delegate:Landroid/os/Handler;

    iget-object v1, p0, Linstall/app/ReadyListener;->delegate:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method public abstract ready()V
.end method
