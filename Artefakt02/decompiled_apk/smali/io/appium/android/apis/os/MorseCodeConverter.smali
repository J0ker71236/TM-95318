.class Lio/appium/android/apis/os/MorseCodeConverter;
.super Ljava/lang/Object;
.source "MorseCodeConverter.java"


# static fields
.field static final DASH:J = 0x12cL

.field static final DOT:J = 0x64L

.field private static final ERROR_GAP:[J

.field static final GAP:J = 0x64L

.field private static final LETTERS:[[J

.field static final LETTER_GAP:J = 0x12cL

.field private static final NUMBERS:[[J

.field private static final SPEED_BASE:J = 0x64L

.field static final WORD_GAP:J = 0x2bcL


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 29
    const/16 v0, 0x1a

    new-array v0, v0, [[J

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x7

    new-array v4, v2, [J

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v0, v5

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    const/4 v6, 0x2

    aput-object v4, v0, v6

    const/4 v4, 0x5

    new-array v7, v4, [J

    fill-array-data v7, :array_3

    aput-object v7, v0, v1

    new-array v7, v5, [J

    const-wide/16 v8, 0x64

    aput-wide v8, v7, v3

    const/4 v10, 0x4

    aput-object v7, v0, v10

    new-array v7, v2, [J

    fill-array-data v7, :array_4

    aput-object v7, v0, v4

    new-array v7, v4, [J

    fill-array-data v7, :array_5

    const/4 v11, 0x6

    aput-object v7, v0, v11

    new-array v7, v2, [J

    fill-array-data v7, :array_6

    aput-object v7, v0, v2

    new-array v7, v1, [J

    fill-array-data v7, :array_7

    const/16 v12, 0x8

    aput-object v7, v0, v12

    new-array v7, v2, [J

    fill-array-data v7, :array_8

    const/16 v13, 0x9

    aput-object v7, v0, v13

    new-array v7, v4, [J

    fill-array-data v7, :array_9

    const/16 v14, 0xa

    aput-object v7, v0, v14

    new-array v7, v2, [J

    fill-array-data v7, :array_a

    const/16 v15, 0xb

    aput-object v7, v0, v15

    new-array v7, v1, [J

    fill-array-data v7, :array_b

    const/16 v15, 0xc

    aput-object v7, v0, v15

    new-array v7, v1, [J

    fill-array-data v7, :array_c

    const/16 v15, 0xd

    aput-object v7, v0, v15

    new-array v7, v4, [J

    fill-array-data v7, :array_d

    const/16 v15, 0xe

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_e

    const/16 v15, 0xf

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_f

    const/16 v15, 0x10

    aput-object v7, v0, v15

    new-array v7, v4, [J

    fill-array-data v7, :array_10

    const/16 v15, 0x11

    aput-object v7, v0, v15

    new-array v7, v4, [J

    fill-array-data v7, :array_11

    const/16 v15, 0x12

    aput-object v7, v0, v15

    new-array v7, v5, [J

    const-wide/16 v15, 0x12c

    aput-wide v15, v7, v3

    const/16 v15, 0x13

    aput-object v7, v0, v15

    new-array v7, v4, [J

    fill-array-data v7, :array_12

    const/16 v15, 0x14

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_13

    const/16 v15, 0x15

    aput-object v7, v0, v15

    new-array v7, v4, [J

    fill-array-data v7, :array_14

    const/16 v15, 0x16

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_15

    const/16 v15, 0x17

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_16

    const/16 v15, 0x18

    aput-object v7, v0, v15

    new-array v7, v2, [J

    fill-array-data v7, :array_17

    const/16 v15, 0x19

    aput-object v7, v0, v15

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    .line 59
    new-array v0, v14, [[J

    new-array v7, v13, [J

    fill-array-data v7, :array_18

    aput-object v7, v0, v3

    new-array v7, v13, [J

    fill-array-data v7, :array_19

    aput-object v7, v0, v5

    new-array v7, v13, [J

    fill-array-data v7, :array_1a

    aput-object v7, v0, v6

    new-array v6, v13, [J

    fill-array-data v6, :array_1b

    aput-object v6, v0, v1

    new-array v1, v13, [J

    fill-array-data v1, :array_1c

    aput-object v1, v0, v10

    new-array v1, v13, [J

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v13, [J

    fill-array-data v1, :array_1e

    aput-object v1, v0, v11

    new-array v1, v13, [J

    fill-array-data v1, :array_1f

    aput-object v1, v0, v2

    new-array v1, v13, [J

    fill-array-data v1, :array_20

    aput-object v1, v0, v12

    new-array v1, v13, [J

    fill-array-data v1, :array_21

    aput-object v1, v0, v13

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->NUMBERS:[[J

    .line 72
    new-array v0, v5, [J

    aput-wide v8, v0, v3

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->ERROR_GAP:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0x64
        0x12c
    .end array-data

    :array_1
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_3
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_4
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_5
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_6
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_7
    .array-data 8
        0x64
        0x64
        0x64
    .end array-data

    :array_8
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_9
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_a
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_b
    .array-data 8
        0x12c
        0x64
        0x12c
    .end array-data

    :array_c
    .array-data 8
        0x12c
        0x64
        0x64
    .end array-data

    :array_d
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_e
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_f
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_10
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_11
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_12
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_13
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_14
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_15
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_16
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_17
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_18
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_19
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1a
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1b
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1c
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_1d
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1e
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1f
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_20
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_21
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pattern(C)[J
    .locals 2
    .param p0, "c"    # C

    .line 76
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 77
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    add-int/lit8 v1, p0, -0x41

    aget-object v0, v0, v1

    return-object v0

    .line 79
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 80
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    add-int/lit8 v1, p0, -0x61

    aget-object v0, v0, v1

    return-object v0

    .line 82
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 83
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->NUMBERS:[[J

    add-int/lit8 v1, p0, -0x30

    aget-object v0, v0, v1

    return-object v0

    .line 86
    :cond_2
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->ERROR_GAP:[J

    return-object v0
.end method

.method static pattern(Ljava/lang/String;)[J
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 95
    .local v0, "strlen":I
    const/4 v1, 0x1

    .line 96
    .local v1, "len":I
    const/4 v2, 0x1

    .line 97
    .local v2, "lastWasWhitespace":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 98
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 99
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    if-nez v2, :cond_2

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    const/4 v2, 0x1

    goto :goto_1

    .line 105
    :cond_0
    if-nez v2, :cond_1

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 108
    :cond_1
    const/4 v2, 0x0

    .line 109
    invoke-static {v4}, Lio/appium/android/apis/os/MorseCodeConverter;->pattern(C)[J

    move-result-object v5

    array-length v5, v5

    add-int/2addr v1, v5

    .line 97
    .end local v4    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [J

    .line 117
    .local v3, "result":[J
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 118
    const/4 v4, 0x1

    .line 119
    .local v4, "pos":I
    const/4 v2, 0x1

    .line 120
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_7

    .line 121
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 122
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 123
    if-nez v2, :cond_6

    .line 124
    const-wide/16 v8, 0x2bc

    aput-wide v8, v3, v4

    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    const/4 v2, 0x1

    goto :goto_3

    .line 129
    :cond_4
    if-nez v2, :cond_5

    .line 130
    const-wide/16 v8, 0x12c

    aput-wide v8, v3, v4

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 133
    :cond_5
    const/4 v2, 0x0

    .line 134
    invoke-static {v7}, Lio/appium/android/apis/os/MorseCodeConverter;->pattern(C)[J

    move-result-object v8

    .line 135
    .local v8, "letter":[J
    array-length v9, v8

    invoke-static {v8, v6, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v9, v8

    add-int/2addr v4, v9

    .line 120
    .end local v7    # "c":C
    .end local v8    # "letter":[J
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 139
    .end local v5    # "i":I
    :cond_7
    return-object v3
.end method
