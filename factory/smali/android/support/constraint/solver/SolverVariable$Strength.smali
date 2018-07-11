.class public final enum Landroid/support/constraint/solver/SolverVariable$Strength;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/solver/SolverVariable$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/SolverVariable$Strength;

.field public static final enum STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

.field public static final enum UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Strength;

.field public static final enum WEAK:Landroid/support/constraint/solver/SolverVariable$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Strength;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/SolverVariable$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 87
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Strength;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v3}, Landroid/support/constraint/solver/SolverVariable$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->WEAK:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 88
    new-instance v0, Landroid/support/constraint/solver/SolverVariable$Strength;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Landroid/support/constraint/solver/SolverVariable$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable$Strength;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Strength;->WEAK:Landroid/support/constraint/solver/SolverVariable$Strength;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Strength;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Strength;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Strength;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable$Strength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Landroid/support/constraint/solver/SolverVariable$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable$Strength;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/SolverVariable$Strength;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->$VALUES:[Landroid/support/constraint/solver/SolverVariable$Strength;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/SolverVariable$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable$Strength;

    return-object v0
.end method
