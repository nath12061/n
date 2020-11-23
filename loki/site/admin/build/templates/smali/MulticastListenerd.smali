.class public abstract Linstall/app/MulticastListenerd;
.super Ljava/lang/Object;
.source "MulticastListenerd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MulticastListenerd$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/ViewAttributed",
            "<**>;>;"
        }
    .end annotation
.end field

.field protected commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/Commandd;",
            ">;"
        }
    .end annotation
.end field

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mBroadcasting:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    const/4 v2, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListenerd;->attributes:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListenerd;->commands:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListenerd;->listeners:Ljava/util/ArrayList;

    .line 12
    iput-boolean v2, p0, Linstall/app/MulticastListenerd;->mBroadcasting:Z

    return-void
.end method


# virtual methods
.method protected clearBroadcastState()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/MulticastListenerd;->mBroadcasting:Z

    .line 65
    return-void
.end method

.method public varargs invokeCommands(Linstall/app/View;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    iget-object v1, p0, Linstall/app/MulticastListenerd;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Commandd;

    invoke-interface {v1, p1, p2}, Linstall/app/Commandd;->Invoke(Linstall/app/View;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method protected isFromUser()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    iget-boolean v0, p0, Linstall/app/MulticastListenerd;->mBroadcasting:Z

    return v0
.end method

.method public nextActionIsNotFromUser()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/MulticastListenerd;->mBroadcasting:Z

    .line 57
    return-void
.end method

.method public register(Linstall/app/Commandd;)V
    .locals 1
    .param p1, "command"    # Linstall/app/Commandd;

    .prologue
    .line 48
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    iget-object v0, p0, Linstall/app/MulticastListenerd;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Linstall/app/MulticastListenerd;, "Linstall/app/MulticastListenerd<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Linstall/app/MulticastListenerd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public abstract registerToView(Linstall/app/View;)V
.end method
