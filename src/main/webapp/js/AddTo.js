// Select the container for all products
const productsTabs = document.querySelector(".products-tabs");
const wishlistContainer = document.querySelector(".list");

productsTabs.addEventListener("click", (event) => {
  const wishlistButton = event.target.closest(".add-to-wishlist");

  if (wishlistButton) {
    const product = wishlistButton.closest(".product");

    if (product) {
      const imageUrl = product.querySelector(".product-img img").getAttribute("src");
      const productName = product.querySelector(".product-name a").textContent;
      const productPrice = product.querySelector(".product-price").textContent;

      // Create the wishlist item container
      const wishlistItem = document.createElement("div");
      wishlistItem.className = "wishlist-item";

      // Create the image element
      const img = document.createElement("img");
      img.setAttribute("src", imageUrl);
      img.setAttribute("alt", "Wishlist Item");

      // Style the image
      img.setAttribute("style", "width: 50px; height: 50px; object-fit: cover; margin-right: 10px; border-radius: 5px;");

      // Create the details container (name and price)
      const details = document.createElement("div");
      details.style.display = "flex"; // Align items horizontally
      details.style.alignItems = "center"; // Vertically center the items

      // Create product name and price
      const productNameElement = document.createElement("p");
      productNameElement.textContent = productName;
      productNameElement.style.margin = "0";
      productNameElement.style.fontWeight = "bold";

      const productPriceElement = document.createElement("p");
      productPriceElement.textContent = productPrice;
      productPriceElement.style.margin = "0";
      productPriceElement.style.marginLeft = "10px"; // Space between name and price

      // Append name and price to the details container
      details.appendChild(productNameElement);
      details.appendChild(productPriceElement);

       const removeButton = document.createElement("button");
      const removeImage = document.createElement("img");  // Create an img element for the remove button
      removeImage.setAttribute("src", "img/remove.png");  // Set the image source
      removeImage.setAttribute("alt", "Remove Item");
      removeButton.classList.add("remove-btn");
      removeButton.appendChild(removeImage);

      // Event listener to remove the product
      removeButton.addEventListener("click", () => {
        wishlistItem.remove(); // Remove the wishlist item from the DOM
      });

      // Add the image, details, and remove button to the wishlist item
      wishlistItem.appendChild(img);
      wishlistItem.appendChild(details);
      wishlistItem.appendChild(removeButton);

      // Append the wishlist item to the wishlist container
      wishlistContainer.appendChild(wishlistItem);

    }
  }
});
