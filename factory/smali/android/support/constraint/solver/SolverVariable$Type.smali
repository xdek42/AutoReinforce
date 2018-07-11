.class public final enum Landroid/support/constraint/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "UNRESTRICTED"

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 70
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "CONSTANT"

    invoke-direct {v0, v1, v3}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 74
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "SLACK"

    invoke-direct {v0, v1, v4}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 78
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 82
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Landroid/support/constraint/solver/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    aput-object v1, v0, v6

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable$Type;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/SolverVariable$Type;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable$Type;

    return-object v0
.end method
