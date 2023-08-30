Things you may want to cover:

*Version de ruby "3.2.2"

gems Faker / sqlite

Iniciar el proyecto con RAILS S esta funcionando

Database creation

Para subirlo a heroku sigue estos pasitos heroku login Luego Crea una Aplicación en Heroku: heroku create nombre-de-tu-app (yo la cree como howartdatos, pero no hay caso no se me despliega y me cuesta mucho hacer funcionar heroku ) luego lo enlazamos con el repo de git hub heroku git:remote -a nombre-de-tu-app(este es el nombre de la app en heroku) Podemos directamente desde el repo con este comando lograr que se pase a heroku git push heroku master

para ejecutar las migraciones de la base de datos heroku run rake db:migrate luego abrimos la app y la desplegamos heroku open
