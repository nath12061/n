.class public abstract Linstall/app/SECTION;
.super Linstall/app/Converter;
.source "SECTION.java"


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
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 11
    new-instance v1, Linstall/app/SingletonAdapter;

    invoke-virtual {p0}, Linstall/app/SECTION;->getContext()Landroid/content/Context;

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

    invoke-direct {v1, v2, v3, v4, v0}, Linstall/app/SingletonAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;II)V

    return-object v1
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
    invoke-virtual {p0, p1}, Linstall/app/SECTION;->calculateValue([Ljava/lang/Object;)Landroid/widget/Adapter;

    move-result-object v0

    return-object v0
.end method
