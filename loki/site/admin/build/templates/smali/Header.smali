.class public interface abstract Linstall/app/Header;
.super Ljava/lang/Object;
.source "Header.java"


# virtual methods
.method public abstract getElements()[Linstall/app/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
