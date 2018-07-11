.class Landroid/support/v7/util/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "oldListStart"    # I
    .param p2, "oldListEnd"    # I
    .param p3, "newListStart"    # I
    .param p4, "newListEnd"    # I

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 399
    iput p2, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 400
    iput p3, p0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 401
    iput p4, p0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 402
    return-void
.end method
