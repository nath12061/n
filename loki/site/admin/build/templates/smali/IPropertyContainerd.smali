.class public interface abstract Linstall/app/IPropertyContainerd;
.super Ljava/lang/Object;
.source "IPropertyContainerd.java"


# virtual methods
.method public abstract getCommandByName(Ljava/lang/String;)Linstall/app/Commandd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getObservableByName(Ljava/lang/String;)Linstall/app/IObservabled;
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
.end method

.method public abstract getValueByName(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
