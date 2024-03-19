## Replace with desired docker hub username
cd mf-ecommerce-host
docker build -f Dockerfile --label mf-ecommerce-host -t xyzuan/mf-ecommerce-host:1.2 .
cd ../

cd mf-list-product
docker build -f Dockerfile --label mf-list-product -t xyzuan/mf-list-product:1.2 .
cd ../

cd mf-payment-and-cart
docker build -f Dockerfile --label mf-payment-and-cart -t xyzuan/mf-payment-and-cart:1.2 .

docker push xyzuan/mf-ecommerce-host:1.2
docker push xyzuan/mf-list-product:1.2
docker push xyzuan/mf-payment-and-cart:1.2