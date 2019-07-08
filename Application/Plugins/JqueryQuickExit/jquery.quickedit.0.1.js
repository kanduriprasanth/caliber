/**
* jQuery Quick Edit Plugin
*   http://code.google.com/p/jquery-quickedit/
*
* Copyright (c) 2009 Yusuke Horie
*
* Released under the MIT License:
* http://www.opensource.org/licenses/mit-license.php
*
* Since  : 0.1 - 07/14/2009
* Version: 0.1 - 07/14/2009
*/
(function ($) {

    var _e;
    var _inc = 0;

    $.fn.quickEdit = function (options) {
        var opts = jQuery.extend({}, $.fn.quickEdit.defaults, options);

        return this.each(function (i, e) {
            var $this = $(this);

            // target
            var target = $this.attr('id');
            if (typeof target == 'undefined' || !target) return false;
            var $t = $('#' + target);

            _id = 'qe_' + _inc;
            _inc++;

            var _url = $this.attr('href');

            // bind events to target.
            $t
            // Show input field.
        .bind('show.quickedit', function () {

            _e = this;
            this.opts = opts;

            if ($.isFunction(this.opts.beforeShow))
                this.opts.beforeShow.apply($t.get(0), arguments);

            // Build input field
            var txt = $t.html();
            var html = '';
            if (_e.opts.textarea) {
                txt = txt.replace(/<br\s?\/?>/ig, '\n');
                html = '<textarea id="' + _id + '" class="' + _e.opts.className + '">' + txt + '</text' + 'area>';
            } else {
                html = '<input type="text" id="' + _id + '" class="' + _e.opts.className + '" value="' + txt + '" />';
            }

            $t.hide().after(html);

            // Object of input field.
            var obj = $('#' + _id)
            .focus()
            .blur(function () {
                $t.trigger('create.quickedit');
            })
            .keyup(function () {
                var $t = $(this);
                var i = $t.data('keyup') || 0;
                i++;
                $t.data('keyup', i);
            });

            if (_e.opts.textarea) {
                obj.css({ width: _e.opts.width, height: _e.opts.height });
            } else {
                obj.css({ width: _e.opts.width });
            }
        })

            // Hide input field.
        .bind('hide.quickedit', function () {
            $('#' + _id).remove();
            $t.show();
            $this.show();

            if ($.isFunction(_e.opts.onClose))
                _e.opts.onClose.apply($t.get(0), arguments);
        })

            // Send request
        .bind('create.quickedit', function () {
            var obj = $('#' + _id);

            // If not modified, return false.
            if (typeof obj.data('keyup') == 'undefined' || obj.data('keyup') == 0) {
                $t.trigger('hide.quickedit');
                return false;
            }

            // Draw overlay, if options.overlay is set true.
            $t.html(obj.val());
            $t.trigger('hide.quickedit');
            $t.show();
            $this.show();

            OnFirstEditComplete($t);

        });

            // triggered when clicked
            $this.bind('click.quickedit', function (event) {
                event.preventDefault();
                $this.hide();
                $t.trigger('show.quickedit');
            });
        });
    };

    jQuery.fn.quickEdit.defaults = {
        textarea: false,
        overlay: true,
        opacity: 0.8,
        width: '400px',
        height: '100px',
        className: 'quickEdit',
        overlayClassName: 'quickEditOverlay',
        onSuccess: null,
        onError: null,
        beforeShow: null,
        onClose: null
    };

})(jQuery);