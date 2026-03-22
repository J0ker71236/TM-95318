.class Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;
.super Ljava/lang/Thread;
.source "FragmentRetainInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    .line 108
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    const/16 v0, 0x2710

    .line 118
    .local v0, "max":I
    :goto_0
    monitor-enter p0

    .line 121
    :goto_1
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget-boolean v1, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget v1, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mPosition:I

    if-lt v1, v0, :cond_0

    goto :goto_4

    .line 134
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget v2, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mPosition:I

    .line 135
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget-object v1, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    move v0, v1

    .line 136
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget-object v1, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget v2, v2, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    monitor-enter p0

    .line 143
    const-wide/16 v1, 0x32

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    goto :goto_2

    .line 146
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 144
    :catch_0
    move-exception v1

    .line 146
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 122
    :cond_1
    :goto_4
    :try_start_3
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment$1;->this$0:Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;

    iget-boolean v1, v1, Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;->mQuiting:Z

    if-eqz v1, :cond_2

    .line 123
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 126
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    :goto_5
    goto :goto_1

    .line 127
    :catch_1
    move-exception v1

    goto :goto_5

    .line 137
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    return-void
.end method
