.class public Lio/appium/android/apis/graphics/kube/GLFace;
.super Ljava/lang/Object;
.source "GLFace.java"


# instance fields
.field private mColor:Lio/appium/android/apis/graphics/kube/GLColor;

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
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V
    .locals 1
    .param p1, "v1"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p2, "v2"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p3, "v3"    # Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0, p1}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 33
    invoke-virtual {p0, p2}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 34
    invoke-virtual {p0, p3}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V
    .locals 1
    .param p1, "v1"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p2, "v2"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p3, "v3"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p4, "v4"    # Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, p1}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 39
    invoke-virtual {p0, p2}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 40
    invoke-virtual {p0, p3}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 41
    invoke-virtual {p0, p4}, Lio/appium/android/apis/graphics/kube/GLFace;->addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 42
    return-void
.end method


# virtual methods
.method public addVertex(Lio/appium/android/apis/graphics/kube/GLVertex;)V
    .locals 1
    .param p1, "v"    # Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getIndexCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public putIndices(Ljava/nio/ShortBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    .local v0, "last":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 80
    .local v1, "v0":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 83
    .local v2, "vn":Lio/appium/android/apis/graphics/kube/GLVertex;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 84
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 85
    .local v4, "v1":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-short v5, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    invoke-virtual {p1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 86
    iget-short v5, v4, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    invoke-virtual {p1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 87
    iget-short v5, v2, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    invoke-virtual {p1, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 88
    move-object v1, v4

    .line 83
    .end local v4    # "v1":Lio/appium/android/apis/graphics/kube/GLVertex;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public setColor(Lio/appium/android/apis/graphics/kube/GLColor;)V
    .locals 4
    .param p1, "c"    # Lio/appium/android/apis/graphics/kube/GLColor;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 52
    .local v0, "last":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 53
    const-string v1, "GLFace"

    const-string v2, "not enough vertices in setColor()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 58
    .local v1, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mColor:Lio/appium/android/apis/graphics/kube/GLColor;

    if-nez v2, :cond_1

    .line 59
    :goto_0
    iget-object v2, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLVertex;

    goto :goto_0

    .line 66
    :cond_1
    iput-object p1, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    .line 69
    .end local v1    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    :goto_1
    iput-object p1, p0, Lio/appium/android/apis/graphics/kube/GLFace;->mColor:Lio/appium/android/apis/graphics/kube/GLColor;

    .line 70
    return-void
.end method
