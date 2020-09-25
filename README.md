# env

Пример работы со средами окружения.  
Различные конфиги для среды разработки, тестирования, продакшна.

## Getting Started

В папке lib создаем файлы main_{env}.dart для каждой среды.  

Например, у нас три среды: dev, test, prod.  
Необходимо создать 3 файла: main_dev.dart, main_test.dart, main_prod.dart.

Все три файла по содержанию одинаковые, имеют в своей структуре только функцию main().  
В которой вызываем функцию mainCommon, которая является входной точкой нашего приложения.

Конфиги храним в виде JSON в корневой папке config:

app_config_dev.json  
{
  "env": "dev",
  "title": "DEV environment",
  "counter": 2
}

В pubspec.yaml подключаем пакет flutter_flavor: ^1.0.1+1

А также добавляем ресурс config  

assets:  
    - config/
    
Для андроида необходимо настроить сборку.

Файл android/app/build.gradle  
Ниже строки defaultConfig пишем

    flavorDimensions "env"

    productFlavors {
        dev {
            dimension "env"
            resValue "string", "app_name", "DEV"
            applicationId "com.example.dev"
            versionNameSuffix "-dev"
        }

        prod {
            dimension "env"
            resValue "string", "app_name", "PROD"
            applicationId "com.example.prod"
        }
    }

Запуск приложения с нужным окружением, напримере запуск в режиме prod

    flutter run --flavor prod --target=lib/main_prod.dart

В режимах dev, test в приложении слева снизу выводится банер