.class public abstract Linstall/app/MulticastListener;
.super Ljava/lang/Object;
.source "MulticastListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MulticastListener$Factory;
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
            "Linstall/app/ViewAttribute",
            "<**>;>;"
        }
    .end annotation
.end field

.field protected commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/Command;",
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
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    const/4 v2, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListener;->attributes:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListener;->commands:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/MulticastListener;->listeners:Ljava/util/ArrayList;

    .line 14
    iput-boolean v2, p0, Linstall/app/MulticastListener;->mBroadcasting:Z

    return-void
.end method


# virtual methods
.method protected clearBroadcastState()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/MulticastListener;->mBroadcasting:Z

    .line 67
    return-void
.end method

.method public varargs invokeCommands(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    iget-object v1, p0, Linstall/app/MulticastListener;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Command;

    invoke-interface {v1, p1, p2}, Linstall/app/Command;->Invoke(Landroid/view/View;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method protected isFromUser()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    iget-boolean v0, p0, Linstall/app/MulticastListener;->mBroadcasting:Z

    return v0
.end method

.method public nextActionIsNotFromUser()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/MulticastListener;->mBroadcasting:Z

    .line 59
    return-void
.end method

.method public register(Linstall/app/Command;)V
    .locals 1
    .param p1, "command"    # Linstall/app/Command;

    .prologue
    .line 50
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    iget-object v0, p0, Linstall/app/MulticastListener;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
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
    .line 54
    .local p0, "this":Linstall/app/MulticastListener;, "Linstall/app/MulticastListener<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Linstall/app/MulticastListener;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public abstract registerToView(Landroid/view/View;)V
.end method
