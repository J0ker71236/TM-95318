.class Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;
.super Ljava/lang/Object;
.source "CompressedTextureActivity.java"

# interfaces
.implements Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CompressedTextureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyntheticCompressedTextureLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;->this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createImage(II)Ljava/nio/Buffer;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 135
    mul-int/lit8 v0, p1, 0x3

    .line 136
    .local v0, "stride":I
    mul-int v1, p2, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 137
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 140
    .local v1, "image":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 141
    mul-int/lit8 v3, v2, 0x2

    rsub-int v3, v3, 0xff

    int-to-byte v3, v3

    .line 142
    .local v3, "red":B
    mul-int/lit8 v4, v2, 0x2

    int-to-byte v4, v4

    .line 143
    .local v4, "green":B
    const/4 v5, 0x0

    .line 144
    .local v5, "blue":B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, p1, :cond_0

    .line 145
    xor-int v7, v6, v2

    .line 146
    .local v7, "y":I
    mul-int v8, v0, v7

    mul-int/lit8 v9, v6, 0x3

    add-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    .end local v7    # "y":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    .end local v3    # "red":B
    .end local v4    # "green":B
    .end local v5    # "blue":B
    .end local v6    # "x":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "t":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    return-object v1
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 113
    const/16 v0, 0x80

    .line 114
    .local v0, "width":I
    const/16 v1, 0x80

    .line 115
    .local v1, "height":I
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;->createImage(II)Ljava/nio/Buffer;

    move-result-object v2

    .line 116
    .local v2, "image":Ljava/nio/Buffer;
    mul-int/lit8 v3, v0, 0x3

    const/4 v4, 0x3

    invoke-static {v2, v0, v1, v4, v3}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v3

    .line 129
    .local v3, "etc1Texture":Landroid/opengl/ETC1Util$ETC1Texture;
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1907

    const v9, 0x8363

    move-object v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 132
    return-void
.end method
