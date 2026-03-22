.class Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;
.super Landroid/os/AsyncTask;
.source "LoaderThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    .line 435
    iput-object p1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->this$0:Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    iput-object p2, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 437
    const/16 v0, 0x5a

    .local v0, "c":C
    :goto_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    goto :goto_2

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 448
    const-wide/16 v3, 0xfa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    goto :goto_1

    .line 449
    :catch_0
    move-exception v3

    .line 437
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v1, v0, -0x1

    int-to-char v0, v1

    goto :goto_0

    .line 452
    .end local v0    # "c":C
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
