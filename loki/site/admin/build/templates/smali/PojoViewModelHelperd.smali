.class public Linstall/app/PojoViewModelHelperd;
.super Ljava/lang/Object;
.source "PojoViewModelHelperd.java"


# instance fields
.field mWrapper:Linstall/app/PojoViewModelWrapperd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/PojoViewModelWrapperd",
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
.method getWrapper()Linstall/app/PojoViewModelWrapperd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/PojoViewModelWrapperd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Linstall/app/PojoViewModelHelperd;->mWrapper:Linstall/app/PojoViewModelWrapperd;

    return-object v0
.end method

.method public notifyPropertyChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Linstall/app/PojoViewModelHelperd;->mWrapper:Linstall/app/PojoViewModelWrapperd;

    invoke-virtual {v0, p1}, Linstall/app/PojoViewModelWrapperd;->onPropertyChanged(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method registerWrapper(Linstall/app/PojoViewModelWrapperd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/PojoViewModelWrapperd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "wrapper":Linstall/app/PojoViewModelWrapperd;, "Linstall/app/PojoViewModelWrapperd<*>;"
    iput-object p1, p0, Linstall/app/PojoViewModelHelperd;->mWrapper:Linstall/app/PojoViewModelWrapperd;

    .line 8
    return-void
.end method

.method unregisterWrapper()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/PojoViewModelHelperd;->mWrapper:Linstall/app/PojoViewModelWrapperd;

    .line 12
    return-void
.end method
