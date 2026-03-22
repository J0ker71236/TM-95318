.class public Lio/appium/android/apis/app/LoaderCustom$AppEntry;
.super Ljava/lang/Object;
.source "LoaderCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private mLabel:Ljava/lang/String;

.field private final mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

.field private mMounted:Z


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/LoaderCustom$AppListLoader;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "loader"    # Lio/appium/android/apis/app/LoaderCustom$AppListLoader;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    .line 85
    iput-object p2, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mApkFile:Ljava/io/File;

    .line 87
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    iget-object v1, v1, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    goto :goto_0

    .line 105
    :cond_1
    iget-boolean v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    if-nez v1, :cond_3

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    .line 110
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    iget-object v1, v1, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 117
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLoader:Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    invoke-virtual {v0}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 114
    :cond_3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method loadLabel(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    if-nez v0, :cond_3

    .line 127
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    .line 129
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mMounted:Z

    .line 132
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLabel:Ljava/lang/String;

    .line 136
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
