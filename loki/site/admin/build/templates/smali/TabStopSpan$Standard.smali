.class public Linstall/app/TabStopSpan$Standard;
.super Ljava/lang/Object;
.source "TabStopSpan.java"

# interfaces
.implements Linstall/app/TabStopSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TabStopSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "where"    # I

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
.method public getTabStop()I
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
