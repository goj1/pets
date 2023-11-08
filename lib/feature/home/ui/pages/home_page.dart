import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pets/feature/home/ui/controllers/home_controller.dart';
import 'package:pets/infra/factories/navigation/custom_navigator.dart';
import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';
import 'package:pets/shared/ui/app/custom_scaffold.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/buttons/button_default.dart';
import 'package:pets/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pets/util/enums/app_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _homeController = getIt<HomeController>();
  final CoreController _coreController = getIt<CoreController>();
  final ScrollController _scrollControllerCats = ScrollController();
  final ScrollController _scrollControllerDogs = ScrollController();
  final GlobalKey _catsKey = GlobalKey();
  final GlobalKey _dogsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollControllerCats.addListener(loadMoreMoviesCats);
    _scrollControllerDogs.addListener(loadMoreMoviesDogs);
    _homeController.loadData().then((value) => null);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollControllerCats.dispose();
    _scrollControllerDogs.dispose();
  }

  void loadMoreMoviesCats() async {
    if (_scrollControllerCats.position.pixels == _scrollControllerCats.position.maxScrollExtent) {
      _homeController.plusPageCats();
      await _homeController.getCats();
    }
  }

  void loadMoreMoviesDogs() async {
    if (_scrollControllerDogs.position.pixels == _scrollControllerDogs.position.maxScrollExtent) {
      _homeController.plusPageDogs();
      await _homeController.getDogs();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: false,
      withSafeArea: true,
      child: LayoutBuilder(
        builder: (context, contraints) => ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: contraints.maxHeight,
          ),
          child: Observer(
            builder: (_) {
              return _coreController.isLoading && _homeController.cats.isEmpty && _homeController.dogs.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300.0,
                          height: 300.0,
                          child: Image.asset('assets/logo.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Carregando pets...',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        LoadingIndicator(
                            size: AppEnum.big, color: AppColors.primary, backgroundColor: AppColors.background),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                const SizedBox(height: 8.0),
                                Observer(builder: (_) {
                                  return getRow(
                                    key: _dogsKey,
                                    title: 'Cães',
                                    pets: _homeController.dogs,
                                    scrollController: _scrollControllerDogs,
                                    loading: _homeController.isLoadingDogs,
                                  ).animate().fadeIn(duration: 1000.ms);
                                }),
                                Observer(builder: (_) {
                                  return getRow(
                                    key: _catsKey,
                                    title: 'Gatos',
                                    pets: _homeController.cats,
                                    scrollController: _scrollControllerCats,
                                    loading: _homeController.isLoadingCats,
                                  ).animate().fadeIn(duration: 1000.ms);
                                }),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: ButtonDefault(
                                    label: Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: AppColors.black,
                                      ),
                                    ),
                                    disabled: false,
                                    rounded: true,
                                    onTap: () {
                                      _coreController.signOut().then((value) {
                                        CustomNavigator.goToWithClearStack(
                                          NavigationService.appNavigator.currentContext!,
                                          Pages.login,
                                        );
                                      });
                                    },
                                  ),
                                ),
                              ].animate(interval: 400.ms).fadeIn(duration: 1000.ms),
                            ),
                          ),
                        ),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }

  Widget getRow({
    required GlobalKey key,
    required String title,
    required List<PetEntity> pets,
    required ScrollController scrollController,
    required bool loading,
  }) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .43,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(.4),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: scrollController,
                    itemCount: pets.length,
                    physics: const BouncingScrollPhysics(),
                    cacheExtent: 8.0,
                    itemBuilder: (context, index) {
                      PetEntity petEntity = pets[index];
                      return GestureDetector(
                        onTap: () {
                          _coreController.setPetSelected(petEntity);
                          CustomNavigator.goTo(context, Pages.pet);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image.network(
                              petEntity.imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Visibility(
                  visible: loading,
                  child: LoadingIndicator(
                    color: AppColors.primary,
                    size: AppEnum.small,
                  ),
                ),
                const SizedBox(width: 8.0),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    ).animate().fadeIn();
  }
}
