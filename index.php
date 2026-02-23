<!DOCTYPE html>
<html>
<style>
.typewriter h1 {
  color: #000;
  /* font-family: monospace; */
  overflow: hidden; /* Ensures the content is not revealed until the animation */
  /* border-right: .15em solid orange; The typwriter cursor */
  white-space: nowrap; /* Keeps the content on a single line */
  /* margin: 0 auto; Gives that scrolling effect as the typing happens */
  margin-left: 11%;
  letter-spacing: .15em; /* Adjust as needed */
  animation: 
    typing 3.5s steps(30, end),
    blink-caret .5s step-end infinite;
}

/* The typing effect */
@keyframes typing {
  from { width: 0 }
  to { width: 100% }
}

/* The typewriter cursor effect */
@keyframes blink-caret {
  from, to { border-color: transparent }
  50% { border-color: orange }
}
</style>
<!DOCTYPE php>
<php dir="ltr" lang="en-US">

<?php
include("config.php");
if(isset($_REQUEST['submit'])){
    $location = $_REQUEST['select_location'];
    $type = $_REQUEST['select_type'];
    $status = $_REQUEST['select_status'];
    if(@$_REQUEST['select_location'] && @$_REQUEST['select_type'] && @$_REQUEST['select_status']){
        header('location:properties-list.php');

    }else{
        $err = "please select all fields";
    }
    
}
include("header.php");?>
<!--=================================== -->

<section id="heroSearch" class="hero-search mtop-100 pt-0 pb-0">
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="slider--content">
                <div class="typewriter">
                     <h1 style="color:#ffffff;" >Find Your Favorite Property</h1>
                </div>
          </div>
        </div>
        <!-- .container  end -->
    </div>
    <!-- .slider-text end -->
</div>
<div >

</div>
<!-- .slide-item end --
Slide #3 -->
<div class="bg-overlay bg-overlay-dark3"><!-- style="height:700px; -->
    <!-- <div class="bg-section"> -->
        <img src="assets/images/slider/slide-bg/3.jpg" alt="background">
        <!--   </div> -->
    </div> 
    <!-- .slide-item end -->
</div>
</section>
<!-- #property-single-slider end -->

