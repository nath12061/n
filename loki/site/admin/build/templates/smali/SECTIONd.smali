.class public Linstall/app/SECTIONd;
.super Linstall/app/Converterd;
.source "SECTIONd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Converterd",
        "<",
        "Linstall/app/Adapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Linstall/app/IObservabled;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linstall/app/IObservabled",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5
    .local p1, "dependents":[Linstall/app/IObservabled;, "[Linstall/app/IObservabled<*>;"
    const-class v0, Linstall/app/Adapter;

    invoke-direct {p0, v0, p1}, Linstall/app/Converterd;-><init>(Ljava/lang/Class;[Linstall/app/IObservabled;)V

    .line 6
    return-void
.end method


# virtual methods
.method public varargs calculateValue([Ljava/lang/Object;)Linstall/app/Adapter;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 9
    new-instance v1, Linstall/app/SingletonAdapterd;

    invoke-virtual {p0}, Linstall/app/SECTIONd;->getContext()Linstall/app/Context;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v3, p1, v0

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Linstall/app/SingletonAdapterd;-><init>(Linstall/app/Context;Ljava/lang/Object;II)V

    return-object v1
.end method
