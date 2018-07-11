.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static HORIZONTAL:I

.field public static final PARENT_ID:I

.field public static UNSET:I

.field public static VERTICAL:I


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public horizontalBias:F

.field horizontalLock:Z

.field public isGuideline:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public needsBaseline:Z

.field public orientation:I

.field originalLeftToLeft:I

.field originalLeftToRight:I

.field originalRightToLeft:I

.field originalRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field verticalLock:Z

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, -0x1

    sput v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    .line 626
    const/4 v0, 0x0

    sput v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->HORIZONTAL:I

    .line 627
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->VERTICAL:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 814
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 629
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 630
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 631
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 632
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 633
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 635
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 636
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 637
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 638
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 639
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 640
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 641
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 642
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 643
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 645
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 646
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 647
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 648
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 650
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 651
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 654
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 655
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 657
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 660
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 661
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 663
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToLeft:I

    .line 664
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToRight:I

    .line 665
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToLeft:I

    .line 666
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToRight:I

    .line 668
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 815
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 671
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 629
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 630
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 631
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 632
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 633
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    int-to-float v10, v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 635
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 636
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 637
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 638
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 639
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 640
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 641
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 642
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 643
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 645
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 646
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 647
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 648
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 650
    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 651
    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 652
    const/4 v10, 0x0

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 654
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 655
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 657
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 660
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 661
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 663
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToLeft:I

    .line 664
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToRight:I

    .line 665
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToLeft:I

    .line 666
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToRight:I

    .line 668
    new-instance v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 673
    sget-object v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 674
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 675
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1b

    .line 676
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 677
    .local v2, "attr":I
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    if-ne v2, v10, :cond_2

    .line 678
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 679
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_0

    .line 680
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 682
    :cond_0
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToLeft:I

    .line 675
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 683
    :cond_2
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    if-ne v2, v10, :cond_4

    .line 684
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 685
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_3

    .line 686
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 688
    :cond_3
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToRight:I

    goto :goto_1

    .line 689
    :cond_4
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    if-ne v2, v10, :cond_6

    .line 690
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 691
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_5

    .line 692
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 694
    :cond_5
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToLeft:I

    goto :goto_1

    .line 695
    :cond_6
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    if-ne v2, v10, :cond_8

    .line 696
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 697
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_7

    .line 698
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 700
    :cond_7
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToRight:I

    goto :goto_1

    .line 701
    :cond_8
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    if-ne v2, v10, :cond_9

    .line 702
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 703
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 704
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto :goto_1

    .line 706
    :cond_9
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    if-ne v2, v10, :cond_a

    .line 707
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 708
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 709
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1

    .line 711
    :cond_a
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    if-ne v2, v10, :cond_b

    .line 712
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 713
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 714
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_1

    .line 716
    :cond_b
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    if-ne v2, v10, :cond_c

    .line 717
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 718
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 719
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_1

    .line 721
    :cond_c
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    if-ne v2, v10, :cond_d

    .line 722
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 723
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 724
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_1

    .line 726
    :cond_d
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    if-ne v2, v10, :cond_e

    .line 727
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_1

    .line 728
    :cond_e
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    if-ne v2, v10, :cond_f

    .line 729
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_1

    .line 730
    :cond_f
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    if-ne v2, v10, :cond_10

    .line 731
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_1

    .line 732
    :cond_10
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    if-ne v2, v10, :cond_11

    .line 733
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_1

    .line 734
    :cond_11
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    if-ne v2, v10, :cond_12

    .line 735
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_1

    .line 736
    :cond_12
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v2, v10, :cond_13

    .line 737
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_1

    .line 738
    :cond_13
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    if-ne v2, v10, :cond_14

    .line 739
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 740
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 741
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1

    .line 743
    :cond_14
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    if-ne v2, v10, :cond_15

    .line 744
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 745
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 746
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_1

    .line 748
    :cond_15
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    if-ne v2, v10, :cond_16

    .line 749
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 750
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 751
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_1

    .line 753
    :cond_16
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    if-ne v2, v10, :cond_17

    .line 754
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 755
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1

    .line 756
    sget v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_1

    .line 758
    :cond_17
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    if-ne v2, v10, :cond_18

    .line 759
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_1

    .line 760
    :cond_18
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    if-ne v2, v10, :cond_19

    .line 761
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_1

    .line 762
    :cond_19
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    if-ne v2, v10, :cond_1a

    .line 763
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 764
    .local v9, "ratio":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 765
    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 766
    .local v3, "colonIndex":I
    if-ltz v3, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_1

    .line 767
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 768
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 771
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 772
    .local v8, "nominatorValue":F
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 773
    .local v5, "denominatorValue":F
    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-lez v10, :cond_1

    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_1

    .line 774
    div-float v10, v8, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 776
    .end local v5    # "denominatorValue":F
    .end local v8    # "nominatorValue":F
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 782
    .end local v3    # "colonIndex":I
    .end local v4    # "denominator":Ljava/lang/String;
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v9    # "ratio":Ljava/lang/String;
    :cond_1a
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    if-eq v2, v10, :cond_1

    .line 784
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    if-eq v2, v10, :cond_1

    .line 786
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    if-eq v2, v10, :cond_1

    .line 788
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    if-eq v2, v10, :cond_1

    .line 790
    sget v10, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    if-eq v2, v10, :cond_1

    .line 793
    const-string v10, "ConstraintLayout"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown attribute 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 797
    .end local v2    # "attr":I
    :cond_1b
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-nez v10, :cond_1c

    .line 798
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 800
    :cond_1c
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-nez v10, :cond_1d

    .line 801
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 803
    :cond_1d
    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1e

    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v10, v11, :cond_1e

    iget v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    sget v11, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v10, v11, :cond_1f

    .line 804
    :cond_1e
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 805
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 806
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 807
    iget-object v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v10, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v10, :cond_1f

    .line 808
    new-instance v10, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v10}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v10, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 811
    :cond_1f
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 818
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 630
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 631
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 632
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 633
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 635
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 636
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 637
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 638
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 639
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 640
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 641
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 642
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 643
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 645
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 646
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 647
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 648
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 650
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 651
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 654
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 655
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 657
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 660
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 661
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 663
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToLeft:I

    .line 664
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToRight:I

    .line 665
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToLeft:I

    .line 666
    sget v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToRight:I

    .line 668
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 819
    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 834
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 836
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToLeft:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 837
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalRightToRight:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 838
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToRight:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 839
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->originalLeftToLeft:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 841
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 842
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 843
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_0

    .line 844
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 846
    :cond_0
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_1

    .line 847
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 849
    :cond_1
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_2

    .line 850
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 852
    :cond_2
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_3

    .line 853
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 869
    :cond_3
    :goto_1
    return-void

    .line 841
    .end local v0    # "isRtl":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 856
    .restart local v0    # "isRtl":Z
    :cond_5
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_6

    .line 857
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 859
    :cond_6
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_7

    .line 860
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 862
    :cond_7
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_8

    .line 863
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 865
    :cond_8
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    sget v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v1, v2, :cond_3

    .line 866
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_1
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 824
    :try_start_0
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 825
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method
