.class public abstract Linstall/app/SyncML;
.super Ljava/lang/Object;
.source "SyncML.java"


# static fields
.field public static final TAG_TABLE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_2_DM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Add"

    aput-object v1, v0, v3

    const-string v1, "Alert"

    aput-object v1, v0, v4

    const-string v1, "Archive"

    aput-object v1, v0, v5

    const-string v1, "Atomic"

    aput-object v1, v0, v6

    const-string v1, "Chal"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CmdID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CmdRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Cred"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Final"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Item"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Lang"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LocName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LocURI"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Map"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MapItem"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Meta"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MsgID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MsgRef"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "NoResp"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "NoResults"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Put"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "RespURI"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Results"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Search"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Sequence"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SessionID"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SftDel"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Source"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SourceRef"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sync"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SyncBody"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SyncHdr"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "SyncML"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Target"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "TargetRef"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Reserved for future use"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "VerProto"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "NumberOfChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "MoreData"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Field"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Filter"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Record"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "FilterType"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "SourceParent"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "TargetParent"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Move"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Correlator"

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    .line 5
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Anchor"

    aput-object v1, v0, v3

    const-string v1, "EMI"

    aput-object v1, v0, v4

    const-string v1, "Format"

    aput-object v1, v0, v5

    const-string v1, "FreeID"

    aput-object v1, v0, v6

    const-string v1, "FreeMem"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Last"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Mark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MaxMsgSize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Mem"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MetInf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Next"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NextNonce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SharedMem"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Version"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MaxObjSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "FieldLevel"

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    .line 6
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessType"

    aput-object v1, v0, v3

    const-string v1, "ACL"

    aput-object v1, v0, v4

    const-string v1, "Add"

    aput-object v1, v0, v5

    const-string v1, "b64"

    aput-object v1, v0, v6

    const-string v1, "bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bool"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "chr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DDFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Nodes"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Occurence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "RTProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "TStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ZeroOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDMParser()Linstall/app/WbxmlParser;
    .locals 3

    .prologue
    .line 9
    invoke-static {}, Linstall/app/SyncML;->createParser()Linstall/app/WbxmlParser;

    move-result-object v0

    .line 10
    .local v0, "createParser":Linstall/app/WbxmlParser;
    const/4 v1, 0x2

    sget-object v2, Linstall/app/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linstall/app/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 11
    return-object v0
.end method

.method public static createDMSerializer()Linstall/app/WbxmlSerializer;
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Linstall/app/SyncML;->createSerializer()Linstall/app/WbxmlSerializer;

    move-result-object v0

    .line 16
    .local v0, "createSerializer":Linstall/app/WbxmlSerializer;
    const/4 v1, 0x2

    sget-object v2, Linstall/app/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linstall/app/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 17
    return-object v0
.end method

.method public static createParser()Linstall/app/WbxmlParser;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createSerializer()Linstall/app/WbxmlSerializer;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Linstall/app/WbxmlSerializer;

    invoke-direct {v0}, Linstall/app/WbxmlSerializer;-><init>()V

    .line 27
    .local v0, "wbxmlSerializer":Linstall/app/WbxmlSerializer;
    const/4 v1, 0x0

    sget-object v2, Linstall/app/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linstall/app/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x1

    sget-object v2, Linstall/app/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Linstall/app/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    .line 29
    return-object v0
.end method
