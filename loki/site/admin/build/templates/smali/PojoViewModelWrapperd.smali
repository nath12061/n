.class public Linstall/app/PojoViewModelWrapperd;
.super Ljava/lang/Object;
.source "PojoViewModelWrapperd.java"

# interfaces
.implements Linstall/app/IPropertyContainerd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PojoViewModelWrapperd$PojoObservable;,
        Linstall/app/PojoViewModelWrapperd$PojoCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linstall/app/PojoViewModeld;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IPropertyContainerd;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/PojoViewModelWrapperd",
            "<TT;>.PojoCommand;>;"
        }
    .end annotation
.end field

.field private final mViewModel:Linstall/app/PojoViewModeld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/PojoViewModelWrapperd",
            "<TT;>.PojoObservable<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Linstall/app/PojoViewModeld;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    .local p1, "viewModel":Linstall/app/PojoViewModeld;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/PojoViewModelWrapperd;->commands:Ljava/util/Hashtable;

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/PojoViewModelWrapperd;->observables:Ljava/util/Hashtable;

    .line 70
    iput-object p1, p0, Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;

    .line 71
    invoke-direct {p0}, Linstall/app/PojoViewModelWrapperd;->attachToViewModel()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Linstall/app/PojoViewModelWrapperd;)Linstall/app/PojoViewModeld;
    .locals 1
    .param p0, "x0"    # Linstall/app/PojoViewModelWrapperd;

    .prologue
    .line 7
    iget-object v0, p0, Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;

    return-object v0
.end method

.method private attachToViewModel()V
    .locals 15

    .prologue
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    const/4 v14, 0x3

    const/4 v6, 0x0

    .line 75
    iget-object v7, p0, Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v7, v6

    .line 76
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "methodName":Ljava/lang/String;
    const-string v9, "get"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v14, :cond_1

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-gtz v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_1

    .line 80
    iget-object v9, p0, Linstall/app/PojoViewModelWrapperd;->commands:Ljava/util/Hashtable;

    new-instance v10, Linstall/app/PojoViewModelWrapperd$PojoCommand;

    invoke-direct {v10, p0, v2}, Linstall/app/PojoViewModelWrapperd$PojoCommand;-><init>(Linstall/app/PojoViewModelWrapperd;Ljava/lang/reflect/Method;)V

    invoke-virtual {v9, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "propertyName":Ljava/lang/String;
    const-string v9, "Class"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 75
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "propertyName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "PojoViewModelWrapperd.attachToViewModel"

    invoke-static {v6, v0}, Linstall/app/BindingLogd;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_2
    return-void

    .line 93
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v4    # "propertyName":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v9, p0, Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .local v5, "setter":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 94
    .end local v5    # "setter":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e2":Ljava/lang/NoSuchMethodException;
    goto :goto_1
.end method

.method public static create(Linstall/app/PojoViewModeld;)Linstall/app/PojoViewModelWrapperd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv::",
            "Linstall/app/PojoViewModeld;",
            ">(TTv;)",
            "Linstall/app/PojoViewModelWrapperd",
            "<TTv;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "viewModel":Linstall/app/PojoViewModeld;, "TTv;"
    new-instance v0, Linstall/app/PojoViewModelWrapperd;

    invoke-direct {v0, p0}, Linstall/app/PojoViewModelWrapperd;-><init>(Linstall/app/PojoViewModeld;)V

    .line 110
    .local v0, "wrapper":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TTv;>;"
    invoke-interface {p0}, Linstall/app/PojoViewModeld;->getHelper()Linstall/app/PojoViewModelHelperd;

    move-result-object v1

    invoke-virtual {v1, v0}, Linstall/app/PojoViewModelHelperd;->registerWrapper(Linstall/app/PojoViewModelWrapperd;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public getCommandByName(Ljava/lang/String;)Linstall/app/Commandd;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapperd;->commands:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Commandd;

    return-object v0
.end method

.method public getObservableByName(Ljava/lang/String;)Linstall/app/IObservabled;
    .locals 1
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
    .line 115
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapperd;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 123
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPropertyChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapperd;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Linstall/app/PojoViewModelWrapperd;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/PojoViewModelWrapperd$PojoObservable;

    invoke-virtual {v0}, Linstall/app/PojoViewModelWrapperd$PojoObservable;->onPropertyChanged()V

    .line 106
    :cond_0
    return-void
.end method
