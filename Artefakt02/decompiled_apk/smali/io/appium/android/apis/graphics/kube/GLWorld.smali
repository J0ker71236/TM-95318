.class public Lio/appium/android/apis/graphics/kube/GLWorld;
.super Ljava/lang/Object;
.source "GLWorld.java"


# instance fields
.field count:I

.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mIndexCount:I

.field private mShapeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/graphics/kube/GLShape;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexBuffer:Ljava/nio/IntBuffer;

.field private mVertexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/graphics/kube/GLVertex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->count:I

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mShapeList:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    .line 93
    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexCount:I

    return-void
.end method

.method public static toFloat(I)F
    .locals 2
    .param p0, "x"    # I

    .line 87
    int-to-float v0, p0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addShape(Lio/appium/android/apis/graphics/kube/GLShape;)V
    .locals 2
    .param p1, "shape"    # Lio/appium/android/apis/graphics/kube/GLShape;

    .line 31
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexCount:I

    invoke-virtual {p1}, Lio/appium/android/apis/graphics/kube/GLShape;->getIndexCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexCount:I

    .line 33
    return-void
.end method

.method public addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 62
    new-instance v0, Lio/appium/android/apis/graphics/kube/GLVertex;

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/appium/android/apis/graphics/kube/GLVertex;-><init>(FFFI)V

    .line 63
    .local v0, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 79
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/16 v2, 0x140c

    const/4 v3, 0x3

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 82
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexCount:I

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/16 v2, 0x1403

    invoke-interface {p1, v3, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 83
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->count:I

    .line 84
    return-void
.end method

.method public generate()V
    .locals 5

    .line 36
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 40
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 44
    iget v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 48
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLVertex;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 51
    .local v2, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexBuffer:Ljava/nio/IntBuffer;

    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3, v4}, Lio/appium/android/apis/graphics/kube/GLVertex;->put(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 52
    .end local v2    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    goto :goto_0

    .line 54
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 55
    .local v2, "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLShape;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/graphics/kube/GLShape;

    .line 57
    .local v3, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v4}, Lio/appium/android/apis/graphics/kube/GLShape;->putIndices(Ljava/nio/ShortBuffer;)V

    .line 58
    .end local v3    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    goto :goto_1

    .line 59
    :cond_1
    return-void
.end method

.method public transformVertex(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/M4;)V
    .locals 1
    .param p1, "vertex"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p2, "transform"    # Lio/appium/android/apis/graphics/kube/M4;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLWorld;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, p2}, Lio/appium/android/apis/graphics/kube/GLVertex;->update(Ljava/nio/IntBuffer;Lio/appium/android/apis/graphics/kube/M4;)V

    .line 69
    return-void
.end method
