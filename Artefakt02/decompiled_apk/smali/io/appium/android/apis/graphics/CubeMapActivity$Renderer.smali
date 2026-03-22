.class Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;
.super Ljava/lang/Object;
.source "CubeMapActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CubeMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAngle:F

.field private mContextSupportsCubeMap:Z

.field private mCubeMapTextureID:I

.field private mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

.field private mUseTexGen:Z

.field final synthetic this$0:Lio/appium/android/apis/graphics/CubeMapActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/CubeMapActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->this$0:Lio/appium/android/apis/graphics/CubeMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mUseTexGen:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/graphics/CubeMapActivity;Lio/appium/android/apis/graphics/CubeMapActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/graphics/CubeMapActivity;
    .param p2, "x1"    # Lio/appium/android/apis/graphics/CubeMapActivity$1;

    .line 50
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;-><init>(Lio/appium/android/apis/graphics/CubeMapActivity;)V

    return-void
.end method

.method private checkIfContextSupportsCubeMap(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 197
    const-string v0, "GL_OES_texture_cube_map"

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "extension"    # Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f03

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "extensions":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private generateCubeMap(Ljavax/microedition/khronos/opengles/GL10;[I)I
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "resourceIds"    # [I

    .line 135
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 136
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 137
    .local v1, "ids":[I
    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 138
    aget v0, v1, v2

    .line 139
    .local v0, "cubeMapTextureId":I
    const v3, 0x8513

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 140
    const v4, 0x46180400    # 9729.0f

    const/16 v5, 0x2801

    invoke-interface {p1, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 142
    const/16 v5, 0x2800

    invoke-interface {p1, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 145
    const/4 v3, 0x0

    .local v3, "face":I
    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 146
    iget-object v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->this$0:Lio/appium/android/apis/graphics/CubeMapActivity;

    invoke-virtual {v4}, Lio/appium/android/apis/graphics/CubeMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 149
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    goto :goto_1

    .line 153
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "CubeMap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode texture for face "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v6    # "e":Ljava/io/IOException;
    nop

    .line 157
    :goto_1
    const v6, 0x8515

    add-int/2addr v6, v3

    invoke-static {v6, v2, v5, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 159
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 152
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    goto :goto_2

    .line 153
    :catch_1
    move-exception v5

    .line 154
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not decode texture for face "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CubeMap"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    throw v2

    .line 161
    .end local v3    # "face":I
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 162
    return v0
.end method

.method private generateTorusGrid(Ljavax/microedition/khronos/opengles/GL;IIFF)Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
    .locals 32
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "uSteps"    # I
    .param p3, "vSteps"    # I
    .param p4, "majorRadius"    # F
    .param p5, "minorRadius"    # F

    .line 166
    move/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, v3, v4}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;-><init>(II)V

    .line 167
    .local v2, "grid":Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 168
    int-to-double v4, v3

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v4, v6

    .line 169
    .local v16, "angleV":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 170
    .local v4, "cosV":F
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v13, v5

    .line 171
    .local v13, "sinV":F
    const/4 v5, 0x0

    move v12, v5

    .local v12, "i":I
    :goto_1
    if-gt v12, v0, :cond_0

    .line 172
    int-to-double v5, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v5, v7

    .line 173
    .local v18, "angleU":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v11, v5

    .line 174
    .local v11, "cosU":F
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v10, v5

    .line 175
    .local v10, "sinU":F
    mul-float v5, p5, v11

    add-float v20, p4, v5

    .line 176
    .local v20, "d":F
    mul-float v21, v20, v4

    .line 177
    .local v21, "x":F
    neg-float v5, v13

    mul-float v22, v20, v5

    .line 178
    .local v22, "y":F
    mul-float v23, p5, v10

    .line 180
    .local v23, "z":F
    mul-float v5, v4, v11

    .line 181
    .local v5, "nx":F
    neg-float v6, v13

    mul-float v6, v6, v11

    .line 182
    .local v6, "ny":F
    move v7, v10

    .line 184
    .local v7, "nz":F
    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v9, v8

    .line 185
    .local v9, "length":F
    div-float v24, v5, v9

    .line 186
    .end local v5    # "nx":F
    .local v24, "nx":F
    div-float v25, v6, v9

    .line 187
    .end local v6    # "ny":F
    .local v25, "ny":F
    div-float v26, v7, v9

    .line 189
    .end local v7    # "nz":F
    .local v26, "nz":F
    move-object v5, v2

    move v6, v12

    move v7, v3

    move/from16 v8, v21

    move/from16 v27, v9

    .end local v9    # "length":F
    .local v27, "length":F
    move/from16 v9, v22

    move/from16 v28, v10

    .end local v10    # "sinU":F
    .local v28, "sinU":F
    move/from16 v10, v23

    move/from16 v29, v11

    .end local v11    # "cosU":F
    .local v29, "cosU":F
    move/from16 v11, v24

    move/from16 v30, v12

    .end local v12    # "i":I
    .local v30, "i":I
    move/from16 v12, v25

    move/from16 v31, v13

    .end local v13    # "sinV":F
    .local v31, "sinV":F
    move/from16 v13, v26

    invoke-virtual/range {v5 .. v13}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->set(IIFFFFFF)V

    .line 171
    .end local v18    # "angleU":D
    .end local v20    # "d":F
    .end local v21    # "x":F
    .end local v22    # "y":F
    .end local v23    # "z":F
    .end local v24    # "nx":F
    .end local v25    # "ny":F
    .end local v26    # "nz":F
    .end local v27    # "length":F
    .end local v28    # "sinU":F
    .end local v29    # "cosU":F
    add-int/lit8 v12, v30, 0x1

    move/from16 v13, v31

    goto :goto_1

    .end local v30    # "i":I
    .end local v31    # "sinV":F
    .restart local v12    # "i":I
    .restart local v13    # "sinV":F
    :cond_0
    move/from16 v30, v12

    move/from16 v31, v13

    .line 167
    .end local v4    # "cosV":F
    .end local v12    # "i":I
    .end local v13    # "sinV":F
    .end local v16    # "angleV":D
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 192
    .end local v3    # "j":I
    :cond_1
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V

    .line 193
    return-object v2
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 58
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 59
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p1, v2, v2, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {p1, v1, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 66
    :goto_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 67
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 68
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 69
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 71
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x3f600000    # -5.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 72
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    invoke-interface {p1, v0, v2, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 73
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v0, v0, v3

    invoke-interface {p1, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 75
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 77
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 79
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    const v1, 0x8d60

    if-eqz v0, :cond_1

    .line 80
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 81
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 82
    const v0, 0x8513

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 83
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 84
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mCubeMapTextureID:I

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 85
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 86
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 87
    .local v0, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/16 v2, 0x2500

    const v3, 0x8512

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    .line 90
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 91
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 92
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 93
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2101

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 96
    .end local v0    # "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :cond_1
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 97
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 102
    :cond_2
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 104
    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    const v1, 0x3f99999a    # 1.2f

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mAngle:F

    .line 105
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 108
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 109
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 110
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 111
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 112
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 113
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 114
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 115
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 118
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 121
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->checkIfContextSupportsCubeMap(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    .line 123
    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->generateTorusGrid(Ljavax/microedition/khronos/opengles/GL;IIFF)Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mGrid:Lio/appium/android/apis/graphics/CubeMapActivity$Grid;

    .line 125
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mContextSupportsCubeMap:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 129
    .local v0, "cubeMapResourceIds":[I
    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->generateCubeMap(Ljavax/microedition/khronos/opengles/GL10;[I)I

    move-result v1

    iput v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;->mCubeMapTextureID:I

    .line 131
    .end local v0    # "cubeMapResourceIds":[I
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 132
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0002
        0x7f0d0003
        0x7f0d0004
        0x7f0d0005
        0x7f0d0006
        0x7f0d0007
    .end array-data
.end method
