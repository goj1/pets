import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';
import 'package:pets/shared/ui/app/custom_scaffold.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';

class PetPage extends StatefulWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  State<PetPage> createState() => _HomePageState();
}

class _HomePageState extends State<PetPage> {
  final CoreController _coreController = getIt<CoreController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: true,
      withSafeArea: true,
      namePage: 'Detalhes',
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Observer(
          builder: (_) {
            return _coreController.petEntitySelected != null ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        _coreController.petEntitySelected!.imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    _coreController.petEntitySelected!.name,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Visibility(
                  visible: _coreController.petEntitySelected!.lifeSpan.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Life span: ${_coreController.petEntitySelected!.lifeSpan}',
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _coreController.petEntitySelected!.origin.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Origin: ${_coreController.petEntitySelected!.origin}',
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _coreController.petEntitySelected!.temperament.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      _coreController.petEntitySelected!.temperament,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Wrap(
                      runSpacing: 8.0,
                      spacing: 8.0,
                      children: [
                        Visibility(
                          visible: _coreController.petEntitySelected!.weight.isNotEmpty,
                          child: cardInfo(
                            icon: LineAwesomeIcons.weight,
                            type: 'Weight',
                            value: '${_coreController.petEntitySelected!.weight} lb',
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.adaptability > 0,
                          child: cardInfo(
                            icon: Icons.published_with_changes,
                            type: 'Adaptability',
                            value: _coreController.petEntitySelected!.adaptability.toString(),
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.affectionLevel > 0,
                          child: cardInfo(
                            icon: Icons.diversity_2,
                            type: 'Affection level',
                            value: _coreController.petEntitySelected!.affectionLevel.toString(),
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.energyLevel > 0,
                          child: cardInfo(
                            icon: Icons.bolt,
                            type: 'Energy level',
                            value: _coreController.petEntitySelected!.energyLevel.toString(),
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.childFriendly > 0,
                          child: cardInfo(
                            icon: Icons.child_friendly,
                            type: 'Child friendly',
                            value: _coreController.petEntitySelected!.childFriendly.toString(),
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.healthIssues > 0,
                          child: cardInfo(
                            icon: Icons.health_and_safety,
                            type: 'Health issues',
                            value: _coreController.petEntitySelected!.healthIssues.toString(),
                          ),
                        ),
                        Visibility(
                          visible: _coreController.petEntitySelected!.intelligence > 0,
                          child: cardInfo(
                            icon: LineAwesomeIcons.brain,
                            type: 'Intelligence',
                            value: _coreController.petEntitySelected!.intelligence.toString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _coreController.petEntitySelected!.description.isNotEmpty,
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _coreController.petEntitySelected!.description.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      _coreController.petEntitySelected!.description,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ) : Container(
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width * .7,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: AppColors.secondary,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'Nenhum pet foi encontrado.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget cardInfo({required IconData icon, required String type, required String value}) {
    return Container(
      height: 80.0,
      width: 80.0,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(.2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Icon(icon),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              type,
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),
          ),
          Flexible(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
