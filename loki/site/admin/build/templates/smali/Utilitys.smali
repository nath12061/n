.class public Linstall/app/Utilitys;
.super Ljava/lang/Object;
.source "Utilitys.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Command;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 22
    instance-of v3, p1, Linstall/app/IPropertyContainer;

    if-eqz v3, :cond_0

    .line 24
    :try_start_0
    check-cast p1, Linstall/app/IPropertyContainer;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainer;->getCommandByName(Ljava/lang/String;)Linstall/app/Command;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 30
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_0
    invoke-static {p0, p1}, Linstall/app/Utilitys;->getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "rawField":Ljava/lang/Object;
    instance-of v3, v1, Linstall/app/Command;

    if-eqz v3, :cond_1

    check-cast v1, Linstall/app/Command;

    .end local v1    # "rawField":Ljava/lang/Object;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "rawField":Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method public static getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 8
    :try_start_0
    instance-of v1, p1, Linstall/app/IPropertyContainer;

    if-eqz v1, :cond_0

    .line 9
    check-cast p1, Linstall/app/IPropertyContainer;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainer;->getValueByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    :goto_0
    return-object v1

    .line 11
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 12
    .end local p1    # "model":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getObservableForModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Linstall/app/BindingSyntaxResolver;->constructObservableFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v0

    return-object v0
.end method

.method public static resolveResource(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .param p0, "attrValue"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, -0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
