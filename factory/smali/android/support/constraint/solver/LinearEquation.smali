.class Landroid/support/constraint/solver/LinearEquation;
.super Ljava/lang/Object;
.source "LinearEquation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/LinearEquation$Type;
    }
.end annotation


# static fields
.field private static artificialIndex:I

.field private static errorIndex:I

.field private static slackIndex:I


# instance fields
.field private mCurrentSide:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftSide:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mRightSide:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mSystem:Landroid/support/constraint/solver/LinearSystem;

.field private mType:Landroid/support/constraint/solver/LinearEquation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput v0, Landroid/support/constraint/solver/LinearEquation;->artificialIndex:I

    .line 57
    sput v0, Landroid/support/constraint/solver/LinearEquation;->slackIndex:I

    .line 58
    sput v0, Landroid/support/constraint/solver/LinearEquation;->errorIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Landroid/support/constraint/solver/LinearEquation$Type;->EQUALS:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 54
    iput-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 142
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/LinearEquation;)V
    .locals 9
    .param p1, "equation"    # Landroid/support/constraint/solver/LinearEquation;

    .prologue
    const/4 v8, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    .line 34
    iput-object v8, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 52
    sget-object v7, Landroid/support/constraint/solver/LinearEquation$Type;->EQUALS:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 54
    iput-object v8, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 84
    iget-object v1, p1, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    .line 85
    .local v1, "mLeftSide1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mLeftSide1Size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 87
    .local v5, "v":Landroid/support/constraint/solver/EquationVariable;
    new-instance v6, Landroid/support/constraint/solver/EquationVariable;

    invoke-direct {v6, v5}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/EquationVariable;)V

    .line 88
    .local v6, "v2":Landroid/support/constraint/solver/EquationVariable;
    iget-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    .end local v6    # "v2":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    iget-object v3, p1, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    .line 91
    .local v3, "mRightSide1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mRightSide1Size":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 92
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 93
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    new-instance v6, Landroid/support/constraint/solver/EquationVariable;

    invoke-direct {v6, v5}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/EquationVariable;)V

    .line 94
    .restart local v6    # "v2":Landroid/support/constraint/solver/EquationVariable;
    iget-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    .end local v6    # "v2":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    iget-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    iput-object v7, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 2
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Landroid/support/constraint/solver/LinearEquation$Type;->EQUALS:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 54
    iput-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 149
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 150
    iput-object p1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 151
    return-void
.end method

.method private find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;
    .locals 4
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/SolverVariable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;)",
            "Landroid/support/constraint/solver/EquationVariable;"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "listSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 505
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/EquationVariable;

    .line 506
    .local v0, "ev":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 510
    .end local v0    # "ev":Landroid/support/constraint/solver/EquationVariable;
    :goto_1
    return-object v0

    .line 504
    .restart local v0    # "ev":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v0    # "ev":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getNextArtificialVariableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/LinearEquation;->artificialIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/LinearEquation;->artificialIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNextErrorVariableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/LinearEquation;->errorIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/LinearEquation;->errorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNextSlackVariableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/LinearEquation;->slackIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/LinearEquation;->slackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeNullTerms(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "hasNullTerm":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "listSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 328
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/EquationVariable;

    .line 329
    .local v4, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v4}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/Amount;->isNull()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    const/4 v0, 0x1

    .line 334
    .end local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    if-eqz v0, :cond_4

    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v3, "newSide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 339
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/EquationVariable;

    .line 340
    .restart local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v4}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/Amount;->isNull()Z

    move-result v5

    if-nez v5, :cond_1

    .line 341
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v3    # "newSide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    .restart local v3    # "newSide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 345
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    .end local v3    # "newSide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    :cond_4
    return-void
.end method

