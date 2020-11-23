.class public Linstall/app/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Linstall/app/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Linstall/app/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/BasicHeaderValueFormatter;->DEFAULT:Linstall/app/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatElements([Linstall/app/HeaderElement;ZLinstall/app/HeaderValueFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "elems"    # [Linstall/app/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Linstall/app/HeaderValueFormatter;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatHeaderElement(Linstall/app/HeaderElement;ZLinstall/app/HeaderValueFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "elem"    # Linstall/app/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Linstall/app/HeaderValueFormatter;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatNameValuePair(Linstall/app/NameValuePair;ZLinstall/app/HeaderValueFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "nvp"    # Linstall/app/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Linstall/app/HeaderValueFormatter;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final formatParameters([Linstall/app/NameValuePair;ZLinstall/app/HeaderValueFormatter;)Ljava/lang/String;
    .locals 2
    .param p0, "nvps"    # [Linstall/app/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Linstall/app/HeaderValueFormatter;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doFormatValue(Linstall/app/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    .prologue
    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected estimateElementsLen([Linstall/app/HeaderElement;)I
    .locals 2
    .param p1, "elems"    # [Linstall/app/HeaderElement;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected estimateHeaderElementLen(Linstall/app/HeaderElement;)I
    .locals 2
    .param p1, "elem"    # Linstall/app/HeaderElement;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected estimateNameValuePairLen(Linstall/app/NameValuePair;)I
    .locals 2
    .param p1, "nvp"    # Linstall/app/NameValuePair;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected estimateParametersLen([Linstall/app/NameValuePair;)I
    .locals 2
    .param p1, "nvps"    # [Linstall/app/NameValuePair;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatElements(Linstall/app/CharArrayBuffer;[Linstall/app/HeaderElement;Z)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "elems"    # [Linstall/app/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatHeaderElement(Linstall/app/CharArrayBuffer;Linstall/app/HeaderElement;Z)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "elem"    # Linstall/app/HeaderElement;
    .param p3, "quote"    # Z

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatNameValuePair(Linstall/app/CharArrayBuffer;Linstall/app/NameValuePair;Z)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "nvp"    # Linstall/app/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatParameters(Linstall/app/CharArrayBuffer;[Linstall/app/NameValuePair;Z)Linstall/app/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "nvps"    # [Linstall/app/NameValuePair;
    .param p3, "quote"    # Z

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isSeparator(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isUnsafe(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
