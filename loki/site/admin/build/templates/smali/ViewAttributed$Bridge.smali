.class Linstall/app/ViewAttributed$Bridge;
.super Ljava/lang/Object;
.source "ViewAttributed.java"

# interfaces
.implements Linstall/app/Observerd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewAttributed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bridge"
.end annotation


# instance fields
.field mAttribute:Linstall/app/ViewAttributed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/ViewAttributed",
            "<TTv;TT;>;"
        }
    .end annotation
.end field

.field mBindedObservable:Linstall/app/IObservabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linstall/app/ViewAttributed;


# direct methods
.method public constructor <init>(Linstall/app/ViewAttributed;Linstall/app/ViewAttributed;Linstall/app/IObservabled;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ViewAttributed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ViewAttributed",
            "<TTv;TT;>;",
            "Linstall/app/IObservabled",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Linstall/app/ViewAttributed$Bridge;, "Linstall/app/ViewAttributed<TTv;TT;>.Bridge;"
    .local p2, "attribute":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<TTv;TT;>;"
    .local p3, "observable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    iput-object p1, p0, Linstall/app/ViewAttributed$Bridge;->this$0:Linstall/app/ViewAttributed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Linstall/app/ViewAttributed$Bridge;->mAttribute:Linstall/app/ViewAttributed;

    .line 18
    iput-object p3, p0, Linstall/app/ViewAttributed$Bridge;->mBindedObservable:Linstall/app/IObservabled;

    .line 19
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Linstall/app/IObservabled;Ljava/util/AbstractCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Linstall/app/ViewAttributed$Bridge;, "Linstall/app/ViewAttributed<TTv;TT;>.Bridge;"
    .local p1, "prop":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ViewAttributed$Bridge;->mAttribute:Linstall/app/ViewAttributed;

    if-ne p1, v0, :cond_1

    .line 23
    iget-object v0, p0, Linstall/app/ViewAttributed$Bridge;->mBindedObservable:Linstall/app/IObservabled;

    invoke-interface {p1}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Linstall/app/IObservabled;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Linstall/app/ViewAttributed$Bridge;->mBindedObservable:Linstall/app/IObservabled;

    if-ne p1, v0, :cond_0

    .line 25
    iget-object v0, p0, Linstall/app/ViewAttributed$Bridge;->mAttribute:Linstall/app/ViewAttributed;

    invoke-interface {p1}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Linstall/app/ViewAttributed;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    goto :goto_0
.end method
