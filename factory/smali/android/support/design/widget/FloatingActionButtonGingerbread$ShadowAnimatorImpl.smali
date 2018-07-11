.class abstract Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "FloatingActionButtonGingerbread.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private mShadowSizeEnd:F

.field private mShadowSizeStart:F

.field private mValidValues:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/FloatingActionButtonGingerbread;
    .param p2, "x1"    # Landroid/support/design/widget/FloatingActionButtonGingerbread$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    .line 240
    return-void
.end method

.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 4
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    .line 228
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    sub-float/2addr v2, v3

    .line 233
    invoke-virtual {p1}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 232
    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 234
    return-void
.end method
