<?php
require 'authentication.php'; // admin authentication check
$user_id = $_SESSION['admin_id'];
$user_name = $_SESSION['name'];
$security_key = $_SESSION['security_key'];

if ($user_id == NULL || $security_key == NULL) {
    header('Location: index.php');
    exit;
}

// Check if form is submitted
if (isset($_POST['add_task_post'])) {
    $obj_admin->add_new_task($_POST);
    header('Location: task-info.php');
    exit;
}

?>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
    }
    .container {
        margin-top: 50px;
        max-width: 700px;
        background: white;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .btn-primary {
        background-color: #007bff;
        border: none;
    }
    .btn-primary:hover {
        background-color: #0056b3;
    }
    h2 {
        color: #343a40;
        text-align: center;
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
    }
    .form-control {
        border-radius: 5px;
    }
</style>

<div class="container">
    <h2>Assign New Task</h2>
    <form action="" method="post">
        <div class="mb-3">
            <label for="task_title" class="form-label">Task Title</label>
            <input type="text" name="task_title" id="task_title" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="task_description" class="form-label">Task Description</label>
            <textarea name="task_description" id="task_description" class="form-control" rows="4" required></textarea>
        </div>
        <div class="mb-3">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
    flatpickr('#t_start_time', { enableTime: true });
    flatpickr('#t_end_time', { enableTime: true });
</script>

            <label for="t_start_time" class="form-label">Start Time</label>
            <input type="text" name="t_start_time" id="t_start_time" class="form-control">
        </div>
        <div class="mb-3">
            <label for="t_end_time" class="form-label">End Time</label>
            <input type="text" name="t_end_time" id="t_end_time" class="form-control">
        </div>
        <div class="mb-3">
            <label for="assign_to" class="form-label">Assign To</label>
            <select name="assign_to" id="assign_to" class="form-control" required>
                <option value="">Select Employee</option>
                <?php 
                $sql = "SELECT user_id, fullname FROM tbl_admin WHERE user_role = 2";
                $info = $obj_admin->manage_all_info($sql);
                while ($row = $info->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value="' . $row['user_id'] . '">' . $row['fullname'] . '</option>';
                }
                ?>
            </select>
        </div>
        <div class="d-grid gap-2">
            <button type="submit" name="add_task_post" class="btn btn-primary">Submit</button>
            <a href="task-info.php" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>


<?php include("include/footer.php"); ?>
