.class public abstract Linstall/app/STITCH;
.super Linstall/app/Converter;
.source "STITCH.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Converter",
        "<",
        "Landroid/widget/Adapter;",
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
    .line 7
    .local p1, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    const-class v0, Landroid/widget/Adapter;

    invoke-direct {p0, v0, p1}, Linstall/app/Converter;-><init>(Ljava/lang/Class;[Linstall/app/IObservable;)V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs calculateValue([Ljava/lang/Object;)Landroid/widget/Adapter;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Linstall/app/CombinedAdapter;

    invoke-direct {v0}, Linstall/app/CombinedAdapter;-><init>()V

    .line 12
    .local v0, "combine":Linstall/app/CombinedAdapter;
    array-length v2, p1

    .line 13
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 14
    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/widget/Adapter;

    if-eqz v3, :cond_0

    .line 15
    aget-object v3, p1, v1

    check-cast v3, Landroid/widget/Adapter;

    invoke-virtual {v0, v3}, Linstall/app/CombinedAdapter;->addAdapter(Landroid/widget/Adapter;)V

    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    return-object v0
.end method

.method public bridge synthetic calculateValue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/STITCH;->calculateValue([Ljava/lang/Object;)Landroid/widget/Adapter;

    move-result-object v0

    return-object v0
.end method
