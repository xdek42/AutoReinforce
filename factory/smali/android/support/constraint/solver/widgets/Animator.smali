.class public Landroid/support/constraint/solver/widgets/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/Animator$Frame;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final USE_EASE_IN_OUT:Z = true

.field private static sAllowsAnimation:Z


# instance fields
.field private animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

.field private animDuration:J

.field private animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

.field private animStartTime:J

.field private animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

.field private mAnimating:Z

.field private final mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/constraint/solver/widgets/Animator;->sAllowsAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/support/constraint/solver/widgets/Animator$Frame;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Animator$Frame;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    .line 25
    new-instance v0, Landroid/support/constraint/solver/widgets/Animator$Frame;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Animator$Frame;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    .line 26
    new-instance v0, Landroid/support/constraint/solver/widgets/Animator$Frame;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Animator$Frame;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animStartTime:J

    .line 29
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animDuration:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mAnimating:Z

    .line 48
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 49
    return-void
.end method

.method public static EaseInOutinterpolator(DDD)D
    .locals 8
    .param p0, "progress"    # D
    .param p2, "begin"    # D
    .param p4, "end"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 61
    sub-double v2, p4, p2

    div-double v0, v2, v4

    .line 62
    .local v0, "change":D
    mul-double/2addr p0, v4

    .line 63
    cmpg-double v2, p0, v6

    if-gez v2, :cond_0

    .line 64
    mul-double v2, v0, p0

    mul-double/2addr v2, p0

    add-double/2addr v2, p2

    .line 67
    :goto_0
    return-wide v2

    .line 66
    :cond_0
    sub-double/2addr p0, v6

    .line 67
    neg-double v2, v0

    sub-double v4, p0, v4

    mul-double/2addr v4, p0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v2, p2

    goto :goto_0
.end method

.method public static doAnimation()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Landroid/support/constraint/solver/widgets/Animator;->sAllowsAnimation:Z

    return v0
.end method

.method private static interpolator(FFF)I
    .locals 6
    .param p0, "progress"    # F
    .param p1, "begin"    # F
    .param p2, "end"    # F

    .prologue
    .line 76
    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/Animator;->EaseInOutinterpolator(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static isAnimationEnabled()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/support/constraint/solver/widgets/Animator;->sAllowsAnimation:Z

    return v0
.end method

.method private static linearInterpolator(FFF)F
    .locals 2
    .param p0, "progress"    # F
    .param p1, "begin"    # F
    .param p2, "end"    # F

    .prologue
    .line 71
    mul-float v0, p2, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static setAnimationEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 36
    sput-boolean p0, Landroid/support/constraint/solver/widgets/Animator;->sAllowsAnimation:Z

    .line 37
    return-void
.end method


# virtual methods
.method public animate(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/Animator$Frame;->set(IIII)V

    .line 109
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Animator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawX()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawY()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 112
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawRight()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 113
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawBottom()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawX()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawY()I

    move-result v2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 120
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->mWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 121
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getInternalDrawBottom()I

    move-result v4

    .line 119
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Animator$Frame;->set(IIII)V

    .line 122
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Animator;->start()V

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Animator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/Animator$Frame;->set(IIII)V

    .line 128
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Animator;->step()V

    .line 130
    :cond_2
    return-void
.end method

.method public getCurrentBottom()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v0, v0, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    return v0
.end method

.method public getCurrentLeft()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v0, v0, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    return v0
.end method

.method public getCurrentRight()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v0, v0, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    return v0
.end method

.method public getCurrentTop()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v0, v0, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mAnimating:Z

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/constraint/solver/widgets/Animator;->animStartTime:J

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Animator;->mAnimating:Z

    .line 58
    return-void
.end method

.method public step()V
    .locals 8

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "currentTime":J
    iget-wide v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStartTime:J

    iget-wide v6, p0, Landroid/support/constraint/solver/widgets/Animator;->animDuration:J

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    iget-wide v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStartTime:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 84
    iget-wide v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStartTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    iget-wide v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animDuration:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 86
    .local v2, "progress":F
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v5, v5, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/support/constraint/solver/widgets/Animator;->interpolator(FFF)I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    .line 87
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v5, v5, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/support/constraint/solver/widgets/Animator;->interpolator(FFF)I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    .line 88
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v5, v5, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/support/constraint/solver/widgets/Animator;->interpolator(FFF)I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    .line 89
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animStart:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v5, v5, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/support/constraint/solver/widgets/Animator;->interpolator(FFF)I

    move-result v4

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    .line 97
    .end local v2    # "progress":F
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->left:I

    .line 92
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->top:I

    .line 93
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->right:I

    .line 94
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Animator;->animCurrent:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/Animator;->animTarget:Landroid/support/constraint/solver/widgets/Animator$Frame;

    iget v4, v4, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/Animator$Frame;->bottom:I

    .line 95
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/Animator;->mAnimating:Z

    goto :goto_0
.end method
