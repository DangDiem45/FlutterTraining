import 'package:final_project/features/ecommerce/presentation/save/bloc/saved_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/save/bloc/saved_state.dart';
import 'package:final_project/features/ecommerce/presentation/save/widgets/saved_item_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/save/widgets/empty_favorite_widget.dart';
import 'package:final_project/features/ecommerce/presentation/save/widgets/product_grid_widget.dart';

class SaveItemPage extends StatelessWidget {
  const SaveItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SavedItemAppBar(),
      body: BlocBuilder<SavedBloc, SavedState>(
        builder: (context, state) {
          return state.favorite.isEmpty
              ? const EmptyFavoriteWidget()
              : const Padding(
                  padding: EdgeInsets.all(16),
                  child: ProductGridWidget(),
                );
        },
      ),
    );
  }
}
