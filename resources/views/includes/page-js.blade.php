<script src="{{ url('/assets/js/bundle.js') }}"></script>
<script src="{{ url('/assets/js/theme/default.min.js') }}"></script>
<script src="{{ url('/assets/js/apps.min.js') }}"></script>
<script src="{{ url('/assets/plugins/gritter/js/jquery.gritter.min.js') }}"></script>
<script src="{{ url('/assets/plugins/autonumeric/autoNumeric.js') }}"></script>

<script>
	$(document).ready(function() {
		App.init();

        $('[data-toggle="tooltip"]').tooltip({ trigger: "hover" });

        $('[data-toggle="tooltip"]').click(function () {
            $('[data-toggle="tooltip"]').tooltip("hide");
        });

        AutoNumeric.multiple('.numbering', {
            modifyValueOnWheel : false
		});

		AutoNumeric.multiple('.decimal', {
			modifyValueOnWheel : false,
			minimumValue: "0"
		});

        @if(Session::get('gritter_judul'))
	    setTimeout(function() {
			$.gritter.add({
				title: '{{ Session::get('gritter_judul').$nama_pegawai.'!' }}',
				text: '{{ Session::get('gritter_teks') }}',
				image: '{{ Session::get('gritter_gambar') }}',
				sticky: true,
				time: '',
				class_name: 'my-sticky-class'
			});
		}, 1000);
	    @endif
	});
</script>

@stack('scripts')
@stack('subscripts')
