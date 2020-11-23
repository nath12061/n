.class public Linstall/app/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Linstall/app/LineParser;


# static fields
.field public static final DEFAULT:Linstall/app/BasicLineParser;


# instance fields
.field protected final protocol:Linstall/app/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Linstall/app/BasicLineParser;->DEFAULT:Linstall/app/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/ProtocolVersion;)V
    .locals 2
    .param p1, "proto"    # Linstall/app/ProtocolVersion;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseHeader(Ljava/lang/String;Linstall/app/LineParser;)Linstall/app/Header;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseProtocolVersion(Ljava/lang/String;Linstall/app/LineParser;)Linstall/app/ProtocolVersion;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseRequestLine(Ljava/lang/String;Linstall/app/LineParser;)Linstall/app/RequestLine;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseStatusLine(Ljava/lang/String;Linstall/app/LineParser;)Linstall/app/StatusLine;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Linstall/app/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createProtocolVersion(II)Linstall/app/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Linstall/app/ProtocolVersion;)Linstall/app/RequestLine;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Linstall/app/ProtocolVersion;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createStatusLine(Linstall/app/ProtocolVersion;ILjava/lang/String;)Linstall/app/StatusLine;
    .locals 2
    .param p1, "ver"    # Linstall/app/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Z
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseHeader(Linstall/app/CharArrayBuffer;)Linstall/app/Header;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseProtocolVersion(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/ProtocolVersion;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseRequestLine(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/RequestLine;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseStatusLine(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)Linstall/app/StatusLine;
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected skipWhitespace(Linstall/app/CharArrayBuffer;Linstall/app/ParserCursor;)V
    .locals 2
    .param p1, "buffer"    # Linstall/app/CharArrayBuffer;
    .param p2, "cursor"    # Linstall/app/ParserCursor;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
