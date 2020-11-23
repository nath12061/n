.class public Linstall/app/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Linstall/app/Typeface;

.field public static final DEFAULT_BOLD:Linstall/app/Typeface;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Linstall/app/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Linstall/app/Typeface;

.field public static final SERIF:Linstall/app/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Linstall/app/Typeface;->DEFAULT:Linstall/app/Typeface;

    .line 7
    sput-object v0, Linstall/app/Typeface;->DEFAULT_BOLD:Linstall/app/Typeface;

    .line 9
    sput-object v0, Linstall/app/Typeface;->MONOSPACE:Linstall/app/Typeface;

    .line 11
    sput-object v0, Linstall/app/Typeface;->SANS_SERIF:Linstall/app/Typeface;

    .line 12
    sput-object v0, Linstall/app/Typeface;->SERIF:Linstall/app/Typeface;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Linstall/app/Typeface;I)Linstall/app/Typeface;
    .locals 2
    .param p0, "family"    # Linstall/app/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;I)Linstall/app/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromAsset(Linstall/app/AssetManager;Ljava/lang/String;)Linstall/app/Typeface;
    .locals 2
    .param p0, "mgr"    # Linstall/app/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static defaultFromStyle(I)Linstall/app/Typeface;
    .locals 2
    .param p0, "style"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStyle()I
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
