<h2>{msgNewContentHeader}</h2>
            
            <p>{msgNewContentAddon}</p>
            <form id="formValues" action="#" method="post" class="form-horizontal">
                <input type="hidden" name="lang" id="lang" value="{lang}" />

                <div class="control-group">
                    <label class="control-label" for="name">{msgNewContentName}</label>
                    <div class="controls">
                        <input type="text" name="name" id="name" value="{defaultContentName}" required>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="email">{msgNewContentMail}:</label>
                    <div class="controls">
                        <input type="email" name="email" id="email" value="{defaultContentMail}" required>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="rubrik">{msgNewContentCategory}</label>
                    <div class="controls">
                        <select name="rubrik[]" id="rubrik" multiple="multiple" size="5" required>
                        {printCategoryOptions}
                        </select>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="question">{msgNewContentTheme}</label>
                    <div class="controls">
                        <textarea cols="37" rows="3" name="question" id="question" required="required" {readonly}>{printQuestion}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="answer">{msgNewContentArticle}</label>
                    <div class="controls">
                        <textarea cols="37" rows="10" name="answer" id="answer" required="required"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="keywords">{msgNewContentKeywords}</label>
                    <div class="controls">
                        <input type="text" name="keywords" id="keywords" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="contentlink">{msgNewContentLink}</label>
                    <div class="controls">
                        <input type="url" name="contentlink" id="contentlink" size="37" value="http://" />
                    </div>
                </div>

            {captchaFieldset}

                <div class="form-actions">
                    <button class="btn btn-primary" type="submit" id="submitfaq">
                    {msgNewContentSubmit}
                    </button>
                </div>
            </form>

            <div id="loader"></div>
            <div id="faqs"></div>

            <script type="text/javascript" >
            $(function() {
                $('#submitfaq').click(function() {
                    saveFormValues('savefaq', 'faq');
                });
                $('form#formValues').submit(function() { return false; });
            });
            </script>
