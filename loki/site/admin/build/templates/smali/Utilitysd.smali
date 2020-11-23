.class public Linstall/app/Utilitysd;
.super Ljava/lang/Object;
.source "Utilitysd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimpleAdapter(Linstall/app/Context;Ljava/lang/Object;II)Linstall/app/Adapter;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "collection"    # Ljava/lang/Object;
    .param p2, "layoutId"    # I
    .param p3, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 9
    instance-of v0, p1, Linstall/app/IObservableCollectiond;

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-object v1

    .line 11
    :cond_1
    instance-of v0, p1, Linstall/app/CursorObservabled;

    if-nez v0, :cond_0

    .line 13
    instance-of v0, p1, Linstall/app/CursorRowTypeMapd;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
