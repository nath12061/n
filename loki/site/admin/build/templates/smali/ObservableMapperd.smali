.class public Linstall/app/ObservableMapperd;
.super Ljava/lang/Object;
.source "ObservableMapperd.java"

# interfaces
.implements Linstall/app/IPropertyContainerd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/ObservableMapperd$MockObservable;,
        Linstall/app/ObservableMapperd$MockCommand;
    }
.end annotation


# instance fields
.field public commandMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/ObservableMapperd$MockCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Ljava/lang/Object;

.field private mReflector:Linstall/app/IModelReflectord;

.field public mappedPosition:I

.field private mappingModel:Ljava/lang/Object;

.field public observableMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/ObservableMapperd$MockObservable;",
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
            "Linstall/app/Observabled;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

    .line 9
    iput-object v1, p0, Linstall/app/ObservableMapperd;->mModel:Ljava/lang/Object;

    .line 10
    iput-object v1, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linstall/app/ObservableMapperd;->valueMapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public changeMapping(Linstall/app/IModelReflectord;Ljava/lang/Object;)V
    .locals 7
    .param p1, "reflector"    # Linstall/app/IModelReflectord;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 82
    iput-object p2, p0, Linstall/app/ObservableMapperd;->mappingModel:Ljava/lang/Object;

    .line 84
    :try_start_0
    iget-object v4, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

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

    .line 85
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/ObservableMapperd$MockObservable;

    invoke-interface {p1, v1, p2}, Linstall/app/IModelReflectord;->getObservableByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/ObservableMapperd$MockObservable;->changeObservingProperty(Linstall/app/IObservabled;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-object v4, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

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

    .line 88
    .local v2, "key2":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/ObservableMapperd$MockCommand;

    invoke-interface {p1, v2, p2}, Linstall/app/IModelReflectord;->getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/ObservableMapperd$MockCommand;->changeCommand(Linstall/app/Commandd;)V

    goto :goto_1

    .line 90
    .end local v2    # "key2":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Linstall/app/ObservableMapperd;->valueMapping:Ljava/util/HashMap;

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

    .line 91
    .local v3, "key22":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/ObservableMapperd;->valueMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linstall/app/Observabled;

    invoke-interface {p1, v3, p2}, Linstall/app/IModelReflectord;->getValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/Observabled;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public endCreateMapping()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    .line 105
    return-void
.end method

.method public getCommandByName(Ljava/lang/String;)Linstall/app/Commandd;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Linstall/app/ObservableMapperd$MockCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/ObservableMapperd$MockCommand;-><init>(Linstall/app/ObservableMapperd;Linstall/app/ObservableMapperd$1;)V

    .line 110
    .local v0, "mCommand":Linstall/app/ObservableMapperd$MockCommand;
    iget-object v1, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    iget-object v2, p0, Linstall/app/ObservableMapperd;->mModel:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Linstall/app/IModelReflectord;->getCommandByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v0    # "mCommand":Linstall/app/ObservableMapperd$MockCommand;
    :cond_0
    iget-object v1, p0, Linstall/app/ObservableMapperd;->commandMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/Commandd;

    return-object v1
.end method

.method public getCurrentMapping()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Linstall/app/ObservableMapperd;->mappingModel:Ljava/lang/Object;

    return-object v0
.end method

.method public getObservableByName(Ljava/lang/String;)Linstall/app/IObservabled;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

    new-instance v1, Linstall/app/ObservableMapperd$MockObservable;

    iget-object v2, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    iget-object v3, p0, Linstall/app/ObservableMapperd;->mModel:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Linstall/app/IModelReflectord;->getObservableByName(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v2

    invoke-interface {v2}, Linstall/app/IObservabled;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Linstall/app/ObservableMapperd$MockObservable;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v0, p0, Linstall/app/ObservableMapperd;->observableMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/IObservabled;

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
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public startCreateMapping(Linstall/app/IModelReflectord;Ljava/lang/Object;)V
    .locals 0
    .param p1, "reflector"    # Linstall/app/IModelReflectord;
    .param p2, "model"    # Ljava/lang/Object;

    .prologue
    .line 99
    iput-object p1, p0, Linstall/app/ObservableMapperd;->mReflector:Linstall/app/IModelReflectord;

    .line 100
    iput-object p2, p0, Linstall/app/ObservableMapperd;->mModel:Ljava/lang/Object;

    .line 101
    return-void
.end method
