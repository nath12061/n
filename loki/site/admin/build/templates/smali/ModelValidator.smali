.class public Linstall/app/ModelValidator;
.super Ljava/lang/Object;
.source "ModelValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ValidateModel(Ljava/lang/Object;)Linstall/app/ValidationResult;
    .locals 15
    .param p0, "model"    # Ljava/lang/Object;

    .prologue
    .line 8
    new-instance v4, Linstall/app/ValidationResult;

    invoke-direct {v4}, Linstall/app/ValidationResult;-><init>()V

    .line 9
    .local v4, "result":Linstall/app/ValidationResult;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v2, v9, v8

    .line 11
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Linstall/app/Observable;

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/IObservable;

    .line 13
    .local v3, "observable":Linstall/app/IObservable;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    array-length v12, v11

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v12, :cond_1

    aget-object v0, v11, v7

    .line 14
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v13, "Validator"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v6, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linstall/app/ValidatorBase;

    .line 15
    .local v5, "validator":Linstall/app/ValidatorBase;
    invoke-virtual {v5, v3}, Linstall/app/ValidatorBase;->setObservable(Linstall/app/IObservable;)V

    .line 16
    invoke-virtual {v5}, Linstall/app/ValidatorBase;->getAcceptedAnnotation()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Linstall/app/ValidatorBase;->Validate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 17
    invoke-virtual {v5}, Linstall/app/ValidatorBase;->getAcceptedAnnotation()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v6, v13}, Linstall/app/ValidatorBase;->formatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Linstall/app/ValidationResult;->putValidationError(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {v5}, Linstall/app/ValidatorBase;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 22
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v3    # "observable":Linstall/app/IObservable;
    .end local v5    # "validator":Linstall/app/ValidatorBase;
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 26
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    return-object v4
.end method
