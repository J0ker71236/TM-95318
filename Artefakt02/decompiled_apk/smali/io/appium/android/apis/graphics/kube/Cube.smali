.class public Lio/appium/android/apis/graphics/kube/Cube;
.super Lio/appium/android/apis/graphics/kube/GLShape;
.source "Cube.java"


# static fields
.field public static final kBack:I = 0x4

.field public static final kBottom:I = 0x0

.field public static final kFront:I = 0x1

.field public static final kLeft:I = 0x2

.field public static final kRight:I = 0x3

.field public static final kTop:I = 0x5


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V
    .locals 16
    .param p1, "world"    # Lio/appium/android/apis/graphics/kube/GLWorld;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "back"    # F
    .param p5, "right"    # F
    .param p6, "top"    # F
    .param p7, "front"    # F

    .line 23
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {p0 .. p1}, Lio/appium/android/apis/graphics/kube/GLShape;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;)V

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v7

    .line 25
    .local v7, "leftBottomBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v4, v2, v3}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v8

    .line 26
    .local v8, "rightBottomBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v1, v5, v3}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v9

    .line 27
    .local v9, "leftTopBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v4, v5, v3}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v10

    .line 28
    .local v10, "rightTopBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v1, v2, v6}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v11

    .line 29
    .local v11, "leftBottomFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v4, v2, v6}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v12

    .line 30
    .local v12, "rightBottomFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v1, v5, v6}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v13

    .line 31
    .local v13, "leftTopFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {v0, v4, v5, v6}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v14

    .line 35
    .local v14, "rightTopFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v7, v11, v12, v8}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 37
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v11, v13, v14, v12}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 39
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v7, v9, v13, v11}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 41
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v8, v12, v14, v10}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 43
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v7, v8, v10, v9}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 45
    new-instance v15, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v15, v9, v10, v14, v13}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {v0, v15}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 47
    return-void
.end method
