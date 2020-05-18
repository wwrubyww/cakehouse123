<?php require_once('../../connection/connection.php');?> 
<?php 
$query = $db->query("SELECT * FROM members ORDER BY name_date DESC ");
$all_members = $query->fetchAll(PDO::FETCH_ASSOC); 
// print_r($products);
?>
<!DOCTYPE html>
<html>

<?php require_once('../layouts/head.php'); ?>

<body style="">
<?php require_once('../layouts/navbar.php'); ?> 
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <h1>最新消息管理</h1>
            </div>
            <div class="card-body">
              <ul class="breadcrumb mb-2">
                <li class="breadcrumb-item"> <a href="#">首頁</a> </li>
                <li class="breadcrumb-item active">最新消息管理</li>
              </ul>
              <div class="row">
                <div class="col-md-12 my-3"><a class="btn btn-primary" href="create1.php">新增一筆</a></div>
              </div>
              <div class="table-responsive">
                <table class="table table-striped table-borderless">
                  <thead>
                    <tr>
                      <th scope="col">姓名</th>
                      <th scope="col">E-mail</th>
                      <th scope="col">電話</th>
                      <th scope="col">生日</th>
                      <th scope="col">地址</th>
                      <th scope="col" width="20%">操作</th>
                    </tr>
                  </thead>
                  <tbody>
              <?php foreach($all_members as $members){  ?>                    
                <tr>
                      <th scope="row"><?php echo $members['name_date']; ?></th>
                      <td><?php echo $members['email']; ?></td>
                      <td><?php echo $members['phone']; ?></td>
                      <td><?php echo $members['birthday']; ?></td>
                      <td><?php echo $members['address']; ?></td>
                      <td>
                      <a class="btn btn-secondary" href="edit1.php?gmemberID=<?php echo $members['memberID']; ?>"><i class="fa fa-pencil-square-o fa-fw"></i>&nbsp;編輯</a>
                      <a class="btn btn-secondary ml-2" onclick="if(!confirm('是否確定刪除此筆資料?刪除後無法回復')){return false;};" href="delete1.php?gmemberID=<?php echo $members['memberID']; ?>"><i class="fa fa-fw fa-trash-o"></i>&nbsp;刪除</a>
                      </td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
              <ul class="pagination my-3 justify-content-center" >
                <li class="page-item"> <a class="page-link" href="#"> <span>«</span></a> </li>
                <li class="page-item active"> <a class="page-link" href="#">1</a> </li>
                <li class="page-item"> <a class="page-link" href="#">2</a> </li>
                <li class="page-item"> <a class="page-link" href="#">3</a> </li>
                <li class="page-item"> <a class="page-link" href="#">4</a> </li>
                <li class="page-item"> <a class="page-link" href="#"> <span>»</span></a> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php require_once('../layouts/footer.php'); ?> 
  
</body>

</html>