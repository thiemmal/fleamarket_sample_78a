$(function(){
  console.log('item.js');

  // 画像用のinputを生成する関数
  const buildFileField = (num)=> {
    const html = `<div class="js-file_group">
                    <input class="js-file" type="file"
                    name="product[images_attributes][${num}][url]"
                    id="product_images_attributes_${num}_url" data-index="${num}" ><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }

  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" style="width: 20%; height: 100%; flex-shrink: 0;">`;
    return html;
  }

  $('#image-select-btn').on('click', function(e) {
    console.log("click");
    const fileFields = $('input[type="file"]:last');
    fileFields.trigger('click');
  });

  $('#image-file-fileds').on('change', 'input[type="file"]', function(e) {
    console.log(this);
    // const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    console.log("Blob:", blobUrl);
    let targetIndex = $(this).data('index');

    $('#image-select-btn').before(buildImg(targetIndex, blobUrl));
    
    $('#image-file-fileds').append(buildFileField(targetIndex+1));

  });

});