@extends('layouts.app')
@section('content')

<section class="contest-box">
    <div class="container">
        <h2>Contests list</h2>
        <div class="col-md-4">
            <label>Sort By</label>
            <div class="select_box">
                <select name="sort" id="sort">
                    <option value="newdesc">Newest First</option>
                    <option value="ASC">Price -- Low to High</option>
                    <option value="DESC">Price -- High to Low</option>

                </select>
            </div>
        </div>
        <br>

        <div class="row">
            <div class="col contest_ajax_list" >

                {{-- <div class="panel-body"> --}}
                    {{ csrf_field() }}
                    <div id="post_data"></div>
                    {{-- </div> --}}


            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function(){

        var _token = $('input[name="_token"]').val();
        load_data('', _token);
        function load_data(id="", _token){
                $.ajax({
                    url:"{{route('loadmore.load_data')}}",
                    method: "POST",
                    data: {id: id, _token:_token},
                    success: function(data){
                        $('#load_more_button').remove();
                        $('#post_data').append(data);

                    }
                });
        }

        $(document).on('click', '#load_more_button', function(){
            var id = $(this).data('id');
            $('#load_more_button').html('<b>Loading ..</b>');
            load_data(id, _token);

        });
    });





</script>

@endsection