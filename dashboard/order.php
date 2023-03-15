<?php require_once "include/header.php"; ?>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php require_once "include/sidebar.php"; ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                   <?php require_once "include/navbar.php"; ?>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <div class="section">
                        <table class='table table-bordered'>
                            <thead>
                                <th>Email</th>
                                <th>Product Name</th>
                                <th>City</th>
                                <th>Street</th>
                                <th>Contact</th>
                                <th>Status</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                <?php 
                                $sql_order;      
                                $query_order;
                                if($_SESSION['role'] == 'admin'){
                                    $sql_order  = "select * from checkout"; 
                                    $query = mysqli_query($connection, $sql_order);
                                }
                                if($_SESSION['role'] == 'customer'){
                                    $email = $_SESSION['email'];                   
                                    $sql_order = "select * from checkout where email='$email'"; 
                                    $query = mysqli_query($connection, $sql_order);                                
                                } 
                                    $i = 0;
                                    while($row = mysqli_fetch_assoc($query)){
                                        $i++;
                                        $id = $row['id'];
                                        $email = $row['email'];
                                        $product_name = $row['product_name'];
                                        $city = $row['city'];
                                        $street = $row['street']; 
                                        $contact = $row['contact'];
                                        $status = $row['status'];
                                        $date = $row['date'];
                                        $time = $row['time'];
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo $email; ?></td>
                                        <td><?php echo $product_name; ?></td>
                                        <td><?php echo $city; ?></td>
                                        <td><?php echo $street; ?></td>
                                        <td><?php echo $contact; ?></td>
                                        <td><?php echo $status; ?></td>
                                        <td><?php echo $date; ?></td>
                                        <td><?php echo $time; ?></td>
                                        <td><?php
                                     if( $_SESSION['role'] == 'admin') {?>
                                     <a href="edit_order.php?edit=<?php echo $id; ?>">edit</a>
                                  <?php  }?>
                                        
                                        
                                            
                                        </td>
                                    </tr>
                                <?php
                                    }
                                ?>
                            </tbody>

                        </table>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php require_once "include/footer.php"; ?>