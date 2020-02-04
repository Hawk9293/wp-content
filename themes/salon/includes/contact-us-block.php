<?php


$subHeader = get_field('contact_us_subheader', 'option');
$header = get_field('contact_us_header', 'option');

?>

<section class="contactUsBlock" data-page-url="contact-us">
    <div class="wrapper">
        <div class="contactUs">
            <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
                <h2 class="sectionTitle"><?php echo $header; ?></h2>
                <h3 class="sectionSubtitle"><?php echo $subHeader; ?></h3>
            </div>
	        <?php $mail_php = get_permalink(107);?>
            <form action="<?php echo $mail_php?>" class="userForm">
                <label class="userForm__label">
                    <input type="text" class="userForm__input" name="userName" placeholder="Ваше имя...">
                </label>
                <label class="userForm__label">
                    <input type="text" class="userForm__input" name="userNumber" placeholder="Ваш телефон...">
                </label>
                <label class="userForm__label">
                    <input type="text" class="userForm__input" name="userEmail" placeholder="Ваш E-mail...">
                </label>
                <label class="userForm__label">
                    <button type="submit" class="userForm__submitBtn" id="submitBtn">ОТПРАВИТЬ</button>
                </label>
            </form>
        </div>
    </div>
</section>