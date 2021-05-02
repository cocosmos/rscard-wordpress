 <div id="comment-reply" class="comment-reply">
    <?php comment_form()?>
        <form>
        
            <div class="input-field">
                <input type="text" name="rs-comment-name"/>
                <span class="line"></span>
                <label>Name *</label>
            </div>

            <div class="input-field">
                <input type="email" name="rs-comment-email"/>
                <span class="line"></span>
                <label>Email *</label>
            </div>

            <div class="input-field">
                <input type="text" name="rs-comment-website"/>
                <span class="line"></span>
                <label>Website</label>
            </div>

            <div class="input-field">
            
                <textarea rows="4" name="rs-comment-message"></textarea>
                <span class="line"></span>
                <label>Type Comment Here *</label>
            </div>

            <div class="text-right">
                <span class="btn-outer btn-primary-outer ripple">
                
                    <input class="btn btn-lg btn-primary" type="button" value="Leave Comment">
                </span>
            </div>
        </form>
    </div><!-- .comment-reply -->
