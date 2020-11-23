.class public abstract Linstall/app/BasicModelReflectord;
.super Ljava/lang/Object;
.source "BasicModelReflectord.java"

# interfaces
.implements Linstall/app/IModelReflectord;


# instance fields
.field private mContext:Linstall/app/Context;


# direct methods
.method public constructor <init>(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Linstall/app/BasicModelReflectord;->mContext:Linstall/app/Context;

    .line 8
    return-void
.end method


# virtual methods
.method public getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {p1, p2}, Linstall/app/Utilityd;->getCommandForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;

    move-result-object v0

    return-object v0
.end method

.method public getValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueTypeByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
