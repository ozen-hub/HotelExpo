<%--
  Created by IntelliJ IDEA.
  User: Hasika
  Date: 11/18/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="styles/dashboard.scss">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
<div style="padding: 20px">
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                        aria-expanded="false" aria-controls="collapseOne">
                    Save Room
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                 data-bs-parent="#accordionExample">
                <div class="accordion-body">

                    <%--save room--%>
                    <div class="container">
                        <div class="row">
                            <div class="col-3">
                                <label for="hotel">Hotel</label>
                                <select id="hotel" class="form-control">
                                    <option value="1">Samntha Hotel</option>
                                    <option value="2">Jayantha Hotel</option>
                                </select>
                            </div>
                            <div class="col-3">
                                <label for="deals">Hotel</label>
                                <select id="deals" class="form-control">
                                    <option value="1">Available</option>
                                    <option value="0">Unavailable</option>
                                </select>
                            </div>
                            <div class="col-3">
                                <label for="type">Type</label>
                                <input type="text" id="type" class="form-control">
                            </div>
                            <div class="col-3">
                                <label for="cost">Cost</label>
                                <input type="number" id="cost" class="form-control">
                            </div>
                            <div class="col-12" style="margin-top: 20px">
                                <label for="desc">Description</label>
                                <textarea id="desc" rows="4" class="form-control"></textarea>
                            </div>
                            <div class="col-12" style="margin-top: 20px">
                                <p style="text-align: right">
                                    <button onclick="saveRoom()" class="btn btn-primary">Save Room</button>
                                </p>
                            </div>
                        </div>
                    </div>
                    <%--save room--%>

                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    Image manager
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                 data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-12" style="margin-bottom: 10px">
                                <label for="room">Room</label>
                                <input type="text" class="form-control" id="room">
                            </div>
                            <div class="col-12" style="margin-bottom: 10px">
                                <input type="file" id="file">
                            </div>
                            <div class="col-12" style="margin-bottom: 10px">
                                <img src="" alt="" style="width: 200px" id="selected-image"
                                     class="img-thumbnail">
                            </div>
                            <div class="col-12">
                                <p style="text-align: right">
                                    <button type="button" onclick="saveImage()" class="btn btn-primary"> Upload Image
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="js/dashboard.js"></script>
<script type="application/javascript">
    let imageData;
    function setImage(data) {
        if (data.files && data.files[0]) {
            imageData=data.files[0];
            let reader = new FileReader();
            reader.onload = (e) => {
                $('#selected-image').attr('src', e.target.result);
            }
            reader.readAsDataURL(data.files[0]);
        }
    }


    $('#file').change(function () {
        setImage(this);
    })

    function saveImage() {
       /* let formData = new FormData();
        formData.append("image", imageData);
        let image = {
            image: formData
        }
        $.ajax({
            url: 'http://localhost:8000/room?type=image&id=' + $('#room').val(),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            data: image,
            body:image,
            success: function (response) {
                console.log(response);
                if (response.code === 201) {
                    alert(response.message);
                } else {
                    alert(response.message);
                }
            },
            error: (error) => {
                console.log(error);
            }
        })
*/

       let data = new FormData();
        data.append( 'image',imageData );
        console.log(data);
        console.log(imageData);
        $.ajax({
            url: 'http://localhost:8000/room?type=image',
            data: data,
            processData: false,
            type: 'POST',
            success: function ( data ) {
                alert( data );
            }
        });

    }

    function saveRoom() {
        let room = {
            type: $('#type').val(),
            deals: $('#deals').val(),
            description: $('#desc').val(),
            hotel: $('#hotel').val(),
            cost: $('#cost').val()
        }
        $.ajax({
            url: 'http://localhost:8000/room?type=room',
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            data: JSON.stringify(room),
            success: function (response) {
                console.log(response);
                if (response.code === 201) {
                    alert(response.message);
                } else {
                    alert(response.message);
                }
            },
            error: (error) => {
                console.log(error);
            }
        })

    }
</script>
</body>
</html>
