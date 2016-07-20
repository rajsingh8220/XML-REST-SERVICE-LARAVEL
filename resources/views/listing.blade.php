@extends('layout.master')
@section('title')
Home:Welcome page
@endsection

@section('content')

<h3>Listings </h3>

<div class="row">
    <div class="col-md-12">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Price</th>
                    <th>Address</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            @foreach($listings as $listing)
            <tr>
                <td>{{$listing->ListPrice}}</td>
                <td>
                    {{$listing->address->FullStreetAddress}}, 
                    {{$listing->address->City}}, 
                    {{$listing->address->StateOrProvince}}, 
                    {{$listing->address->PostalCode}}, 
                    {{$listing->address->Country}}
                </td>
                <td>City:{{$listing->ListingDescription}}</td>
                <td>{{$listing->ListingStatus}}</td>
                <td><a href="" class="btn btn-primary btn-sm">Detail</a></td>
            </tr>
            @endforeach
            </tbody>
        </table>
        {!! $listings->links() !!}
        
    </div>
</div>
<div id="resultData">  
</div>
@endsection

