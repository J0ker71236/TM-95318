.class public Lio/appium/android/apis/content/ReadAsset;
.super Landroid/app/Activity;
.source "ReadAsset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ReadAsset;->setContentView(I)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/ReadAsset;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "read_asset.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 54
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 57
    .local v1, "size":I
    new-array v2, v1, [B

    .line 58
    .local v2, "buffer":[B
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 62
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 65
    .local v3, "text":Ljava/lang/String;
    const v4, 0x7f09020c

    invoke-virtual {p0, v4}, Lio/appium/android/apis/content/ReadAsset;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "size":I
    .end local v2    # "buffer":[B
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "tv":Landroid/widget/TextView;
    nop

    .line 71
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
