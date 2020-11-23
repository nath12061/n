.class public Linstall/app/InstrumentationTestSuite;
.super Ljunit/framework/TestSuite;
.source "InstrumentationTestSuite.java"


# direct methods
.method public constructor <init>(Linstall/app/Instrumentation;)V
    .locals 2
    .param p1, "instr"    # Linstall/app/Instrumentation;

    .prologue
    .line 8
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Class;Linstall/app/Instrumentation;)V
    .locals 2
    .param p1, "theClass"    # Ljava/lang/Class;
    .param p2, "instr"    # Linstall/app/Instrumentation;

    .prologue
    .line 16
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Linstall/app/Instrumentation;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instr"    # Linstall/app/Instrumentation;

    .prologue
    .line 12
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTestSuite(Ljava/lang/Class;)V
    .locals 2
    .param p1, "testClass"    # Ljava/lang/Class;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
