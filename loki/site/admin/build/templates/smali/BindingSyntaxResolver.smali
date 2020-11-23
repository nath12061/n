.class public Linstall/app/BindingSyntaxResolver;
.super Ljava/lang/Object;
.source "BindingSyntaxResolver.java"


# static fields
.field private static final DEFAULT_CONVERTER_PACKAGE:Ljava/lang/String; = "gueei.binding.converters."

.field private static final converterPattern:Ljava/util/regex/Pattern;

.field private static final dynamicObjectPattern:Ljava/util/regex/Pattern;

.field private static final stringPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "^([$a-zA-Z0-9._]+)\\((.+(\\s*?,\\s*.+)*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolver;->converterPattern:Ljava/util/regex/Pattern;

    .line 12
    const-string v0, "^\\{(.+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolver;->dynamicObjectPattern:Ljava/util/regex/Pattern;

    .line 13
    const-string v0, "^\'([^\']*)\'$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolver;->stringPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructObservableFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bindingStatement"    # Ljava/lang/String;
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
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "statement":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Linstall/app/BindingSyntaxResolver;->getConverterFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Converter;

    move-result-object v0

    .line 18
    .local v0, "result":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 25
    :goto_0
    return-object v2

    .line 21
    :cond_0
    invoke-static {p0, v1, p2}, Linstall/app/BindingSyntaxResolver;->getDynamicObjectFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v1, p2}, Linstall/app/BindingSyntaxResolver;->getObservableForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v2

    goto :goto_0
.end method

