.class public interface abstract Linstall/app/SharedPreferences$Editor;
.super Ljava/lang/Object;
.source "SharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract clear()Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract commit()Z
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract putFloat(Ljava/lang/String;F)Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract putInt(Ljava/lang/String;I)Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract putLong(Ljava/lang/String;J)Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Linstall/app/SharedPreferences$Editor;
.end method

.method public abstract remove(Ljava/lang/String;)Linstall/app/SharedPreferences$Editor;
.end method
