.class Landroid/support/design/widget/FloatingActionButtonGingerbread;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
    }
.end annotation


# instance fields
.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field private final mStateListAnimator:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 3
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;
    .param p3, "animatorCreator"    # Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 44
    new-instance v0, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {v0}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 47
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    .line 48
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    .line 50
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    .line 53
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 55
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    .line 56
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 57
    return-void
.end method

.method private createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 4
    .param p1, "impl"    # Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Creator;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v0

    .line 210
    .local v0, "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 214
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 215
    return-object v0
.end method

.method private static createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "selectedColor"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 279
    new-array v2, v3, [[I

    .line 280
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 281
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 283
    .local v1, "i":I
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->FOCUSED_ENABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 284
    aput p0, v0, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 288
    aput p0, v0, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 292
    new-array v3, v4, [I

    aput-object v3, v2, v1

    .line 293
    aput v4, v0, v1

    .line 294
    add-int/lit8 v1, v1, 0x1

    .line 296
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method getElevation()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    .line 206
    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 155
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 156
    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_out:I

    .line 155
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 144
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 139
    return-void
.end method

.method onElevationsChanged(FF)V
    .locals 2
    .param p1, "elevation"    # F
    .param p2, "pressedTranslationZ"    # F

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 132
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->updatePadding()V

    .line 134
    :cond_0
    return-void
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 10
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # I
    .param p4, "borderWidth"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    .line 75
    .local v7, "touchFeedbackShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 79
    if-lez p4, :cond_1

    .line 80
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 81
    const/4 v0, 0x3

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v0, v6, v9

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v3

    .line 87
    .local v6, "layers":[Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance v0, Landroid/support/design/widget/ShadowDrawableWrapper;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 90
    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 92
    invoke-interface {v3}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    iget v5, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    iget v8, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void

    .line 83
    .end local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 84
    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v9

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v2

    .restart local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 107
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    :cond_0
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "rippleColor"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_0
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 181
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 182
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 183
    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_in:I

    .line 182
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 184
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