.method private replace(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearEquation;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "l"    # Landroid/support/constraint/solver/LinearEquation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/SolverVariable;",
            "Landroid/support/constraint/solver/LinearEquation;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    invoke-direct {p0, p1, p3}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v5

    .line 484
    .local v5, "toReplace":Landroid/support/constraint/solver/EquationVariable;
    if-eqz v5, :cond_0

    .line 485
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v0

    .line 487
    .local v0, "amount":Landroid/support/constraint/solver/Amount;
    iget-object v3, p2, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    .line 488
    .local v3, "mRightSide1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mRightSide1Size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 489
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/EquationVariable;

    .line 490
    .local v2, "lv":Landroid/support/constraint/solver/EquationVariable;
    new-instance v6, Landroid/support/constraint/solver/EquationVariable;

    invoke-direct {v6, v0, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/Amount;Landroid/support/constraint/solver/EquationVariable;)V

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "amount":Landroid/support/constraint/solver/Amount;
    .end local v1    # "i":I
    .end local v2    # "lv":Landroid/support/constraint/solver/EquationVariable;
    .end local v3    # "mRightSide1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    .end local v4    # "mRightSide1Size":I
    :cond_0
    return-void
.end method

.method public static resetNaming()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    sput v0, Landroid/support/constraint/solver/LinearEquation;->artificialIndex:I

    .line 75
    sput v0, Landroid/support/constraint/solver/LinearEquation;->slackIndex:I

    .line 76
    sput v0, Landroid/support/constraint/solver/LinearEquation;->errorIndex:I

    .line 77
    return-void
.end method

.method private sideToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "side":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const-string v2, ""

    .line 834
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x1

    .line 835
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "sideSize":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 836
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/EquationVariable;

    .line 837
    .local v4, "v":Landroid/support/constraint/solver/EquationVariable;
    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {v4}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/Amount;->isPositive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 843
    :goto_1
    const/4 v0, 0x0

    .line 835
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/EquationVariable;->signString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 845
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/EquationVariable;->signString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 848
    .end local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 849
    const-string v2, "0"

    .line 851
    :cond_3
    return-object v2
.end method

.method private simplifySide(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "side":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/EquationVariable;>;"
    const/4 v0, 0x0

    .line 223
    .local v0, "constant":Landroid/support/constraint/solver/EquationVariable;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v6, "variables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/constraint/solver/EquationVariable;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v7, "variablesNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "sideSize":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 226
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 227
    .local v5, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->isConstant()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    if-nez v0, :cond_0

    .line 229
    move-object v0, v5

    .line 225
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, v5}, Landroid/support/constraint/solver/EquationVariable;->add(Landroid/support/constraint/solver/EquationVariable;)V

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 235
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/EquationVariable;

    .line 236
    .local v3, "original":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v3, v5}, Landroid/support/constraint/solver/EquationVariable;->add(Landroid/support/constraint/solver/EquationVariable;)V

    goto :goto_1

    .line 238
    .end local v3    # "original":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 244
    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "variablesNamesSize":I
    :goto_2
    if-ge v1, v8, :cond_5

    .line 249
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 251
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 253
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/LinearEquation;->removeNullTerms(Ljava/util/ArrayList;)V

    .line 254
    return-void
.end method


# virtual methods
.method public addArtificialVar()Landroid/support/constraint/solver/EquationVariable;
    .locals 5

    .prologue
    .line 755
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v2, 0x1

    .line 756
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextArtificialVariableName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 757
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    return-object v0
.end method

