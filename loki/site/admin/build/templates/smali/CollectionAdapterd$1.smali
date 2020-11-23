.class Linstall/app/CollectionAdapterd$1;
.super Linstall/app/BasicModelReflectord;
.source "CollectionAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/CollectionAdapterd;-><init>(Linstall/app/Context;Linstall/app/IObservableCollectiond;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Linstall/app/BasicModelReflectord;-><init>(Linstall/app/Context;)V

    return-void
.end method


# virtual methods
.method public getObservableByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
