# eCommerce Module Federation

## Feature

- Concurrently Micro Frontend Services
- Docker deployment support
- Microfrontend Product List & Detail [MF List & Detail Product](mf-list-product.xyzuan.my.id/)
- Microfrontend Payment & Cart [MF Payment & Cart](https://mf-cart-payment.xyzuan.my.id)

## Live Preview

Visit this site [ecommerce.xyzuan.my.id](https://ecommerce.xyzuan.my.id/)

## Preview

![Home](https://github.com/INTERN-FE/len-ecommerce/blob/main/public/home.png?raw=true)
![Authentication](https://github.com/INTERN-FE/len-ecommerce/blob/main/public/auth.png?raw=true)
![Detail Product](https://github.com/INTERN-FE/len-ecommerce/blob/main/public/detail-product.png?raw=true)
![Cart Payment Product](https://github.com/INTERN-FE/len-ecommerce/blob/main/public/cart-list-payment.png?raw=true)

## Installation

### Prerequisites

- node.js
- yarn, never use npm instead

### Installation Steps

1. Clone the repository
2. Clone the submodule `git submodule update --init`
3. Install needed packages `yarn && yarn pkg`
4. Run the all the service with `yarn start`

### Deploy to Server with Docker

1. Change desired env variable within `./build.sh & ./docker-compose.yml`
2. Build the mf app to docker image locally: `./build.sh`
3. Served in desired URL

### Unit Testing

1. Test all mf service with `yarn test`
2. Voila!

## License

This project is licensed under the LEN Intern MSIB6 - see the [LICENSE.md](LICENSE.md) file for details.
