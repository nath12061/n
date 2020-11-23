.class public abstract Linstall/app/NOT;
.super Linstall/app/Converter;
.source "NOT.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Converter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Linstall/app/IObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5
    .local p1, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Linstall/app/Converter;-><init>(Ljava/lang/Class;[Linstall/app/IObservable;)V

    .line 6
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

    .line 9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 13
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 12
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

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "z":Z
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 21
    :cond_0
    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 22
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

    .line 23
    :cond_2
    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 24
    aget-object v1, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 28
    :cond_4
    aget-object v1, p1, v3

    if-eqz v1, :cond_5

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic calculateValue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/NOT;->calculateValue([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
