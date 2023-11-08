# Pets - Desafio técnico WaProject

## Este projeto é um teste técnico

# Descrição do projeto

Este é um projeto criado com flutter, MobX e Floor como banco de dados local.

## Como executar o projeto

**Passo 1:**

Faça o download ou clone o repositório por meio do link abaixo:

```
https://github.com/goj1/pets
```

**Passo 2:**

Usando um terminal de sua preferência navegue até a raiz do projeto e execute os 
comandos abaixo:

```
flutter pub get 
```
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Para executar o aplicativo siga leia este link:
```
https://docs.flutter.dev/get-started/test-drive?tab=androidstudio
```

## Funcionalidades:

* Splash
* Onboarding
* Login
* Home

### Pacotes e ferramentas utilizadas

* [MobX](https://mobx.netlify.app/)
* [Floor](https://pinchbv.github.io/floor/)
* [GetIt](https://github.com/fluttercommunity/get_it)
* [GetIt](https://pub.dev/packages/http)
* [Line Awesome](https://pub.dev/packages/line_awesome_flutter/versions/2.0.0)
* [Internet Connection Checker](https://pub.dev/packages/internet_connection_checker)
* [Connectivity Plus](https://pub.dev/packages/connectivity_plus)
* [Flutter Animate](https://pub.dev/packages/flutter_animate)

### Estrutura de pastas

```
pets/
|- android
|- build
|- ios
|- lib
|- test
```

```
lib/
|- features/
|--- home/
|----- data/
|------- datasources/
|------- repositories_impl/
|----- domain/
|------- repositories/
|------- usecases/
|----- ui/
|------- controllers/
|------- pages/
|--- load/
|----- ui/
|------- pages/
|--- login/
|----- data/
|------- repositories_impl/
|----- domain/
|------- repositories/
|------- usecases/
|----- ui/
|------- controllers/
|------- pages/
|--- onboarding/
|----- ui/
|------- pages/
|--- pet/
|----- ui/
|------- pages/
|- infra/
|--- db/
|--- factories/
|----- http/
|----- navigation/
|--- store/
|- shared/
|--- shared/
|----- features/
|------- app/
|--------- data/
|----------- daos/
|----------- models/
|----------- repositories_impl/
|--------- domain/
|----------- repositories/
|----------- usecases/
|--------- entities/
|--------- ui/
|----------- controllers/
|----- ui/
|------- app/
|------- buttons/
|------- dialogs/
|------- dividers/
|------- inputs/
|------- indicator/
|------- loading_indicators/
|------- snackbar/
|--- utils/
|----- const/
|----- enums/
|----- extensions/
|--- main.dart
test/
|- unit/
|- widget/
|- integration/
```

### Build

**Para gerar uma versão para android (apk) configute o path da key.store em pets/android/app/key.properties.**
**Já existe um arquivo .jks em /android**
**Para gerar release basta executar:**

```
flutter build apk
```