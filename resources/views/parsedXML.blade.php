 <?php 
 if($data['status']=="failed"){
     echo "<b style='color:red;'>Please check your input file and the file format</b>";
 }
 else{
     $array = $data['listingArray'];
?>
<h3 style="color: darkred">Following Data has been saved</h3>
<table class="table-bordered table table-striped">
    <thead>
        <tr>
            <th>Sn.</th>
            <th>Price</th>
            <th>URL</th>
            <th>Rooms</th>
            <th>PropertyType</th>
            <th>Listing Detail</th>
            <th>MLS Detail</th>
        </tr>
    </thead>
    <tbody>
    <?php
     $count = 0;
     foreach($array as $listing){
         $count=$count+1;
     ?>
        <tr style="border: 1px solid">
            <td><?php echo $count; ?></td>
            <td><?php echo "$".$listing['ListPrice']."<br> <b>Address:</b><br>".
                    $listing['FullStreetAddress']."<br>".
                    $listing['City']."<br>".
                    $listing['StateOrProvince']."<br>".
                    $listing['PostalCode']."<br>".
                    $listing['Country']
                ; ?></td>
            <td><?php echo $listing['ListingURL']."<br>";
                    //echo "<br><b>Photos:</b><br>";
                    //print_r($listing['Photos']);
                     ?></td> 
            <td><?php echo "Bedrooms:".$listing['Bedrooms']."<br>Bathrooms:".$listing['Bathrooms'];; ?></td> 
            <td><?php echo $listing['PropertyType']; ?></td>
            <td><?php echo "Listing Key: ".$listing['ListingKey']."<br>".
                    "Listing Category: ".$listing['ListingCategory']."<br>".
                    "Listing Status: ".$listing['ListingStatus']."<br>".
                    "<b>Listing Description: </b>".$listing['ListingDescription'];
                ?>
            </td>
            <td><?php echo "MlsId: ".$listing['MlsId']."<br>".
                    "MlsName: ".$listing['MlsName']."<br>".
                    "MlsNumber: ".$listing['MlsNumber'];
                ?>
            </td>
        </tr>
    <?php
     }
     ?>
    </tbody> 
</table>
<?php 
 }
