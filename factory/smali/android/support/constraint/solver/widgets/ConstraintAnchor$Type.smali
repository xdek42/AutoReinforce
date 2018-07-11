.class public final enum Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

.field public static final enum TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "BASELINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "CENTER_X"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const-string v1, "CENTER_Y"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method
