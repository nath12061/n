.class public final Linstall/app/AsyncQueryHandler$WorkerArgs;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public handler:Linstall/app/Handler;

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public result:Ljava/lang/Object;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public uri:Linstall/app/Uri;

.field public values:Linstall/app/ContentValues;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Linstall/app/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 12
    iput-object v0, p0, Linstall/app/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
