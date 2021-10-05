@extends("welcome")
@section("content")

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
{{--                <img class="card-img-top" src="{{ asset('public/storage/order.jpeg') }}" alt="Card image cap">--}}
                <div class="card-body">
                    <p class="card-text">Samsung Mobile</p>
{{--                    <img src="{{ asset('public/storage/order.jpeg') }}">--}}
                    <p>Price : 1199</p>
                    <p>Amount: 999</p>
                    <form >

                    <input type="hidden" id="price" name="price" value="1">
                    <input type="hidden" id="amount" name="amount" value="1">
                    <input type="hidden" name="user_id" value="1">
                    <input type="hidden" name="email" value="aman@gmail.com">
                    <input type="hidden" name="phone" value="8153814683">
                    <input type="hidden" name="name" value="Aman">
                    <input type="hidden" id="currency" name="currency" value="INR">
                        <input type="hidden" id="product_id" name="product_id" value="101">
                    <input type="button" id="order" value="complete order">
                    </form>

                    <div class="payment"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function()
    {
        $('#order').on('click', function(){
            var price = $('#price').val();
            var amount = $('#amount').val();
            var currency = $('#currency').val();
            var product_id=$('#product_id').val();
            $.ajax({
                type:'POST',
                url:'/order',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{
                    price:price,
                    amount:amount,
                    currency:currency,
                    product_id:product_id,
                },
                success:function(data) {
                    $(".payment").append(data);
                    $('.redirectForm').submit();
                }
            });
        });

    });
</script>
@endsection
