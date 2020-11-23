.class public abstract Linstall/app/ValidatorBased;
.super Ljava/lang/Object;
.source "ValidatorBased.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ta:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mValue:Linstall/app/IObservabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Linstall/app/ValidatorBased;, "Linstall/app/ValidatorBased<TTa;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Validate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTa;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ValidatorBased;, "Linstall/app/ValidatorBased<TTa;>;"
    .local p1, "parameters":Ljava/lang/Object;, "TTa;"
    iget-object v0, p0, Linstall/app/ValidatorBased;->mValue:Linstall/app/IObservabled;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linstall/app/ValidatorBased;->mValue:Linstall/app/IObservabled;

    invoke-interface {v0}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Linstall/app/ValidatorBased;->doValidate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTa;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract doValidate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTa;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public final formatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTa;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Linstall/app/ValidatorBased;, "Linstall/app/ValidatorBased<TTa;>;"
    .local p1, "parameters":Ljava/lang/Object;, "TTa;"
    invoke-virtual {p0, p1, p2}, Linstall/app/ValidatorBased;->doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAcceptedAnnotation()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Linstall/app/ValidatorBased;, "Linstall/app/ValidatorBased<TTa;>;"
    return-void
.end method

.method public final setObservable(Linstall/app/IObservabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Linstall/app/ValidatorBased;, "Linstall/app/ValidatorBased<TTa;>;"
    .local p1, "value":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    iput-object p1, p0, Linstall/app/ValidatorBased;->mValue:Linstall/app/IObservabled;

    .line 16
    return-void
.end method
