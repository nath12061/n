.class public interface abstract Linstall/app/IPropertyContainer;
.super Ljava/lang/Object;
.source "IPropertyContainer.java"


# virtual methods
.method public abstract getCommandByName(Ljava/lang/String;)Linstall/app/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getObservableByName(Ljava/lang/String;)Linstall/app/IObservable;
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
.end method

.method public abstract getValueByName(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
