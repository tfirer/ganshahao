<!DOCTYPE html>
<html lang='zh'>
    <head>
    <meta charset="utf-8">
    <title>个人简介</title>
    <link rel="stylesheet" href="/static/css/common.css" type="text/css" />
    </head>
    <body id="profile">
        {include file="common/header.tpl"}
        <div class="container content">
            <div id="user-profile">
                <div class="row">
                    <div class="columns four">
                        <div class="side-nav">
                            <div class="row" id="user-info">
                                <div class="columns five">
                                    <div class="user-icon large">
                                        <a href="/user/settings.php">
                                        <img src="//s3.amazonaws.com/lu-production-assets/images/default-user-icon.png">
                                        </a>
                                    </div>
                                </div>
                                <div class="columns seven">
                                    <h3>{$user.nick_name}</h3>
                                    <div class="actions">
                                        <a href="/user/settings.php">修改设置</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns eight">
                                <p>已完成{$count_training_completed}个培训：以下为完成列表</p>
        <ul>
            {foreach $training_names as $training_name}
            <li>{$training_name.training_name}</li>
            {/foreach}
        </ul>
        <hr>
        <div>
            <p>你好，{$user.nick_name}，完成培训，在简介中察看你的进程，向雇主展示你是一个主动性很强，并且受过良好培训的求职者。</p>
        </div>
        <div>
            <a href="/job/job_list.php">现在就开始接受培训吧！</a>
        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>