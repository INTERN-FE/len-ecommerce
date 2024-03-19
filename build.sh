docker build -f ./mf-ecommerce-host/Dockerfile --label mf-ecommerce-host -t xyzuan/mf-ecommerce-host:1.2 .
docker build -f ./mf-list-product/Dockerfile --label mf-list-product -t xyzuan/mf-list-product:1.2 .
docker build -f ./mf-payment-and-cart/Dockerfile --label mf-payment-and-cart -t xyzuan/mf-payment-and-cart:1.2 .

docker push xyzuan/mf-ecommerce-host:1.2
docker push xyzuan/mf-list-product:1.2
docker push xyzuan/mf-payment-and-cart:1.2