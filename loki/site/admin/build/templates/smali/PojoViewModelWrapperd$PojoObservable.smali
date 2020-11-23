.class Linstall/app/PojoViewModelWrapperd$PojoObservable;
.super Linstall/app/Observabled;
.source "PojoViewModelWrapperd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PojoViewModelWrapperd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PojoObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<To:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observabled",
        "<TTo;>;"
    }
.end annotation


# instance fields
.field private ignoreNext:Z

.field private final mGetter:Ljava/lang/reflect/Method;

.field private final mSetter:Ljava/lang/reflect/Method;

.field final synthetic this$0:Linstall/app/PojoViewModelWrapperd;


# direct methods
.method public constructor <init>(Linstall/app/PojoViewModelWrapperd;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p3, "getter"    # Ljava/lang/reflect/Method;
    .param p4, "setter"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTo;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoObservable;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoObservable<TTo;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTo;>;"
    iput-object p1, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->this$0:Linstall/app/PojoViewModelWrapperd;

    .line 34
    invoke-direct {p0, p2}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->ignoreNext:Z

    .line 35
    iput-object p3, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->mGetter:Ljava/lang/reflect/Method;

    .line 36
    iput-object p4, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method


# virtual methods
.method protected doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;",
            "Ljava/util/AbstractCollection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoObservable;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoObservable<TTo;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TTo;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Linstall/app/Observabled;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 48
    iget-object v1, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->ignoreNext:Z

    .line 51
    iget-object v1, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->this$0:Linstall/app/PojoViewModelWrapperd;

    # getter for: Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;
    invoke-static {v2}, Linstall/app/PojoViewModelWrapperd;->access$000(Linstall/app/PojoViewModelWrapperd;)Linstall/app/PojoViewModeld;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PojoViewModelWrapperd.PojoObservable.doSetValue"

    invoke-static {v1, v0}, Linstall/app/BindingLogd;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoObservable;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoObservable<TTo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPropertyChanged()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoObservable;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoObservable<TTo;>;"
    iget-boolean v0, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->ignoreNext:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Linstall/app/PojoViewModelWrapperd$PojoObservable;->notifyChanged()V

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/PojoViewModelWrapperd$PojoObservable;->ignoreNext:Z

    .line 44
    return-void
.end method