.method public balance()V
    .locals 8

    .prologue
    .line 269
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    iput-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mLeftSideSize":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 274
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 275
    .local v5, "v":Landroid/support/constraint/solver/EquationVariable;
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->inverse()Landroid/support/constraint/solver/EquationVariable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Landroid/support/constraint/solver/LinearEquation;->simplifySide(Ljava/util/ArrayList;)V

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "found":Landroid/support/constraint/solver/EquationVariable;
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mRightSideSize":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 281
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 282
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getType()Landroid/support/constraint/solver/SolverVariable$Type;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_6

    .line 283
    move-object v0, v5

    .line 287
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_3
    if-nez v0, :cond_4

    .line 288
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v2, v4, :cond_4

    .line 289
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 290
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getType()Landroid/support/constraint/solver/SolverVariable$Type;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_7

    .line 291
    move-object v0, v5

    .line 296
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_4
    if-nez v0, :cond_5

    .line 297
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v2, v4, :cond_5

    .line 298
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 299
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getType()Landroid/support/constraint/solver/SolverVariable$Type;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_8

    .line 300
    move-object v0, v5

    .line 305
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_5
    if-eqz v0, :cond_0

    .line 308
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->inverse()Landroid/support/constraint/solver/EquationVariable;

    .line 310
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/Amount;->isOne()Z

    move-result v6

    if-nez v6, :cond_a

    .line 311
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v1

    .line 312
    .local v1, "foundAmount":Landroid/support/constraint/solver/Amount;
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-ge v2, v4, :cond_9

    .line 313
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 314
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/Amount;->divide(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 280
    .end local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 288
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 316
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    .restart local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_9
    new-instance v6, Landroid/support/constraint/solver/Amount;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/support/constraint/solver/Amount;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/EquationVariable;->setAmount(Landroid/support/constraint/solver/Amount;)V

    .line 318
    .end local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_a
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Landroid/support/constraint/solver/LinearEquation;->simplifySide(Ljava/util/ArrayList;)V

    .line 319
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public clearLeftSide()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void
.end method

.method public contains(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 2
    .param p1, "solverVariable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v0, 0x1

    .line 527
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 533
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsTo()Landroid/support/constraint/solver/LinearEquation;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 167
    return-object p0
.end method

.method public getConstant()Landroid/support/constraint/solver/Amount;
    .locals 4

    .prologue
    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mRightSideSize":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 411
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/EquationVariable;

    .line 412
    .local v2, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v2}, Landroid/support/constraint/solver/EquationVariable;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v2}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v3

    .line 416
    .end local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :goto_1
    return-object v3

    .line 410
    .restart local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getFirstUnconstrainedVariable()Landroid/support/constraint/solver/EquationVariable;
    .locals 6

    .prologue
    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mLeftSideSize":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 440
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/EquationVariable;

    .line 441
    .local v3, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v3}, Landroid/support/constraint/solver/EquationVariable;->getType()Landroid/support/constraint/solver/SolverVariable$Type;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v4, v5, :cond_1

    .line 451
    .end local v3    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    :goto_1
    return-object v3

    .line 439
    .restart local v3    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mRightSideSize":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 446
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/EquationVariable;

    .line 447
    .restart local v3    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v3}, Landroid/support/constraint/solver/EquationVariable;->getType()Landroid/support/constraint/solver/SolverVariable$Type;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v4, v5, :cond_0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 451
    .end local v3    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLeftVariable()Landroid/support/constraint/solver/EquationVariable;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/EquationVariable;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightSide()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/EquationVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVariable(Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/EquationVariable;
    .locals 2
    .param p1, "solverVariable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 543
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v0

    .line 544
    .local v0, "variable":Landroid/support/constraint/solver/EquationVariable;
    if-eqz v0, :cond_0

    .line 547
    .end local v0    # "variable":Landroid/support/constraint/solver/EquationVariable;
    :goto_0
    return-object v0

    .restart local v0    # "variable":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v0

    goto :goto_0
.end method

.method public greaterThan()Landroid/support/constraint/solver/LinearEquation;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 176
    sget-object v0, Landroid/support/constraint/solver/LinearEquation$Type;->GREATER_THAN:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 177
    return-object p0
.end method

.method public hasNegativeConstant()Z
    .locals 4

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mRightSideSize":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 394
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/EquationVariable;

    .line 395
    .local v2, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v2}, Landroid/support/constraint/solver/EquationVariable;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v2}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/Amount;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    const/4 v3, 0x1

    .line 401
    .end local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :goto_1
    return v3

    .line 393
    .restart local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public i()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/LinearEquation;)V

    goto :goto_0
.end method

