.class public Linstall/app/Utilityd;
.super Ljava/lang/Object;
.source "Utilityd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 25
    instance-of v3, p1, Linstall/app/IPropertyContainerd;

    if-eqz v3, :cond_0

    .line 27
    :try_start_0
    check-cast p1, Linstall/app/IPropertyContainerd;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainerd;->getCommandByName(Ljava/lang/String;)Linstall/app/Commandd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    :goto_0
    return-object v2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_0
    invoke-static {p0, p1}, Linstall/app/Utilityd;->getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "rawField":Ljava/lang/Object;
    instance-of v3, v1, Linstall/app/Commandd;

    if-eqz v3, :cond_1

    check-cast v1, Linstall/app/Commandd;

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
    .line 11
    :try_start_0
    instance-of v1, p1, Linstall/app/IPropertyContainerd;

    if-eqz v1, :cond_0

    .line 12
    check-cast p1, Linstall/app/IPropertyContainerd;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainerd;->getValueByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :goto_0
    return-object v1

    .line 14
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

    .line 15
    .end local p1    # "model":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getObservableForModel(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;
    .locals 1
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Linstall/app/BindingSyntaxResolverd;->constructObservableFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v0

    return-object v0
.end method

.method public static resolveResource(Ljava/lang/String;Linstall/app/Context;)I
    .locals 4
    .param p0, "attrValue"    # Ljava/lang/String;
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 37
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, -0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Linstall/app/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p1}, Linstall/app/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
