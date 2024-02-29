<div class="card profile-widget">
    <div class="profile-widget-header">
        <img alt="image" src="{{ asset("assets/") }}/img/products/product-3-50.png" class="rounded-circle profile-widget-picture">
        <div class="row">
            <div class=" mt-2 ml-3 text-left">
                <h5 >Tabel @yield('title')</h5>
            </div>
          
        </div>
    </div>
{{-- @yield('datatable') --}}
{{-- {{ dd($datas) }} --}}      

    <div class="card-body -mt-5">
        <div class="table-responsive">
            <table class="table table-bordered table-md">
            <tr>
                @yield('headtable')
            </tr>
                @yield('bodytable')
            
            </table>
        </div>
        <div class="card-footer text-right">
                @yield('foottable')
        </div>
    </div>   

</div>
  