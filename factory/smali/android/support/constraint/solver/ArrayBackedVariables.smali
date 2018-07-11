.class Landroid/support/constraint/solver/ArrayBackedVariables;
.super Ljava/lang/Object;
.source "ArrayBackedVariables.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field private currentSize:I

.field private currentWriteSize:I

.field private indexes:[I

.field private maxSize:I

.field private final threshold:I

.field private values:[F

.field private variables:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .locals 3
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    .line 28
    iput-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    .line 29
    iput-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    .line 30
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->threshold:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    .line 32
    iput v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    .line 33
    iput v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 34
    iput-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 37
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    .line 38
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    .line 39
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    .line 40
    return-void
.end method

.method private getInternalArrays()Ljava/lang/String;
    .locals 5

    .prologue
    .line 308
    const-string v2, ""

    .line 309
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayBackedVariables;->size()I

    move-result v0

    .line 310
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "idx { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "obj { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    return-object v2
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 10
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 176
    cmpl-float v5, p2, v9

    if-nez v5, :cond_2

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 226
    .local v0, "firstEmptyIndex":I
    .local v1, "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayBackedVariables;->increaseSize()V

    .line 180
    .end local v0    # "firstEmptyIndex":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, -0x1

    .line 181
    .restart local v0    # "firstEmptyIndex":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    if-ge v1, v5, :cond_6

    .line 182
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v1

    if-ne v5, p1, :cond_4

    .line 183
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v6, v5, v1

    add-float/2addr v6, p2

    aput v6, v5, v1

    .line 184
    cmpg-float v5, p2, v9

    if-gez v5, :cond_3

    .line 185
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 187
    :cond_3
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v9

    if-nez v5, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayBackedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    goto :goto_0

    .line 192
    :cond_4
    if-ne v0, v7, :cond_5

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v1

    if-nez v5, :cond_5

    .line 193
    move v0, v1

    .line 181
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_6
    if-ne v0, v7, :cond_7

    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    if-ge v5, v6, :cond_7

    .line 197
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 199
    :cond_7
    if-eq v0, v7, :cond_1

    .line 200
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aput-object p1, v5, v0

    .line 201
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aput p2, v5, v0

    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "inserted":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v4, v5, :cond_8

    .line 205
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v2, v5, v4

    .line 206
    .local v2, "index":I
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-le v5, v6, :cond_b

    .line 208
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    sub-int/2addr v8, v4

    invoke-static {v5, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aput v0, v5, v4

    .line 210
    const/4 v3, 0x1

    .line 214
    .end local v2    # "index":I
    :cond_8
    if-nez v3, :cond_9

    .line 215
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    aput v0, v5, v6

    .line 217
    :cond_9
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    .line 218
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    if-le v5, v6, :cond_a

    .line 219
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 221
    :cond_a
    cmpg-float v5, p2, v9

    if-gez v5, :cond_0

    .line 222
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    goto/16 :goto_0

    .line 204
    .restart local v2    # "index":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 233
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iput v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    .line 236
    iput v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 237
    return-void
.end method

.method public containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 8
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v5, 0x1

    .line 240
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    .line 241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v2, v6, :cond_4

    .line 242
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    if-ne v6, p1, :cond_1

    .line 261
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v5

    .line 241
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    .line 248
    .local v4, "start":I
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    add-int/lit8 v1, v6, -0x1

    .line 249
    .local v1, "end":I
    :goto_2
    if-gt v4, v1, :cond_4

    .line 250
    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v3, v4, v6

    .line 251
    .local v3, "index":I
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v7, v7, v3

    aget-object v0, v6, v7

    .line 252
    .local v0, "current":Landroid/support/constraint/solver/SolverVariable;
    if-eq v0, p1, :cond_0

    .line 254
    iget v6, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_3

    .line 255
    add-int/lit8 v4, v3, 0x1

    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v1, v3, -0x1

    goto :goto_2

    .line 261
    .end local v0    # "current":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "end":I
    .end local v3    # "index":I
    .end local v4    # "start":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public display()V
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayBackedVariables;->size()I

    move-result v0

    .line 300
    .local v0, "count":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayBackedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayBackedVariables;->getVariableValue(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public displayInternalArrays()V
    .locals 5

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayBackedVariables;->size()I

    move-result v0

    .line 325
    .local v0, "count":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "idx { "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "obj { "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 332
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public divideByAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 352
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 8
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 95
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v2, v6, :cond_4

    .line 97
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v3, v6, v2

    .line 98
    .local v3, "idx":I
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v6, v6, v3

    if-ne v6, p1, :cond_0

    .line 99
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v6, v6, v3

    .line 118
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :goto_1
    return v6

    .line 96
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :cond_1
    const/4 v5, 0x0

    .line 104
    .local v5, "start":I
    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    add-int/lit8 v1, v6, -0x1

    .line 105
    .local v1, "end":I
    :goto_2
    if-gt v5, v1, :cond_4

    .line 106
    sub-int v6, v1, v5

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 107
    .local v4, "index":I
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v3, v6, v4

    .line 108
    .restart local v3    # "idx":I
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v0, v6, v3

    .line 109
    .local v0, "current":Landroid/support/constraint/solver/SolverVariable;
    if-ne v0, p1, :cond_2

    .line 110
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v6, v6, v3

    goto :goto_1

    .line 111
    :cond_2
    iget v6, v0, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_3

    .line 112
    add-int/lit8 v5, v4, 0x1

    goto :goto_2

    .line 114
    :cond_3
    add-int/lit8 v1, v4, -0x1

    goto :goto_2

    .line 118
    .end local v0    # "current":Landroid/support/constraint/solver/SolverVariable;
    .end local v1    # "end":I
    .end local v3    # "idx":I
    .end local v4    # "index":I
    .end local v5    # "start":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v2, :cond_0

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v0, v2, :cond_0

    .line 45
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v1, v2, v0

    .line 46
    .local v1, "idx":I
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 47
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    iput-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 52
    .end local v0    # "i":I
    .end local v1    # "idx":I
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    return-object v2

    .line 44
    .restart local v0    # "i":I
    .restart local v1    # "idx":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getVariableValue(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public hasAtLeastOnePositiveVariable()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method increaseSize()V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    .line 57
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    .line 58
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    .line 59
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    .line 60
    return-void
.end method

.method public invert()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 10
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 122
    cmpl-float v5, p2, v9

    if-nez v5, :cond_2

    .line 123
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayBackedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 170
    .local v0, "firstEmptyIndex":I
    .local v1, "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayBackedVariables;->increaseSize()V

    .line 127
    .end local v0    # "firstEmptyIndex":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, -0x1

    .line 128
    .restart local v0    # "firstEmptyIndex":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    if-ge v1, v5, :cond_5

    .line 129
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v1

    if-ne v5, p1, :cond_3

    .line 130
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aput p2, v5, v1

    .line 131
    cmpg-float v5, p2, v9

    if-gez v5, :cond_0

    .line 132
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_0

    .line 136
    :cond_3
    if-ne v0, v7, :cond_4

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v1

    if-nez v5, :cond_4

    .line 137
    move v0, v1

    .line 128
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_5
    if-ne v0, v7, :cond_6

    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    if-ge v5, v6, :cond_6

    .line 141
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 143
    :cond_6
    if-eq v0, v7, :cond_1

    .line 144
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aput-object p1, v5, v0

    .line 145
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aput p2, v5, v0

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "inserted":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v4, v5, :cond_7

    .line 149
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v2, v5, v4

    .line 150
    .local v2, "index":I
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-le v5, v6, :cond_a

    .line 152
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    sub-int/2addr v8, v4

    invoke-static {v5, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aput v0, v5, v4

    .line 154
    const/4 v3, 0x1

    .line 158
    .end local v2    # "index":I
    :cond_7
    if-nez v3, :cond_8

    .line 159
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    aput v0, v5, v6

    .line 161
    :cond_8
    iget v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    .line 162
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    if-le v5, v6, :cond_9

    .line 163
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    .line 165
    :cond_9
    cmpg-float v5, p2, v9

    if-gez v5, :cond_0

    .line 166
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_0

    .line 148
    .restart local v2    # "index":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public remove(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 7
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v3, p1, :cond_0

    .line 270
    iput-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 272
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    if-ge v1, v3, :cond_2

    .line 273
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v2, v3, v1

    .line 274
    .local v2, "idx":I
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    .line 275
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v0, v3, v2

    .line 276
    .local v0, "amount":F
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aput-object v4, v3, v2

    .line 277
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    iget v6, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentWriteSize:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    .line 286
    .end local v0    # "amount":F
    .end local v2    # "idx":I
    :goto_1
    return v0

    .line 272
    .restart local v2    # "idx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "idx":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVariable(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 87
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v0, v1, p1

    .line 88
    .local v0, "idx":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aput p2, v1, v0

    .line 89
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "size":I
    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 292
    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 293
    iget v1, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->maxSize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 294
    add-int/lit8 v0, v0, 0x10

    .line 295
    return v0
.end method

.method public final updateArray(Landroid/support/constraint/solver/ArrayBackedVariables;F)V
    .locals 5
    .param p1, "target"    # Landroid/support/constraint/solver/ArrayBackedVariables;
    .param p2, "amount"    # F

    .prologue
    .line 75
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_1

    .line 84
    :cond_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->currentSize:I

    if-ge v0, v4, :cond_0

    .line 79
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->indexes:[I

    aget v1, v4, v0

    .line 80
    .local v1, "idx":I
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->variables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v4, v1

    .line 81
    .local v2, "v":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayBackedVariables;->values:[F

    aget v3, v4, v1

    .line 82
    .local v3, "value":F
    mul-float v4, v3, p2

    invoke-virtual {p1, v2, v4}, Landroid/support/constraint/solver/ArrayBackedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 0
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 356
    return-void
.end method

.method public updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .locals 0
    .param p1, "arrayRow"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 339
    return-void
.end method

.method public updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .locals 0
    .param p1, "goal"    # Landroid/support/constraint/solver/ArrayRow;
    .param p2, "mRows"    # [Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 348
    return-void
.end method
