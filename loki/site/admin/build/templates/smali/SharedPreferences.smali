.class public interface abstract Linstall/app/SharedPreferences;
.super Ljava/lang/Object;
.source "SharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/SharedPreferences$OnSharedPreferenceChangeListener;,
        Linstall/app/SharedPreferences$Editor;
    }
.end annotation


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract edit()Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Linstall/app/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Linstall/app/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
