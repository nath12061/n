.class public Linstall/app/PojoViewModelWrapper;
.super Ljava/lang/Object;
.source "PojoViewModelWrapper.java"

# interfaces
.implements Linstall/app/IPropertyContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/PojoViewModelWrapper$PojoObservable;,
        Linstall/app/PojoViewModelWrapper$PojoCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linstall/app/PojoViewModel;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/IPropertyContainer;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Linstall/app/PojoViewModelWrapper",
            "<TT;>.PojoCommand;>;"
        }
    .end annotation
.end field

.field private final mViewModel:Linstall/app/PojoViewModel;
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
            "Linstall/app/PojoViewModelWrapper",
            "<TT;>.PojoObservable<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Linstall/app/PojoViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    .local p1, "viewModel":Linstall/app/PojoViewModel;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/PojoViewModelWrapper;->commands:Ljava/util/Hashtable;

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/PojoViewModelWrapper;->observables:Ljava/util/Hashtable;

    .line 70
    iput-object p1, p0, Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;

    .line 71
    invoke-direct {p0}, Linstall/app/PojoViewModelWrapper;->attachToViewModel()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Linstall/app/PojoViewModelWrapper;)Linstall/app/PojoViewModel;
    .locals 1
    .param p0, "x0"    # Linstall/app/PojoViewModelWrapper;

    .prologue
    .line 9
    iget-object v0, p0, Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;

    return-object v0
.end method

.method private attachToViewModel()V
    .locals 15

    .prologue
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    const/4 v14, 0x3

    const/4 v6, 0x0

    .line 75
    iget-object v7, p0, Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;

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
    iget-object v9, p0, Linstall/app/PojoViewModelWrapper;->commands:Ljava/util/Hashtable;

    new-instance v10, Linstall/app/PojoViewModelWrapper$PojoCommand;

    invoke-direct {v10, p0, v2}, Linstall/app/PojoViewModelWrapper$PojoCommand;-><init>(Linstall/app/PojoViewModelWrapper;Ljava/lang/reflect/Method;)V

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

    invoke-static {v6, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

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
    iget-object v9, p0, Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;

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

.method public static create(Linstall/app/PojoViewModel;)Linstall/app/PojoViewModelWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv::",
            "Linstall/app/PojoViewModel;",
            ">(TTv;)",
            "Linstall/app/PojoViewModelWrapper",
            "<TTv;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "viewModel":Linstall/app/PojoViewModel;, "TTv;"
    new-instance v0, Linstall/app/PojoViewModelWrapper;

    invoke-direct {v0, p0}, Linstall/app/PojoViewModelWrapper;-><init>(Linstall/app/PojoViewModel;)V

    .line 110
    .local v0, "wrapper":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TTv;>;"
    invoke-interface {p0}, Linstall/app/PojoViewModel;->getHelper()Linstall/app/PojoViewModelHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Linstall/app/PojoViewModelHelper;->registerWrapper(Linstall/app/PojoViewModelWrapper;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public getCommandByName(Ljava/lang/String;)Linstall/app/Command;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapper;->commands:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Command;

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
    .line 115
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapper;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 123
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPropertyChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<TT;>;"
    iget-object v0, p0, Linstall/app/PojoViewModelWrapper;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Linstall/app/PojoViewModelWrapper;->observables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/PojoViewModelWrapper$PojoObservable;

    invoke-virtual {v0}, Linstall/app/PojoViewModelWrapper$PojoObservable;->onPropertyChanged()V

    .line 106
    :cond_0
    return-void
.end method
