.class public Linstall/app/NOTd;
.super Linstall/app/Converterd;
.source "NOTd.java"


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
    .line 8
    .local p1, "dependents":[Linstall/app/IObservabled;, "[Linstall/app/IObservabled<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Linstall/app/Converterd;-><init>(Ljava/lang/Class;[Linstall/app/IObservabled;)V

    .line 9
    return-void
.end method


# virtual methods
.method public ConvertBack(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "outResult"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 16
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 15
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public varargs calculateValue([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "z":Z
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 24
    :cond_0
    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 25
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 26
    :cond_2
    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 27
    aget-object v1, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    const/4 v0, 0x1

    .line 30
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_4
    aget-object v1, p1, v3

    if-eqz v1, :cond_5

    .line 32
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method
