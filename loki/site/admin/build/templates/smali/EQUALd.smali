.class public Linstall/app/EQUALd;
.super Linstall/app/Converterd;
.source "EQUALd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Converterd",
        "<",
        "Ljava/lang/Boolean;",
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
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Linstall/app/Converterd;-><init>(Ljava/lang/Class;[Linstall/app/IObservabled;)V

    .line 6
    return-void
.end method


# virtual methods
.method public varargs calculateValue([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 9
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 12
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v2

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
