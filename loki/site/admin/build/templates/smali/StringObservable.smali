.class public abstract Linstall/app/StringObservable;
.super Linstall/app/Observable;
.source "StringObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public _setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p2, "abstractCollection":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linstall/app/StringObservable;->set(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method
