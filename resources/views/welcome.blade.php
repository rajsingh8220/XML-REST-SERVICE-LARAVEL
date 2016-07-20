@extends('layout.master')
@section('title')
Home:Welcome page
@endsection

@section('content')
<h1>Welcome to REST&XML</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In at enim sed mauris imperdiet feugiat at at sem. Vivamus eu vulputate sapien, ac faucibus est. Nunc nunc urna, commodo tincidunt massa a, scelerisque accumsan augue. Morbi laoreet varius dui ut aliquam. Maecenas sollicitudin diam non metus luctus fermentum. Pellentesque sit amet justo mi. Mauris erat odio, rutrum et metus eu, mollis scelerisque mi. Maecenas in diam dolor. Integer quis tortor in mi consequat hendrerit. Nullam eget justo leo. Aliquam erat volutpat. Quisque velit turpis, porta faucibus fermentum eget, laoreet congue turpis. Vivamus id nisl malesuada metus feugiat vulputate nec sit amet ante. Mauris sit amet condimentum urna, non lobortis ante.</p>


<hr/>
<h3>Upload XML Data </h3>

<div class="row">
    <div class="col-md-12">
       <form enctype="multipart/form-data" id="upload_form" role="form" method="POST" action="" >
           <div class="form-group">
                <input type="hidden" name="_token" value="{{ Session::token() }}" />
                <input type="file" name="xml_file" id="xml_file">
                <p class="invalid">Enter XML File</p>
            </div>
           <button type="button" id="uploadXML" class="btn btn-primary">Save Data</button>
       </form>
    </div>
</div>
<div id="resultData">
    
</div>
@endsection


<script type="text/javascript">
    var token = '{{ Session::token()}}'
    var uploadURL = '{{route("upload.data")}}'
    var loadingIMG = "{{URL::to('img/loading.gif')}}"
</script>

