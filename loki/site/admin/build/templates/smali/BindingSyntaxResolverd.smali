.class public Linstall/app/BindingSyntaxResolverd;
.super Ljava/lang/Object;
.source "BindingSyntaxResolverd.java"


# static fields
.field private static final DEFAULT_CONVERTER_PACKAGE:Ljava/lang/String; = "gueei.binding.converters."

.field private static final converterPattern:Ljava/util/regex/Pattern;

.field private static final dynamicObjectPattern:Ljava/util/regex/Pattern;

.field private static final stringPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "^([$a-zA-Z0-9._]+)\\((.+(\\s*?,\\s*.+)*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolverd;->converterPattern:Ljava/util/regex/Pattern;

    .line 10
    const-string v0, "^\\{(.+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolverd;->dynamicObjectPattern:Ljava/util/regex/Pattern;

    .line 11
    const-string v0, "^\'([^\']*)\'$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linstall/app/BindingSyntaxResolverd;->stringPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructObservableFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "bindingStatement"    # Ljava/lang/String;
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
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "statement":Ljava/lang/String;
    invoke-static {v0, p2}, Linstall/app/BindingSyntaxResolverd;->getObservableForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v1

    return-object v1
.end method

.method private static getConverterFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Converterd;
    .locals 13
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/Converterd",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 22
    sget-object v9, Linstall/app/BindingSyntaxResolverd;->converterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 23
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

    .line 45
    :goto_0
    return-object v2

    .line 26
    :cond_1
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "converterName":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "gueei.binding.converters."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    :cond_2
    const/4 v9, 0x2

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linstall/app/BindingSyntaxResolverd;->splitArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "arguments":[Ljava/lang/String;
    array-length v0, v1

    .line 33
    .local v0, "argumentCount":I
    new-array v7, v0, [Linstall/app/IObservabled;

    .line 34
    .local v7, "obs":[Linstall/app/IObservabled;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 35
    aget-object v9, v1, v5

    invoke-static {p0, v9, p2}, Linstall/app/BindingSyntaxResolverd;->constructObservableFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v9

    aput-object v9, v7, v5

    .line 36
    aget-object v9, v7, v5

    if-nez v9, :cond_3

    move-object v2, v8

    .line 37
    goto :goto_0

    .line 34
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 40
    :cond_4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [Linstall/app/IObservabled;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/Converterd;

    .line 41
    .local v2, "converter":Linstall/app/Converterd;, "Linstall/app/Converterd<*>;"
    invoke-virtual {v2, p0}, Linstall/app/Converterd;->setContext(Linstall/app/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v0    # "argumentCount":I
    .end local v1    # "arguments":[Ljava/lang/String;
    .end local v2    # "converter":Linstall/app/Converterd;, "Linstall/app/Converterd<*>;"
    .end local v5    # "i":I
    .end local v7    # "obs":[Linstall/app/IObservabled;
    :catch_0
    move-exception v4

    .line 44
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    .line 45
    goto :goto_0
.end method

.method private static getDynamicObjectFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;
    .locals 11
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "statement"    # Ljava/lang/String;
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
    const/4 v8, 0x0

    .line 50
    sget-object v9, Linstall/app/BindingSyntaxResolverd;->dynamicObjectPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 51
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1

    move-object v2, v8

    .line 69
    :cond_0
    :goto_0
    return-object v2

    .line 54
    :cond_1
    new-instance v2, Linstall/app/DynamicObjectd;

    invoke-direct {v2}, Linstall/app/DynamicObjectd;-><init>()V

    .line 55
    .local v2, "dynamic":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linstall/app/BindingSyntaxResolverd;->splitArguments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "arguments":[Ljava/lang/String;
    array-length v0, v1

    .line 57
    .local v0, "argumentCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 58
    aget-object v9, v1, v3

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 59
    .local v4, "indexOfEqual":I
    if-gtz v4, :cond_2

    move-object v2, v8

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    aget-object v9, v1, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "name":Ljava/lang/String;
    aget-object v9, v1, v3

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, p2}, Linstall/app/BindingSyntaxResolverd;->constructObservableFromStatement(Linstall/app/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;

    move-result-object v7

    .line 64
    .local v7, "obs":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-nez v7, :cond_3

    move-object v2, v8

    .line 65
    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 155
    :try_start_0
    instance-of v1, p1, Linstall/app/IPropertyContainerd;

    if-eqz v1, :cond_0

    .line 156
    check-cast p1, Linstall/app/IPropertyContainerd;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainerd;->getValueByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 158
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

    .line 159
    .end local p1    # "model":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getObservableForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservabled;
    .locals 5
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-static {p0}, Linstall/app/BindingSyntaxResolverd;->matchString(Ljava/lang/String;)Linstall/app/IObservabled;

    move-result-object v2

    .line 125
    .local v2, "result":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-eqz v2, :cond_0

    .line 141
    .end local v2    # "result":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .end local p1    # "model":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 128
    .restart local v2    # "result":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_0
    instance-of v4, p1, Linstall/app/IPropertyContainerd;

    if-eqz v4, :cond_1

    .line 130
    :try_start_0
    check-cast p1, Linstall/app/IPropertyContainerd;

    .end local p1    # "model":Ljava/lang/Object;
    invoke-interface {p1, p0}, Linstall/app/IPropertyContainerd;->getObservableByName(Ljava/lang/String;)Linstall/app/IObservabled;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 132
    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "model":Ljava/lang/Object;
    :cond_1
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    new-instance v2, Linstall/app/Observabled;

    .end local v2    # "result":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    .restart local v2    # "result":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    :cond_2
    const-string v4, "@"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    :cond_3
    invoke-static {p0, p1}, Linstall/app/BindingSyntaxResolverd;->getFieldForModel(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "rawField":Ljava/lang/Object;
    instance-of v4, v1, Linstall/app/IObservabled;

    if-eqz v4, :cond_4

    check-cast v1, Linstall/app/IObservabled;

    .end local v1    # "rawField":Ljava/lang/Object;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "rawField":Ljava/lang/Object;
    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method private static matchString(Ljava/lang/String;)Linstall/app/IObservabled;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/IObservabled",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v1, Linstall/app/BindingSyntaxResolverd;->stringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 147
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Linstall/app/StringObservabled;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linstall/app/StringObservabled;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static splitArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "bracketCount":I
    const/4 v4, 0x0

    .line 76
    .local v4, "curlyBraceCount":I
    const-string v7, ""

    .line 77
    .local v7, "progress":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 78
    .local v3, "count":I
    const/4 v8, 0x0

    .line 79
    .local v8, "singleQuoteMode":Z
    const/4 v5, 0x0

    .line 80
    .local v5, "doubleQuoteMode":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 81
    .local v2, "chars":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_a

    .line 82
    aget-char v9, v2, v6

    const/16 v10, 0x27

    if-ne v9, v10, :cond_0

    .line 83
    if-eqz v8, :cond_7

    .line 84
    const/4 v8, 0x0

    .line 89
    :cond_0
    :goto_1
    aget-char v9, v2, v6

    const/16 v10, 0x22

    if-ne v9, v10, :cond_1

    .line 90
    if-eqz v8, :cond_8

    .line 91
    const/4 v5, 0x0

    .line 96
    :cond_1
    :goto_2
    aget-char v9, v2, v6

    const/16 v10, 0x28

    if-ne v9, v10, :cond_2

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 99
    :cond_2
    aget-char v9, v2, v6

    const/16 v10, 0x29

    if-ne v9, v10, :cond_3

    .line 100
    add-int/lit8 v1, v1, -0x1

    .line 102
    :cond_3
    aget-char v9, v2, v6

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_4

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 105
    :cond_4
    aget-char v9, v2, v6

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_5

    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 108
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

    .line 109
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

    .line 81
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_7
    const/4 v8, 0x1

    goto :goto_1

    .line 93
    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    .line 111
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v7, ""

    .line 113
    const/4 v1, 0x0

    .line 114
    const/4 v4, 0x0

    goto :goto_3

    .line 117
    :cond_a
    if-gtz v1, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    .line 118
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_b
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    return-object v9
.end method
