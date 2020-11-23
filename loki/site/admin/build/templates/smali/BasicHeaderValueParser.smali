.class public Linstall/app/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Linstall/app/HeaderValueParser;


# static fields
.field public static final DEFAULT:Linstall/app/BasicHeaderValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/BasicHeaderValueParser;->DEFAULT:Linstall/app/BasicHeaderValueParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseElements(Ljava/lang/String;Linstall/app/HeaderValueParser;)[Linstall/app/HeaderElement;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Linstall/app/HeaderValueParser;)Linstall/app/HeaderElement;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Linstall/app/HeaderValueParser;)Linstall/app/NameValuePair;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseParameters(Ljava/lang/String;Linstall/app/HeaderValueParser;)[Linstall/app/NameValuePair;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Linstall/app/NameValuePair;)Linstall/app/HeaderElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # [Linstall/app/NameValuePair;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Linstall/app/NameValuePair;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseElements(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)[Linstall/app/HeaderElement;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseHeaderElement(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/HeaderElement;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseNameValuePair(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/NameValuePair;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseNameValuePair(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;[C)Linstall/app/NameValuePair;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;
    .param p3, "delimiters"    # [C

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseParameters(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)[Linstall/app/NameValuePair;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
