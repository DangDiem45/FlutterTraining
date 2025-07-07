import 'package:final_project/features/ecommerce/presentation/home/bloc/home_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/home/bloc/home_event.dart';
import 'package:final_project/features/ecommerce/presentation/home/bloc/home_state.dart';
import 'package:final_project/features/ecommerce/presentation/home/widgets/category_chip.dart';
import 'package:final_project/features/ecommerce/presentation/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(LoadHome());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, color: Colors.black),
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(RefreshHome());
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for clothes...',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Icon(Icons.mic, color: Colors.grey),
                        contentPadding: EdgeInsets.only(top: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) {
                        final category = state.categories[index];
                        return CategoryChip(
                          label: category,
                          // onTap: () {
                          // },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  if (state.isLoading)
                    const Center(child: CircularProgressIndicator())
                  else if (state.error != null)
                    Center(
                      child: Column(
                        children: [
                          Text('Error: ${state.error}'),
                          ElevatedButton(
                            onPressed: () {
                              context.read<HomeBloc>().add(RefreshHome());
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    )
                  else
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        final product = state.products[index];
                        return ProductCard(product: product);
                      },
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
