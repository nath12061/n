.class public abstract Linstall/app/ArraySources;
.super Linstall/app/Observable;
.source "ArraySources.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ArraySources;, "Linstall/app/ArraySources<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public setArray([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Linstall/app/ArraySources;, "Linstall/app/ArraySources<TT;>;"
    .local p1, "value":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Linstall/app/ArraySources;->set(Ljava/lang/Object;)V

    .line 14
    return-void
.end method
