.class final Landroid/support/constraint/solver/SolverVariable$Link;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Link"
.end annotation


# instance fields
.field next:Landroid/support/constraint/solver/SolverVariable$Link;

.field row:Landroid/support/constraint/solver/ArrayRow;

.field final synthetic this$0:Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable$Link;->this$0:Landroid/support/constraint/solver/SolverVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
