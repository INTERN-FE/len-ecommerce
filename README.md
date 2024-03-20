# eCommerce Module Federation

## Feature

- Microfrontend Product List & Detail [MF List & Detail Product](mf-list-product.xyzuan.my.id/)
- Microfrontend Payment & Cart [MF Payment & Cart](https://mf-cart-payment.xyzuan.my.id)

## Live Preview

Visit this site [ecommerce.xyzuan.my.id](https://ecommerce.xyzuan.my.id/)

## Preview

![Home](https://github.com/INTERN-FE/len-ecommerce/blob/main/public/home.png?raw=true)

## Installation

### Prerequisites

- Docker
- Nginx
- Portainer ( Optional )

### Installation Steps

1. Clone the repository 
2. Clone the submodule `git submodule update --init`
3. Change desired env variable within `./build.sh & ./docker-compose.yml`
4. Build the mf app to docker image locally: `./build.sh`
5. Served in desired URL

## License

This project is licensed under the LEN Intern MSIB6 - see the [LICENSE.md](LICENSE.md) file for details.
