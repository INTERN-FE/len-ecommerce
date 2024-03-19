echo "[1/3] Building mf-ecommerce-host"
cd mf-ecommerce-host
docker build -f Dockerfile \
    --build-arg BASE_HOST_URL="https://ecommerce.xyzuan.my.id/" \
    --build-arg MF_LIST_PRODUCT_HOST_URL="https://mf-list-product.xyzuan.my.id/" \
    --build-arg MF_PAYMENT_CART_HOST_URL="https://mf-cart-payment.xyzuan.my.id/" \
    --label mf-ecommerce-host \
    -t xyzuan/mf-ecommerce-host:latest .
docker push xyzuan/mf-ecommerce-host:latest
cd ..

echo "[2/3] Building mf-list-product"
cd mf-list-product
docker build -f Dockerfile \
    --build-arg BASE_HOST_URL="https://mf-list-product.xyzuan.my.id/" \
    --label mf-list-product \
    -t xyzuan/mf-list-product:latest .
docker push xyzuan/mf-list-product:latest
cd ..

echo "[3/3] Building mf-payment-and-cart"
cd mf-payment-and-cart
docker build -f Dockerfile \
    --build-arg BASE_HOST_URL="https://mf-cart-payment.xyzuan.my.id/" \
    --label mf-payment-and-cart \
    -t xyzuan/mf-payment-and-cart:latest .
docker push xyzuan/mf-payment-and-cart:latest
cd ..
