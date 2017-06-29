<?php
    include 'db.php';
       session_start();

     $c= $_SESSION["chatid1"];
    $cc=  $_SESSION["chatid2"];

    $query="SELECT *  FROM chat2 WHERE chatid='$c' OR chatid='$cc' ";
    $run=$con->query($query);
    while($row=$run->fetch_array()) :
?>
        
    
<div id="chat_data">

    <span style="color:green"><?php echo $row['name']?></span>:
    <span style="color:brown"><?php echo $row['message']?> Message for ( </span>
    <span style="color:brown"><?php echo $row['receiver']?>) </span>

    <span style="float:right"><?php echo formatDate($row['date'])?></span>
</div>
<?php endwhile;?>