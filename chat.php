<?php
    include 'db.php';
       session_start();

     $c= $_SESSION["chatid1"];
    $cc=  $_SESSION["chatid2"];
            
                                 $con = mysqli_connect("localhost","root","","chat2");
if(!$con)
{
    echo"Failed to connect to MySQL: ",mysqli_connect_error();
    die();
}
else
{
$s="SELECT * FROM chat2 WHERE id = (SELECT MAX(id) FROM chat2);";
 $result=mysqli_query($con,$s);
    if(mysqli_num_rows($result)>0)
    {
        while($row=mysqli_fetch_assoc($result))
        {
           # echo "I came here ";
           # echo $row['receiver'];
            $_SESSION['lastr']=$row['receiver'];
        }
        
        
    }
    else
    {
        #echo "0 results " ;
    }
   
}
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
<html>
<body>
    
        <input type="hidden" size="4" name="lrname" value="<?php echo $_SESSION['lastr'];?>"/>

</body>

</html>
