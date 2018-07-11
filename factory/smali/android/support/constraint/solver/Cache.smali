.class public Landroid/support/constraint/solver/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static final POOL_SIZE:I = 0x1000


# instance fields
.field public arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/Pools$Pool",
            "<",
            "Landroid/support/constraint/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field public linkedSolverVariablePool:Landroid/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/Pools$Pool",
            "<",
            "Landroid/support/constraint/solver/SolverVariable$Link;",
            ">;"
        }
    .end annotation
.end field

.field public linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/Pools$Pool",
            "<",
            "Landroid/support/constraint/solver/LinkedVariables$Link;",
            ">;"
        }
    .end annotation
.end field

.field public mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

.field public solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/Pools$Pool",
            "<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/constraint/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/Cache;->linkedVariablesPool:Landroid/support/constraint/solver/Pools$Pool;

    .line 26
    new-instance v0, Landroid/support/constraint/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    .line 27
    new-instance v0, Landroid/support/constraint/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    .line 28
    new-instance v0, Landroid/support/constraint/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/Cache;->linkedSolverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    .line 30
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    return-void
.end method
