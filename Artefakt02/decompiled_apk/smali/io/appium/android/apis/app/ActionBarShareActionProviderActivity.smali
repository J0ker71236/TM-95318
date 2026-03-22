.class public Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;
.super Landroid/app/Activity;
.source "ActionBarShareActionProviderActivity.java"


# static fields
.field private static final SHARED_FILE_NAME:Ljava/lang/String; = "shared.png"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private copyPrivateRawResuorceToPubliclyAccessibleFile()V
    .locals 5

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 98
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 99
    const-string v2, "shared.png"

    const v3, 0x8001

    invoke-virtual {p0, v2, v3}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 101
    const/16 v2, 0x400

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "length":I
    :goto_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    if-lez v4, :cond_0

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :cond_0
    goto :goto_1

    .line 107
    :catch_0
    move-exception v4

    .line 114
    .end local v2    # "buffer":[B
    .end local v3    # "length":I
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    goto :goto_2

    .line 115
    :catch_1
    move-exception v2

    .line 119
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    :goto_3
    goto :goto_7

    .line 120
    :catch_2
    move-exception v2

    .line 123
    goto :goto_7

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 117
    goto :goto_4

    .line 115
    :catch_3
    move-exception v3

    .line 119
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 122
    goto :goto_5

    .line 120
    :catch_4
    move-exception v3

    .line 122
    :goto_5
    throw v2

    .line 110
    :catch_5
    move-exception v2

    .line 114
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 117
    goto :goto_6

    .line 115
    :catch_6
    move-exception v2

    .line 119
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 124
    :goto_7
    return-void
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "shared.png"

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->copyPrivateRawResuorceToPubliclyAccessibleFile()V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 54
    invoke-virtual {p0}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    const v0, 0x7f090127

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 58
    .local v0, "actionItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 59
    .local v1, "actionProvider":Landroid/widget/ShareActionProvider;
    const-string v2, "share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 65
    const v2, 0x7f090128

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 66
    .local v2, "overflowItem":Landroid/view/MenuItem;
    nop

    .line 67
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/ShareActionProvider;

    .line 68
    .local v3, "overflowProvider":Landroid/widget/ShareActionProvider;
    const-string v4, "share_history.xml"

    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lio/appium/android/apis/app/ActionBarShareActionProviderActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 74
    const/4 v4, 0x1

    return v4
.end method