<!-- properties-carousel
============================================= -->
<?php 
    if(@$_SESSION['email']=="" || @$_SESSION['user_type']== 0){
    // if($result['property_status'] == 1){ ?> 
        <section id="properties-carousel" class="properties-carousel pt-45 pb-10">
            <div class="page-title bg-overlay bg-overlay-dark" >
                <div class="bg-section">
                <img src="assets/images/page-titles/3.jpg" alt="Background" />
              </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="heading heading-2 text-center mb-70">
                                <h2 class="heading--title" style="color: white; padding-top:  30px;">Latest Properties</h2>
                                <!-- <p class="heading--desc">Duis aute irure dolor in reprehed in volupted velit esse dolore</p> -->
                            </div>
                            <!-- .heading-title end -->
                        </div>
                        <!-- .col-md-12 end -->
                    </div>
                    <!-- .row end -->
                    <div class="row" style="padding-bottom: 20px; padding-top: 0px;">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="carousel carousel-dots" data-slide="3" data-slide-rs="2" data-autoplay="true" data-nav="false" data-dots="true" data-space="25" data-loop="true" data-speed="800">
                                <?php
                                $q = "SELECT * FROM tbl_property WHERE `live_status`IN (1,3)" ;
                                $row = mysqli_query($con,$q);
                                while ($result = mysqli_fetch_assoc($row)) {?>
                                    <!-- .property-item #1 -->
                                    <div class="property-item">
                                        <div class="property--img">
                                            <a href="property-single-gallery.php?id=<?php echo $result['property_id'];?>">
                                                <?php $str=$result['property_image'];
                                                $temp = explode(',', $result['property_image']);
                                                ?>
                                                <img src="uploads/<?php echo $temp[0]; ?>" alt="property image" class="img-responsive" height="240" width="363">
                                                <?php $q = $result['property_status'];
                                                        if($q == 0){
                                                            $status = "Rent";
                                                    ?>
                                                    <span class="property--status1">For <?php echo $status;?></span>
                                                    <?php }
                                                        else
                                                        {
                                                            $status = "Sale";
                                                    ?>
                                                    <span class="property--status">For <?php echo $status;?></span>
                                                    <?php }
                                                    ?>
                                            </a>
                                        </div>
                                        <div class="property--content">
                                            <div class="property--info">
                                                <h5 class="property--title"><a href="property-single-gallery.php?id=<?php echo $result['property_id'];?>"><?php echo $result['property_type'];?> in <?php echo $result['property_city'];?>,<?php echo $result['property_state'];?></a></h5>
                                                <p class="property--location"><?php echo $result['property_address'];?></p>
                                                <?php if($q==0)
                                                {?>
                                                    <p class="property--price" style="font-size: 25px;">
                                                        Rs. <?php 
                                                        echo moneyFormatIndia($result['property_price']);?><p1 style="color: #f33408; font-size: 25px;" > Deposite.<?php 
                                                        echo moneyFormatIndia($result['deposite']);?></p>
                                                    
                                                <?php }else {?>
                                                     <p class="property--price">Rs. <?php 
                                                        echo moneyFormatIndia($result['property_price']);?></p>
                                                <?php }?>
                                            </div>
                                            <!-- .property-info end -->
                                            <div class="property--features">
                                                <ul class="list-unstyled mb-0">
                                                    <li><span class="feature">Beds:</span><span class="feature-num"><?php echo $result['property_totalbeds'];?></span></li>
                                                    <li><span class="feature">Baths:</span><span class="feature-num"><?php echo $result['property_totalbaths'];?></span></li>
                                                    <li><span class="feature">Area:</span><span class="feature-num"><?php echo $result['property_sqfeet'];?> sq ft</span></li>
                                                    <!-- <li class="pull-right"><a href="buy-property.php?id=<?php echo $result['property_id'];?>" ><input type="button" name="buy" value="Buy" style="background-color: #64ddbb;color: #ffffff;border: 2px solid transparent;"></a></li> -->
                                                    <?php 
                                                    // if(@$_SESSION['email']=="" || @$_SESSION['user_type']== 0){
                                                    if($result['property_status'] == 1){ ?>
                                                    <li class="pull-right"><a href="buy-property.php?id=<?php echo $result['property_id'];?>" ><input type="button" name="buy" value="Buy" style="background-color: #64ddbb;color: #ffffff;border: 2px solid transparent;"></a></li>
                                                    <?php }else{ ?>
                                                    <li class="pull-right"><a href="check-availability.php?id=<?php echo $result['property_id'];?>" ><input type="button" name="rent" value="Rent" style="background-color: #64ddbb;color: #ffffff;border: 2px solid transparent;"></a></li>
                                                        
                                                    <?php }?>
                                                </ul>
                                            </div>
                                            <!-- .property-features end -->
                                        </div>
                                    </div>
                                    <!-- .property item end -->
                                <?php } 
                                ?>









                            </div>
                            <!-- .carousel end -->
                        </div>
                        <!-- .col-md-12 -->
                    </div>
                    <!-- .row -->
                </div>
            </div>
        <!-- .container -->
        </section>
<?php }?>

<?php
 function moneyFormatIndia($num) {
    $explrestunits = "" ;
    if(strlen($num)>3) {
        $lastthree = substr($num, strlen($num)-3, strlen($num));
        $restunits = substr($num, 0, strlen($num)-3); // extracts the last three digits
        $restunits = (strlen($restunits)%2 == 1)?"0".$restunits:$restunits; // explodes the remaining digits in 2's formats, adds a zero in the beginning to maintain the 2's grouping.
        $expunit = str_split($restunits, 2);
        for($i=0; $i<sizeof($expunit); $i++) {
            // creates each of the 2's group and adds a comma to the end
            if($i==0) {
                $explrestunits .= (int)$expunit[$i].","; // if is first value , convert into integer
            } else {
                $explrestunits .= $expunit[$i].",";
            }
        }
        $thecash = $explrestunits.$lastthree;
    } else {
        $thecash = $num;
    }
    return $thecash; // writes the final format where $currency is the currency symbol.
}
?>
<!-- #properties-carousel  end  -->

<?php include("footer.php");?>

<!-- Footer Scripts
============================================= -->
<script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/functions.js"></script>

</body>

</php>
</html>
