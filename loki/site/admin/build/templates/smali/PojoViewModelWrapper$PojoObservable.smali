.class abstract Linstall/app/PojoViewModelWrapper$PojoObservable;
.super Linstall/app/Observable;
.source "PojoViewModelWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PojoViewModelWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PojoObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<To:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<TTo;>;"
    }
.end annotation


# instance fields
.field private ignoreNext:Z

.field private final mGetter:Ljava/lang/reflect/Method;

.field private final mSetter:Ljava/lang/reflect/Method;

.field final synthetic this$0:Linstall/app/PojoViewModelWrapper;


# direct methods
.method public constructor <init>(Linstall/app/PojoViewModelWrapper;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
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
    .line 35
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoObservable;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoObservable<TTo;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTo;>;"
    iput-object p1, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->this$0:Linstall/app/PojoViewModelWrapper;

    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->ignoreNext:Z

    .line 36
    iput-object p3, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->mGetter:Ljava/lang/reflect/Method;

    .line 37
    iput-object p4, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    .line 38
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
    .line 48
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoObservable;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoObservable<TTo;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TTo;"
    .local p2, "initiators":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Linstall/app/Observable;->doSetValue(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 49
    iget-object v1, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->ignoreNext:Z

    .line 52
    iget-object v1, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->this$0:Linstall/app/PojoViewModelWrapper;

    # getter for: Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;
    invoke-static {v2}, Linstall/app/PojoViewModelWrapper;->access$000(Linstall/app/PojoViewModelWrapper;)Linstall/app/PojoViewModel;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PojoViewModelWrapperd.PojoObservable.doSetValue"

    invoke-static {v1, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoObservable;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoObservable<TTo;>;"
    :try_start_0
    iget-object v1, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->mGetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->this$0:Linstall/app/PojoViewModelWrapper;

    # getter for: Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;
    invoke-static {v2}, Linstall/app/PojoViewModelWrapper;->access$000(Linstall/app/PojoViewModelWrapper;)Linstall/app/PojoViewModel;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PojoViewModelWrapperd.PojoObservable.get"

    invoke-static {v1, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPropertyChanged()V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoObservable;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoObservable<TTo;>;"
    iget-boolean v0, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->ignoreNext:Z

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Linstall/app/PojoViewModelWrapper$PojoObservable;->notifyChanged()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/PojoViewModelWrapper$PojoObservable;->ignoreNext:Z

    .line 45
    return-void
.end method
