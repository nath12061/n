.class public Linstall/app/STITCHd;
.super Linstall/app/Converterd;
.source "STITCHd.java"


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
    .line 9
    .local p1, "dependents":[Linstall/app/IObservabled;, "[Linstall/app/IObservabled<*>;"
    const-class v0, Linstall/app/Adapter;

    invoke-direct {p0, v0, p1}, Linstall/app/Converterd;-><init>(Ljava/lang/Class;[Linstall/app/IObservabled;)V

    .line 10
    return-void
.end method


# virtual methods
.method public varargs calculateValue([Ljava/lang/Object;)Linstall/app/Adapter;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Linstall/app/STITCHd$1;

    invoke-direct {v0, p0}, Linstall/app/STITCHd$1;-><init>(Linstall/app/STITCHd;)V

    .line 19
    .local v0, "combine":Linstall/app/CombinedAdapterd;
    array-length v2, p1

    .line 20
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 21
    aget-object v3, p1, v1

    instance-of v3, v3, Linstall/app/Adapter;

    if-eqz v3, :cond_0

    .line 22
    aget-object v3, p1, v1

    check-cast v3, Linstall/app/Adapter;

    invoke-virtual {v0, v3}, Linstall/app/CombinedAdapterd;->addAdapter(Linstall/app/Adapter;)V

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    return-object v0
.end method