.method public inverse()V
    .locals 6

    .prologue
    .line 423
    new-instance v0, Landroid/support/constraint/solver/Amount;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Landroid/support/constraint/solver/Amount;-><init>(I)V

    .line 424
    .local v0, "amount":Landroid/support/constraint/solver/Amount;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mLeftSideSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 425
    iget-object v5, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/EquationVariable;

    .line 426
    .local v4, "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/EquationVariable;->multiply(Landroid/support/constraint/solver/Amount;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mRightSideSize":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 429
    iget-object v5, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/EquationVariable;

    .line 430
    .restart local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/EquationVariable;->multiply(Landroid/support/constraint/solver/Amount;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v4    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_1
    return-void
.end method

.method public isNull()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 41
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/EquationVariable;

    .line 42
    .local v0, "v1":Landroid/support/constraint/solver/EquationVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/EquationVariable;

    .line 43
    .local v1, "v2":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/support/constraint/solver/EquationVariable;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/Amount;->isNull()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/Amount;->isNull()Z

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "v1":Landroid/support/constraint/solver/EquationVariable;
    .end local v1    # "v2":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    move v2, v3

    .line 47
    goto :goto_0
.end method

.method public lowerThan()Landroid/support/constraint/solver/LinearEquation;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 186
    sget-object v0, Landroid/support/constraint/solver/LinearEquation$Type;->LOWER_THAN:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 187
    return-object p0
.end method

.method public minus(I)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 679
    mul-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearEquation;->var(I)Landroid/support/constraint/solver/LinearEquation;

    .line 680
    return-object p0
.end method

.method public minus(II)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 703
    mul-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/solver/LinearEquation;->var(II)Landroid/support/constraint/solver/LinearEquation;

    .line 704
    return-object p0
.end method

.method public minus(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "amount"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 657
    mul-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, p2}, Landroid/support/constraint/solver/LinearEquation;->var(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;

    .line 658
    return-object p0
.end method

.method public minus(Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 645
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/solver/LinearEquation;->var(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;

    .line 646
    return-object p0
.end method

.method public moveAllToTheRight()V
    .locals 5

    .prologue
    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mLeftSideSize":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 258
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/EquationVariable;

    .line 259
    .local v2, "v":Landroid/support/constraint/solver/EquationVariable;
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/support/constraint/solver/EquationVariable;->inverse()Landroid/support/constraint/solver/EquationVariable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 262
    return-void
.end method

.method public normalize()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    sget-object v1, Landroid/support/constraint/solver/LinearEquation$Type;->EQUALS:Landroid/support/constraint/solver/LinearEquation$Type;

    if-ne v0, v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 199
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    sget-object v1, Landroid/support/constraint/solver/LinearEquation$Type;->LOWER_THAN:Landroid/support/constraint/solver/LinearEquation$Type;

    if-ne v0, v1, :cond_2

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearEquation;->withSlack(I)Landroid/support/constraint/solver/LinearEquation;

    .line 204
    :cond_1
    :goto_1
    sget-object v0, Landroid/support/constraint/solver/LinearEquation$Type;->EQUALS:Landroid/support/constraint/solver/LinearEquation$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    .line 205
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    sget-object v1, Landroid/support/constraint/solver/LinearEquation$Type;->GREATER_THAN:Landroid/support/constraint/solver/LinearEquation$Type;

    if-ne v0, v1, :cond_1

    .line 202
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/LinearEquation;->withSlack(I)Landroid/support/constraint/solver/LinearEquation;

    goto :goto_1
.end method

.method public pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 9
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v8, 0x1

    .line 354
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 355
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/EquationVariable;

    invoke-virtual {v6}, Landroid/support/constraint/solver/EquationVariable;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mLeftSideSize":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 360
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 361
    .local v5, "v":Landroid/support/constraint/solver/EquationVariable;
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->inverse()Landroid/support/constraint/solver/EquationVariable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_2
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 364
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Landroid/support/constraint/solver/LinearEquation;->simplifySide(Ljava/util/ArrayList;)V

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "found":Landroid/support/constraint/solver/EquationVariable;
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mRightSideSize":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 367
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 368
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    if-ne v6, p1, :cond_4

    .line 369
    move-object v0, v5

    .line 373
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    :cond_3
    if-eqz v0, :cond_0

    .line 374
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->inverse()Landroid/support/constraint/solver/EquationVariable;

    .line 376
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/Amount;->isOne()Z

    move-result v6

    if-nez v6, :cond_6

    .line 377
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v1

    .line 378
    .local v1, "foundAmount":Landroid/support/constraint/solver/Amount;
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v2, v4, :cond_5

    .line 379
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/EquationVariable;

    .line 380
    .restart local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v5}, Landroid/support/constraint/solver/EquationVariable;->getAmount()Landroid/support/constraint/solver/Amount;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/Amount;->divide(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 366
    .end local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 382
    .end local v5    # "v":Landroid/support/constraint/solver/EquationVariable;
    .restart local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_5
    new-instance v6, Landroid/support/constraint/solver/Amount;

    invoke-direct {v6, v8}, Landroid/support/constraint/solver/Amount;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/EquationVariable;->setAmount(Landroid/support/constraint/solver/Amount;)V

    .line 384
    .end local v1    # "foundAmount":Landroid/support/constraint/solver/Amount;
    :cond_6
    iget-object v6, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public plus(I)Landroid/support/constraint/solver/LinearEquation;
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinearEquation;->var(I)Landroid/support/constraint/solver/LinearEquation;

    .line 669
    return-object p0
.end method

.method public plus(II)Landroid/support/constraint/solver/LinearEquation;
    .locals 0
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 691
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/LinearEquation;->var(II)Landroid/support/constraint/solver/LinearEquation;

    .line 692
    return-object p0
.end method

.method public plus(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 0
    .param p1, "amount"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/LinearEquation;->var(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;

    .line 635
    return-object p0
.end method

.method public plus(Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/LinearEquation;->var(Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;

    .line 623
    return-object p0
.end method

.method public remove(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 2
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 128
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v0

    .line 129
    .local v0, "ev":Landroid/support/constraint/solver/EquationVariable;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/constraint/solver/LinearEquation;->find(Landroid/support/constraint/solver/SolverVariable;Ljava/util/ArrayList;)Landroid/support/constraint/solver/EquationVariable;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    return-void
.end method

.method public replace(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearEquation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "l"    # Landroid/support/constraint/solver/LinearEquation;

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/constraint/solver/LinearEquation;->replace(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearEquation;Ljava/util/ArrayList;)V

    .line 472
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/constraint/solver/LinearEquation;->replace(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/LinearEquation;Ljava/util/ArrayList;)V

    .line 473
    return-void
.end method

.method public setLeftSide()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public setSystem(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 0
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    .line 158
    iput-object p1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 159
    return-void
.end method

.method public simplify()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearEquation;->simplifySide(Ljava/util/ArrayList;)V

    .line 214
    iget-object v0, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/LinearEquation;->simplifySide(Ljava/util/ArrayList;)V

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 816
    const-string v0, ""

    .line 817
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mLeftSide:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/LinearEquation;->sideToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 818
    sget-object v1, Landroid/support/constraint/solver/LinearEquation$1;->$SwitchMap$android$support$constraint$solver$LinearEquation$Type:[I

    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mType:Landroid/support/constraint/solver/LinearEquation$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearEquation$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 823
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mRightSide:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/support/constraint/solver/LinearEquation;->sideToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 819
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 820
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 821
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public var(I)Landroid/support/constraint/solver/LinearEquation;
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 557
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 558
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    return-object p0
.end method

.method public var(II)Landroid/support/constraint/solver/LinearEquation;
    .locals 2
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 570
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    new-instance v1, Landroid/support/constraint/solver/Amount;

    invoke-direct {v1, p1, p2}, Landroid/support/constraint/solver/Amount;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/Amount;)V

    .line 571
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public var(IILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 4
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 609
    new-instance v0, Landroid/support/constraint/solver/Amount;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/solver/Amount;-><init>(II)V

    .line 610
    .local v0, "amount":Landroid/support/constraint/solver/Amount;
    new-instance v1, Landroid/support/constraint/solver/EquationVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v1, v2, v0, p3, v3}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/Amount;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 611
    .local v1, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-object p0
.end method

.method public var(ILjava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "amount"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 596
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    return-object p0
.end method

.method public var(Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 583
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public withError()Landroid/support/constraint/solver/LinearEquation;
    .locals 3

    .prologue
    .line 731
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextErrorVariableName()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/solver/LinearEquation;->withError(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/solver/LinearEquation;->withError(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 734
    return-object p0
.end method

.method public withError(I)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 768
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextErrorVariableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/solver/LinearEquation;->withError(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 769
    return-object p0
.end method

.method public withError(Landroid/support/constraint/solver/Amount;Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 721
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/Amount;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 722
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    return-object p0
.end method

.method public withError(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strength"    # I

    .prologue
    .line 715
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p2, p1, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 716
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    return-object p0
.end method

.method public withPositiveError()Landroid/support/constraint/solver/LinearEquation;
    .locals 3

    .prologue
    .line 738
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextErrorVariableName()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/solver/LinearEquation;->withError(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 740
    return-object p0
.end method

.method public withSlack()Landroid/support/constraint/solver/LinearEquation;
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextSlackVariableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/solver/LinearEquation;->withSlack(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 797
    return-object p0
.end method

.method public withSlack(I)Landroid/support/constraint/solver/LinearEquation;
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 807
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextSlackVariableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/solver/LinearEquation;->withSlack(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;

    .line 808
    return-object p0
.end method

.method public withSlack(Landroid/support/constraint/solver/Amount;Ljava/lang/String;)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 786
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/Amount;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 787
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    return-object p0
.end method

.method public withSlack(Ljava/lang/String;I)Landroid/support/constraint/solver/LinearEquation;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strength"    # I

    .prologue
    .line 780
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1, p2, p1, v2}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 781
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v1, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    return-object p0
.end method

.method public withStrongError()Landroid/support/constraint/solver/LinearEquation;
    .locals 6

    .prologue
    .line 744
    invoke-static {}, Landroid/support/constraint/solver/LinearEquation;->getNextErrorVariableName()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 746
    .local v0, "e":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->setStrength(Landroid/support/constraint/solver/SolverVariable$Strength;)V

    .line 747
    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v0, Landroid/support/constraint/solver/EquationVariable;

    .end local v0    # "e":Landroid/support/constraint/solver/EquationVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/support/constraint/solver/EquationVariable;-><init>(Landroid/support/constraint/solver/LinearSystem;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 749
    .restart local v0    # "e":Landroid/support/constraint/solver/EquationVariable;
    invoke-virtual {v0}, Landroid/support/constraint/solver/EquationVariable;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/SolverVariable;->setStrength(Landroid/support/constraint/solver/SolverVariable$Strength;)V

    .line 750
    iget-object v2, p0, Landroid/support/constraint/solver/LinearEquation;->mCurrentSide:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    return-object p0
.end method