.method private static getConverterFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Converter;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/Converter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 29
    sget-object v9, Linstall/app/BindingSyntaxResolver;->converterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 30
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    :cond_0
    move-object v2, v8

    .line 52
    :goto_0
    return-object v2

    .line 33
    :cond_1
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "converterName":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "gueei.binding.converters."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    :cond_2
    const/4 v9, 0x2

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linstall/app/BindingSyntaxResolver;->splitArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "arguments":[Ljava/lang/String;
    array-length v0, v1

    .line 40
    .local v0, "argumentCount":I
    new-array v7, v0, [Linstall/app/IObservable;

    .line 41
    .local v7, "obs":[Linstall/app/IObservable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 42
    aget-object v9, v1, v5

    invoke-static {p0, v9, p2}, Linstall/app/BindingSyntaxResolver;->constructObservableFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v9

    aput-object v9, v7, v5

    .line 43
    aget-object v9, v7, v5

    if-nez v9, :cond_3

    move-object v2, v8

    .line 44
    goto :goto_0

    .line 41
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    :cond_4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [Linstall/app/IObservable;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/Converter;

    .line 48
    .local v2, "converter":Linstall/app/Converter;, "Linstall/app/Converter<*>;"
    invoke-virtual {v2, p0}, Linstall/app/Converter;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "argumentCount":I
    .end local v1    # "arguments":[Ljava/lang/String;
    .end local v2    # "converter":Linstall/app/Converter;, "Linstall/app/Converter<*>;"
    .end local v5    # "i":I
    .end local v7    # "obs":[Linstall/app/IObservable;
    :catch_0
    move-exception v4

    .line 51
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    .line 52
    goto :goto_0
.end method

.method private static getDynamicObjectFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statement"    # Ljava/lang/String;
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
    const/4 v8, 0x0

    .line 57
    sget-object v9, Linstall/app/BindingSyntaxResolver;->dynamicObjectPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 58
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v2, v8

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    new-instance v2, Linstall/app/BindingSyntaxResolver$1;

    invoke-direct {v2}, Linstall/app/BindingSyntaxResolver$1;-><init>()V

    .line 67
    .local v2, "dynamic":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linstall/app/BindingSyntaxResolver;->splitArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "arguments":[Ljava/lang/String;
    array-length v0, v1

    .line 69
    .local v0, "argumentCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 70
    aget-object v9, v1, v3

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 71
    .local v4, "indexOfEqual":I
    if-gtz v4, :cond_2

    move-object v2, v8

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    aget-object v9, v1, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "name":Ljava/lang/String;
    aget-object v9, v1, v3

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, p2}, Linstall/app/BindingSyntaxResolver;->constructObservableFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;

    move-result-object v7

    .line 76
    .local v7, "obs":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-nez v7, :cond_3

    move-object v2, v8

    .line 77
    goto :goto_0

    .line 69
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 164
    :try_start_0
    instance-of v1, p1, Linstall/app/IPropertyContainer;

    if-eqz v1, :cond_0

    .line 165
    check-cast p1, Linstall/app/IPropertyContainer;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainer;->getValueByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 167
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

    .line 168
    .end local p1    # "model":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getObservableForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-static {p0}, Linstall/app/BindingSyntaxResolver;->matchString(Ljava/lang/String;)Linstall/app/IObservable;

    move-result-object v2

    .line 136
    .local v2, "result":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-eqz v2, :cond_1

    .line 152
    .end local v2    # "result":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .end local p1    # "model":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 139
    .restart local v2    # "result":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Linstall/app/IPropertyContainer;

    if-eqz v4, :cond_2

    .line 141
    :try_start_0
    check-cast p1, Linstall/app/IPropertyContainer;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainer;->getObservableByName(Ljava/lang/String;)Linstall/app/IObservable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 143
    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_2
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    const-string v4, "@"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    :cond_3
    invoke-static {p0, p1}, Linstall/app/BindingSyntaxResolver;->getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "rawField":Ljava/lang/Object;
    instance-of v4, v1, Linstall/app/IObservable;

    if-eqz v4, :cond_4

    check-cast v1, Linstall/app/IObservable;

    .end local v1    # "rawField":Ljava/lang/Object;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "rawField":Ljava/lang/Object;
    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method private static matchString(Ljava/lang/String;)Linstall/app/IObservable;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/IObservable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v1, Linstall/app/BindingSyntaxResolver;->stringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 157
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static splitArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 86
    .local v1, "bracketCount":I
    const/4 v4, 0x0

    .line 87
    .local v4, "curlyBraceCount":I
    const-string v7, ""

    .line 88
    .local v7, "progress":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 89
    .local v3, "count":I
    const/4 v8, 0x0

    .line 90
    .local v8, "singleQuoteMode":Z
    const/4 v5, 0x0

    .line 91
    .local v5, "doubleQuoteMode":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 92
    .local v2, "chars":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_a

    .line 93
    aget-char v9, v2, v6

    const/16 v10, 0x27

    if-ne v9, v10, :cond_0

    .line 94
    if-eqz v8, :cond_7

    .line 95
    const/4 v8, 0x0

    .line 100
    :cond_0
    :goto_1
    aget-char v9, v2, v6

    const/16 v10, 0x22

    if-ne v9, v10, :cond_1

    .line 101
    if-eqz v8, :cond_8

    .line 102
    const/4 v5, 0x0

    .line 107
    :cond_1
    :goto_2
    aget-char v9, v2, v6

    const/16 v10, 0x28

    if-ne v9, v10, :cond_2

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    :cond_2
    aget-char v9, v2, v6

    const/16 v10, 0x29

    if-ne v9, v10, :cond_3

    .line 111
    add-int/lit8 v1, v1, -0x1

    .line 113
    :cond_3
    aget-char v9, v2, v6

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_4

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 116
    :cond_4
    aget-char v9, v2, v6

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_5

    .line 117
    add-int/lit8 v4, v4, -0x1

    .line 119
    :cond_5
    aget-char v9, v2, v6

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_6

    if-gtz v1, :cond_6

    if-gtz v4, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    if-nez v8, :cond_6

    if-eqz v5, :cond_9

    .line 120
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v10, v2, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97
    :cond_7
    const/4 v8, 0x1

    goto :goto_1

    .line 104
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 122
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v7, ""

    .line 124
    const/4 v1, 0x0

    .line 125
    const/4 v4, 0x0

    goto :goto_3

    .line 128
    :cond_a
    if-gtz v1, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_b
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    return-object v9
.end method
