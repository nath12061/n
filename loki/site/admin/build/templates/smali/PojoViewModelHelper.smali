.class public Linstall/app/PojoViewModelHelper;
.super Ljava/lang/Object;
.source "PojoViewModelHelper.java"


# instance fields
.field mWrapper:Linstall/app/PojoViewModelWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/PojoViewModelWrapper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getWrapper()Linstall/app/PojoViewModelWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/PojoViewModelWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Linstall/app/PojoViewModelHelper;->mWrapper:Linstall/app/PojoViewModelWrapper;

    return-object v0
.end method

.method public notifyPropertyChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Linstall/app/PojoViewModelHelper;->mWrapper:Linstall/app/PojoViewModelWrapper;

    invoke-virtual {v0, p1}, Linstall/app/PojoViewModelWrapper;->onPropertyChanged(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method registerWrapper(Linstall/app/PojoViewModelWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/PojoViewModelWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "wrapper":Linstall/app/PojoViewModelWrapper;, "Linstall/app/PojoViewModelWrapper<*>;"
    iput-object p1, p0, Linstall/app/PojoViewModelHelper;->mWrapper:Linstall/app/PojoViewModelWrapper;

    .line 8
    return-void
.end method

.method unregisterWrapper()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/PojoViewModelHelper;->mWrapper:Linstall/app/PojoViewModelWrapper;

    .line 12
    return-void
.end method
