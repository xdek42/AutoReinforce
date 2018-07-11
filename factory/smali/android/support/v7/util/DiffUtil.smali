.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 24
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "detectMoves"    # Z

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v18

    .line 110
    .local v18, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v17

    .line 112
    .local v17, "newSize":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v12, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v23, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v2, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int v2, v18, v17

    sub-int v3, v18, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v9, v2, v3

    .line 124
    .local v9, "max":I
    mul-int/lit8 v2, v9, 0x2

    new-array v7, v2, [I

    .line 125
    .local v7, "forward":[I
    mul-int/lit8 v2, v9, 0x2

    new-array v8, v2, [I

    .line 128
    .local v8, "backward":[I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v20, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 130
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v7/util/DiffUtil$Range;

    .line 131
    .local v19, "range":Landroid/support/v7/util/DiffUtil$Range;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v22

    .line 133
    .local v22, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v22, :cond_6

    .line 134
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v2, :cond_0

    .line 135
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 139
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 142
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v16, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    .line 144
    .local v16, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_1
    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 145
    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 146
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_2

    .line 147
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 148
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 158
    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v21, v19

    .line 163
    .local v21, "right":Landroid/support/v7/util/DiffUtil$Range;
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_5

    .line 164
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_4

    .line 165
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 166
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 175
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    .end local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 142
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Range;

    move-object/from16 v16, v2

    goto :goto_1

    .line 150
    .restart local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    :cond_2
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_3

    .line 151
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 152
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 154
    :cond_3
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 155
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 168
    .restart local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_4
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 169
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 172
    :cond_5
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 173
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 177
    .end local v16    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v21    # "right":Landroid/support/v7/util/DiffUtil$Range;
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    .end local v19    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v22    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_7
    sget-object v2, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object/from16 v11, p0

    move-object v13, v7

    move-object v14, v8

    move/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 16
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .prologue
    .line 190
    sub-int v8, p2, p1

    .line 191
    .local v8, "oldSize":I
    sub-int v7, p4, p3

    .line 193
    .local v7, "newSize":I
    sub-int v13, p2, p1

    const/4 v14, 0x1

    if-lt v13, v14, :cond_0

    sub-int v13, p4, p3

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 194
    :cond_0
    const/4 v9, 0x0

    .line 268
    :goto_0
    return-object v9

    .line 197
    :cond_1
    sub-int v5, v8, v7

    .line 198
    .local v5, "delta":I
    add-int v13, v8, v7

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v4, v13, 0x2

    .line 199
    .local v4, "dLimit":I
    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v13, v14, v15}, Ljava/util/Arrays;->fill([IIII)V

    .line 200
    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v13, v5

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v5

    move-object/from16 v0, p6

    invoke-static {v0, v13, v14, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 201
    rem-int/lit8 v13, v5, 0x2

    if-eqz v13, :cond_3

    const/4 v2, 0x1

    .line 202
    .local v2, "checkInFwd":Z
    :goto_1
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_2
    if-gt v3, v4, :cond_d

    .line 203
    neg-int v6, v3

    .local v6, "k":I
    :goto_3
    if-gt v6, v3, :cond_7

    .line 208
    neg-int v13, v3

    if-eq v6, v13, :cond_2

    if-eq v6, v3, :cond_4

    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int v14, p7, v6

    add-int/lit8 v14, v14, 0x1

    aget v14, p5, v14

    if-ge v13, v14, :cond_4

    .line 209
    :cond_2
    add-int v13, p7, v6

    add-int/lit8 v13, v13, 0x1

    aget v11, p5, v13

    .line 210
    .local v11, "x":I
    const/4 v10, 0x0

    .line 216
    .local v10, "removal":Z
    :goto_4
    sub-int v12, v11, v6

    .line 218
    .local v12, "y":I
    :goto_5
    if-ge v11, v8, :cond_5

    if-ge v12, v7, :cond_5

    add-int v13, p1, v11

    add-int v14, p3, v12

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 220
    add-int/lit8 v11, v11, 0x1

    .line 221
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 201
    .end local v2    # "checkInFwd":Z
    .end local v3    # "d":I
    .end local v6    # "k":I
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 212
    .restart local v2    # "checkInFwd":Z
    .restart local v3    # "d":I
    .restart local v6    # "k":I
    :cond_4
    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int/lit8 v11, v13, 0x1

    .line 213
    .restart local v11    # "x":I
    const/4 v10, 0x1

    .restart local v10    # "removal":Z
    goto :goto_4

    .line 223
    .restart local v12    # "y":I
    :cond_5
    add-int v13, p7, v6

    aput v11, p5, v13

    .line 224
    if-eqz v2, :cond_6

    sub-int v13, v5, v3

    add-int/lit8 v13, v13, 0x1

    if-lt v6, v13, :cond_6

    add-int v13, v5, v3

    add-int/lit8 v13, v13, -0x1

    if-gt v6, v13, :cond_6

    .line 225
    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    if-lt v13, v14, :cond_6

    .line 226
    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 227
    .local v9, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v13, p7, v6

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 228
    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v6

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 229
    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 230
    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 231
    const/4 v13, 0x0

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    goto/16 :goto_0

    .line 203
    .end local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_6
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 236
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_7
    neg-int v6, v3

    :goto_6
    if-gt v6, v3, :cond_c

    .line 238
    add-int v1, v6, v5

    .line 241
    .local v1, "backwardK":I
    add-int v13, v3, v5

    if-eq v1, v13, :cond_8

    neg-int v13, v3

    add-int/2addr v13, v5

    if-eq v1, v13, :cond_9

    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v13, p6, v13

    add-int v14, p7, v1

    add-int/lit8 v14, v14, 0x1

    aget v14, p6, v14

    if-ge v13, v14, :cond_9

    .line 243
    :cond_8
    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v11, p6, v13

    .line 244
    .restart local v11    # "x":I
    const/4 v10, 0x0

    .line 251
    .restart local v10    # "removal":Z
    :goto_7
    sub-int v12, v11, v1

    .line 253
    .restart local v12    # "y":I
    :goto_8
    if-lez v11, :cond_a

    if-lez v12, :cond_a

    add-int v13, p1, v11

    add-int/lit8 v13, v13, -0x1

    add-int v14, p3, v12

    add-int/lit8 v14, v14, -0x1

    .line 254
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 255
    add-int/lit8 v11, v11, -0x1

    .line 256
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 246
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_9
    add-int v13, p7, v1

    add-int/lit8 v13, v13, 0x1

    aget v13, p6, v13

    add-int/lit8 v11, v13, -0x1

    .line 247
    .restart local v11    # "x":I
    const/4 v10, 0x1

    .restart local v10    # "removal":Z
    goto :goto_7

    .line 258
    .restart local v12    # "y":I
    :cond_a
    add-int v13, p7, v1

    aput v11, p6, v13

    .line 259
    if-nez v2, :cond_b

    add-int v13, v6, v5

    neg-int v14, v3

    if-lt v13, v14, :cond_b

    add-int v13, v6, v5

    if-gt v13, v3, :cond_b

    .line 260
    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    if-lt v13, v14, :cond_b

    .line 261
    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 262
    .restart local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v13, p7, v1

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 263
    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v1

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 264
    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 266
    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 267
    const/4 v13, 0x1

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    goto/16 :goto_0

    .line 236
    .end local v9    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_b
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_6

    .line 202
    .end local v1    # "backwardK":I
    .end local v10    # "removal":Z
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 273
    .end local v6    # "k":I
    :cond_d
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
.end method
