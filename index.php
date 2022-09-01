<?php

    require_once('./model/model.php');
    $bdd = connectDB();
    $messageList = getMessages($bdd);

?>


<!DOCTYPE html>

<html>
    
    <head>
        <meta charset="utf-8"/>
        <title>Forum BlaBla</title>
        <link rel='stylesheet' href='./CSS/style.css'/>
    </head>

    <body>
        <?php
            include_once('./src/include/header.php');
        ?>

        <div id='main'>
            <?php

                foreach($messageList as $message) {
                    echo "<div class='messLine'><div>".$message['pseudo']."</div><div>".$message['message']."</div></div>";
                }

            ?>
        </div>
    </body>


</html>