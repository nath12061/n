.class public Linstall/app/PorterDuff;
.super Ljava/lang/Object;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PorterDuff$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
