.class public Linstall/app/BasicModelReflector;
.super Ljava/lang/Object;
.source "BasicModelReflector.java"

# interfaces
.implements Linstall/app/IModelReflector;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Linstall/app/BasicModelReflector;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Command;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObservableByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

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
    .line 21
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
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
