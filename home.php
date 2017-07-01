<?php 
 include 'db.php';
   session_start();
    if(isset($_SESSION['username']))
    {
        
    }
else
{
             header("location: index.php");

}

?>
 
<!DOCTYPE html>
<html>
<head>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<title>Lets chat </title>    
    <link rel="stylesheet" href="style.css">
    <script>
        function ajax(){
            var req = new XMLHttpRequest();
            req.onreadystatechange = function(){
                if(req.readyState == 4 && req.status == 200){
                    document.getElementById('chat').innerHTML = req.responseText;
                }
            }
            req.open('GET', 'chat.php', true);
            req.send();
        }
        setInterval(function(){ajax()}, 1000);
    </script>
    <script> 
    function moveNumbers(num) {
        //alert("You are now chatting with "+num); 
    var txt=document.getElementById("result").value;
    txt=num;
    document.getElementById("result").value=txt;
        document.getElementById('sendit').click();
    }
        


</script>
</head>
<body onload="ajax();">
    <?php echo "Hello ".$_SESSION["username"]; ?>
     <div id="clist">    
                <?php
                    $myusername=$_SESSION["username"];
                    $host="localhost";
                    $user="root";
                    $pass="";
                    $db_name="chat2";
                    $con=new mysqli($host,$user,$pass,$db_name);
                    $qry = "SELECT country FROM chatlogin WHERE NOT (country = '$myusername')";
                    $res = mysqli_query($con, $qry);
                    if(mysqli_num_rows($res)>0){
                        while($row0=mysqli_fetch_assoc($res)){
                            echo "<input class='countries_l' type='button' value='" . $row0['country'] . "' onclick='moveNumbers(this.value)'  >" ;
                            echo "<br>";
                        }
                    }
         
         
                ?>
            </div>
          <h2><a href = "logout.php">Sign Out</a></h2>

<div id="container">
    
    <div id="chat_box">
        <div id="chat"></div>
    </div>
    
    
    <form method="post" action="home.php">
    
    <input type="hidden" name="name" value="<?php echo $_SESSION['username'];?>"/>
    <input type="hidden" name="rname" placeholder="Enter Receiver" id="result"/>

        

      <textarea name="message" placeholder="Enter Message"></textarea>  
        <input type="submit" name="submit" value="Send it" id="sendit" /> 
    
    </form>
    <?php
    
    if(isset($_POST['submit']))
    {
            $name=$_POST['name'];
            $rec=$_POST['rname'];

            if($rec==null)
            {
                $rec=$_SESSION['lastr'];
            }
            $chatid1=$name.$rec;
            $chatid2=$rec.$name;
            $_SESSION["rname"]="$rec";
            $_SESSION["chatid1"]="$chatid1";
            $_SESSION["chatid2"]="$chatid2";

            
            

            $message=$_POST['message'];
            $query="INSERT INTO CHAT2 (name,message,receiver,chatid)values ('$name', '$message','$rec','$chatid1')";
            $run = $con->query($query);
            
        
        if($run)
            echo "<embed loop='false' src='chat.wav' hidden='true' autoplay='true'/>";

    }
    
    ?>
    
</div>
    
    
    
</body>
</html>