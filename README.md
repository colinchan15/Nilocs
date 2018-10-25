# Niloc's eCommerce Cube Store

Niloc's Store is a fictional eCommerce Store that sells Rubik's cubes. Deployed on a kubernetes environment (using Docker and Google Kubernetes Engine) which can be accessed [here](http://35.196.209.30:3000).

Dockerhub repo for this image can be found [here](https://hub.docker.com/r/colinrc827/nilocsstore/).

ER Diagram for this app can be [here](https://drive.google.com/file/d/1PCxktd3XFryh5aOdfn9VTInOXmhSZZZ-/view?usp=sharing)

The process I took to deploy my app to GKE can be found [here](https://docs.google.com/document/d/1A7EeWRUuFsKUbUKpg2tZu5dd8aPDEJSsvMyyPmQv6MY/edit?usp=sharing)

## Built Using:
* Ruby 2.5.1
* Rails 5.2.1

## Gems Used:
* [Bulma Rails](https://github.com/jgthms/bulma)
* [Simple Form](https://github.com/plataformatec/simple_form)
* [Devise](https://github.com/plataformatec/devise) 
* [Mini Magick](https://github.com/minimagick/minimagick)
* [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)

## Installation Instructions

1. Install dependencies via `bundle install`
2. Migrate database `rails db:migrate`
3. Seed database `rails db:seed`
4. You're all set!

