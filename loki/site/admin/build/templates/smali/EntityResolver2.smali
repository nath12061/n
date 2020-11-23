.class public interface abstract Linstall/app/EntityResolver2;
.super Ljava/lang/Object;
.source "EntityResolver2.java"

# interfaces
.implements Linstall/app/EntityResolver;


# virtual methods
.method public abstract getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Linstall/app/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
