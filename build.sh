## Replace with desired docker hub username
cd mf-ecommerce-host
docker build -f Dockerfile \
--build-arg BASE_HOST_URL="https://ecommerce.xyzuan.my.id/" \
--build-arg MF_LIST_PRODUCT_HOST_URL="https://mf-list-product.xyzuan.my.id/" \
--build-arg MF_PAYMENT_CART_HOST_URL="https://mf-cart-payment.xyzuan.my.id/" \
--label mf-ecommerce-host \
-t xyzuan/mf-ecommerce-host:2.2 .
cd ../

cd mf-list-product
docker build -f Dockerfile \
--build-arg BASE_HOST_URL="https://mf-list-product.xyzuan.my.id/" \
--label mf-list-product \
-t xyzuan/mf-list-product:2.2 .
cd ../

cd mf-payment-and-cart
docker build -f Dockerfile\
--build-arg BASE_HOST_URL="https://mf-cart-payment.xyzuan.my.id/" \
--label mf-payment-and-cart \
-t xyzuan/mf-payment-and-cart:2.2 .

docker push xyzuan/mf-ecommerce-host:2.2
docker push xyzuan/mf-list-product:2.2
docker push xyzuan/mf-payment-and-cart:2.2