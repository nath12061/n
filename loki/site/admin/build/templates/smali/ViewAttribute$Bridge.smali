.class Linstall/app/ViewAttribute$Bridge;
.super Ljava/lang/Object;
.source "ViewAttribute.java"

# interfaces
.implements Linstall/app/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ViewAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bridge"
.end annotation


# instance fields
.field mAttribute:Linstall/app/ViewAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/ViewAttribute",
            "<TTv;TT;>;"
        }
    .end annotation
.end field

.field mBindedObservable:Linstall/app/IObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linstall/app/ViewAttribute;


# direct methods
.method public constructor <init>(Linstall/app/ViewAttribute;Linstall/app/ViewAttribute;Linstall/app/IObservable;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ViewAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ViewAttribute",
            "<TTv;TT;>;",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Linstall/app/ViewAttribute$Bridge;, "Linstall/app/ViewAttribute<TTv;TT;>.Bridge;"
    .local p2, "attribute":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<TTv;TT;>;"
    .local p3, "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    iput-object p1, p0, Linstall/app/ViewAttribute$Bridge;->this$0:Linstall/app/ViewAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Linstall/app/ViewAttribute$Bridge;->mAttribute:Linstall/app/ViewAttribute;

    .line 30
    iput-object p3, p0, Linstall/app/ViewAttribute$Bridge;->mBindedObservable:Linstall/app/IObservable;

    .line 31
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Linstall/app/IObservable;Ljava/util/AbstractCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<*>;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Linstall/app/ViewAttribute$Bridge;, "Linstall/app/ViewAttribute<TTv;TT;>.Bridge;"
    .local p1, "prop":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    iget-object v0, p0, Linstall/app/ViewAttribute$Bridge;->mAttribute:Linstall/app/ViewAttribute;

    if-ne p1, v0, :cond_1

    .line 35
    iget-object v0, p0, Linstall/app/ViewAttribute$Bridge;->mBindedObservable:Linstall/app/IObservable;

    invoke-interface {p1}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Linstall/app/IObservable;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Linstall/app/ViewAttribute$Bridge;->mBindedObservable:Linstall/app/IObservable;

    if-ne p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Linstall/app/ViewAttribute$Bridge;->mAttribute:Linstall/app/ViewAttribute;

    invoke-interface {p1}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Linstall/app/ViewAttribute;->_setObject(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    goto :goto_0
.end method
