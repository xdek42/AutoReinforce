.class Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplGingerbread.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final HANDLER_DELAY:I = 0xa

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAnimatedFraction:F

.field private mDuration:J

.field private final mFloatValues:[F

.field private final mIntValues:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRunning:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    .line 44
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    .line 49
    new-instance v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;)V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private dispatchAnimationCancel()V
    .locals 3

    .prologue
    .line 207
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchAnimationEnd()V
    .locals 3

    .prologue
    .line 215
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchAnimationStart()V
    .locals 3

    .prologue
    .line 199
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchAnimationUpdate()V
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    iget-object v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    .line 136
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationCancel()V

    .line 139
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    .line 140
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    .line 151
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    .line 154
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    .line 155
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    .line 157
    :cond_0
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    .line 131
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 2
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 120
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 121
    return-void
.end method

.method public setIntValues(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 109
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 110
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    .line 69
    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->startInternal()V

    goto :goto_0
.end method

.method final startInternal()V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    .line 74
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    .line 75
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationStart()V

    .line 77
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method final update()V
    .locals 10

    .prologue
    .line 165
    iget-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    sub-long v0, v4, v6

    .line 168
    .local v0, "elapsed":J
    long-to-float v3, v0

    iget-wide v4, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result v2

    .line 169
    .local v2, "linearFraction":F
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .end local v2    # "linearFraction":F
    :cond_0
    iput v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    .line 174
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    iget-wide v8, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 178
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    .line 180
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    .line 184
    .end local v0    # "elapsed":J
    :cond_1
    iget-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v3, :cond_2

    .line 186
    sget-object v3, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :cond_2
    return-void
.end method
