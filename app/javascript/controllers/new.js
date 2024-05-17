document.addEventListener("DOMContentLoaded", function() {
  const photoUpload = document.getElementById("photo_upload");
  const photoPreview = document.getElementById("photo_preview");

  photoUpload.addEventListener("change", function() {
    const files = Array.from(this.files);

    if (files.length > 3) {
      alert("You can only upload a maximum of 3 files.");
      this.value = ""; // Clear the input
      photoPreview.innerHTML = ""; // Clear the preview
      return;
    }

    photoPreview.innerHTML = ""; // Clear the preview

    files.forEach((file, index) => {
      const reader = new FileReader();
      reader.onload = function(e) {
        const img = document.createElement("img");
        img.src = e.target.result;
        img.className = "img-thumbnail m-2";
        img.style.maxWidth = "150px";
        img.style.maxHeight = "150px";
        img.dataset.index = index;
        photoPreview.appendChild(img);
      };
      reader.readAsDataURL(file);
    });
  });
});
