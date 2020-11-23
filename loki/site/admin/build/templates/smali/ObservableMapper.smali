.class public Linstall/app/ObservableMapper;
.super Ljava/lang/Object;
.source "ObservableMapper.java"

# interfaces
.implements Linstall/app/IPropertyContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ObservableMapper$MockObservable;,
        Linstall/app/ObservableMapper$MockCommand;
    }
.end annotation


# instance fields
.field public commandMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/ObservableMapper$MockCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Ljava/lang/Object;

.field private mReflector:Linstall/app/IModelReflector;

.field public mappedPosition:I

.field private mappingModel:Ljava/lang/Object;

.field public observableMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/ObservableMapper$MockObservable;",
            ">;"
        }
    .end annotation
.end field

.field public valueMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    .line 11
    iput-object v1, p0, Linstall/app/ObservableMapper;->mModel:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapper;->observableMapping:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapper;->valueMapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public changeMapping(Linstall/app/IModelReflector;Ljava/lang/Object;)V
    .locals 7
    .param p1, "reflector"    # Linstall/app/IModelReflector;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 80
    iput-object p2, p0, Linstall/app/ObservableMapper;->mappingModel:Ljava/lang/Object;

    .line 82
    :try_start_0
    iget-object v4, p0, Linstall/app/ObservableMapper;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapper;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/ObservableMapper$MockObservable;

    invoke-interface {p1, v1, p2}, Linstall/app/IModelReflector;->getObservableByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/ObservableMapper$MockObservable;->changeObservingProperty(Linstall/app/IObservable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 85
    :cond_1
    :try_start_1
    iget-object v4, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "key2":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/ObservableMapper$MockCommand;

    invoke-interface {p1, v2, p2}, Linstall/app/IModelReflector;->getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Command;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/ObservableMapper$MockCommand;->changeCommand(Linstall/app/Command;)V

    goto :goto_1

    .line 88
    .end local v2    # "key2":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Linstall/app/ObservableMapper;->valueMapping:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "key22":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapper;->valueMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/Observable;

    invoke-interface {p1, v3, p2}, Linstall/app/IModelReflector;->getValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/Observable;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public endCreateMapping()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    .line 103
    return-void
.end method

.method public getCommandByName(Ljava/lang/String;)Linstall/app/Command;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Linstall/app/ObservableMapper$MockCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/ObservableMapper$MockCommand;-><init>(Linstall/app/ObservableMapper;Linstall/app/ObservableMapper$1;)V

    .line 108
    .local v0, "mCommand":Linstall/app/ObservableMapper$MockCommand;
    iget-object v1, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    iget-object v2, p0, Linstall/app/ObservableMapper;->mModel:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Linstall/app/IModelReflector;->getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Command;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v0    # "mCommand":Linstall/app/ObservableMapper$MockCommand;
    :cond_0
    iget-object v1, p0, Linstall/app/ObservableMapper;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Command;

    return-object v1
.end method

.method public getCurrentMapping()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Linstall/app/ObservableMapper;->mappingModel:Ljava/lang/Object;

    return-object v0
.end method

.method public getObservableByName(Ljava/lang/String;)Linstall/app/IObservable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Linstall/app/ObservableMapper;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    if-eqz v0, :cond_0

    .line 118
    :cond_0
    iget-object v0, p0, Linstall/app/ObservableMapper;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/IObservable;

    return-object v0
.end method

.method public getValueByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public startCreateMapping(Linstall/app/IModelReflector;Ljava/lang/Object;)V
    .locals 0
    .param p1, "reflector"    # Linstall/app/IModelReflector;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 97
    iput-object p1, p0, Linstall/app/ObservableMapper;->mReflector:Linstall/app/IModelReflector;

    .line 98
    iput-object p2, p0, Linstall/app/ObservableMapper;->mModel:Ljava/lang/Object;

    .line 99
    return-void
.end method
