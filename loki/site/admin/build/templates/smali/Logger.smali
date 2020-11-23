.class public Linstall/app/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "easyBluetooth"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x2

    sput v0, Linstall/app/Logger;->LOGLEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSourceString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 14
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 10
    sget v0, Linstall/app/Logger;->LOGLEVEL:I

    if-gt v0, p0, :cond_0

    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m0d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static m10i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method public static m11i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static m12v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static m13v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static m14v(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x2

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static m15v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    const/4 v0, 0x2

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static m16w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void
.end method

.method public static m17w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_0
    return-void
.end method

.method public static m18w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "easyBluetooth"

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_0
    return-void
.end method

.method public static m19w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static m1d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static m20w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_0
    return-void
.end method

.method public static m21w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    const/4 v0, 0x5

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    return-void
.end method

.method public static m2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x3

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static m3d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static m4e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x6

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public static m5e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    const/4 v0, 0x6

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :cond_0
    return-void
.end method

.method public static m6e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x6

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public static m7e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    const/4 v0, 0x6

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "easyBluetooth"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_0
    return-void
.end method

.method public static m8i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x4

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public static m9i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    const/4 v0, 0x4

    invoke-static {v0}, Linstall/app/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "easyBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Linstall/app/Logger;->getSourceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_0
    return-void
.end method
