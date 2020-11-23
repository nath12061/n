.class public interface abstract Linstall/app/UrlInterceptHandler;
.super Ljava/lang/Object;
.source "UrlInterceptHandler.java"


# virtual methods
.method public abstract getPluginData(Ljava/lang/String;Ljava/util/Map;)Linstall/app/PluginData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Linstall/app/PluginData;"
        }
    .end annotation
.end method

.method public abstract service(Ljava/lang/String;Ljava/util/Map;)Linstall/app/CacheManager$CacheResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Linstall/app/CacheManager$CacheResult;"
        }
    .end annotation
.end method
