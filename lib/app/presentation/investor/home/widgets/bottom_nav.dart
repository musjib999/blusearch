import 'package:blusearch/app/index.dart';


class HomeBottomNavigation extends StatefulWidget {
  final List<Widget> screens;
  const HomeBottomNavigation({Key? key, required this.screens})
      : super(key: key);
  static Route route({required List<Widget> screens}) => MaterialPageRoute(
    builder: (_) => HomeBottomNavigation(screens: screens),
  );

  @override

  HomeBottomNavigationState createState() => HomeBottomNavigationState();
}

class HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        elevation: 3,
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Ionicons.compass, color: AppColors.inputGrey,),
            selectedIcon: Icon(Ionicons.compass, color: AppColors.primaryColor,),
            label: 'Explore',
            tooltip: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Ionicons.cellular, color: AppColors.inputGrey,),
            selectedIcon: Icon(Ionicons.cellular, color: AppColors.primaryColor,),
            label: 'Investment',
            tooltip: 'Investment',
          ),
          NavigationDestination(
            icon: Icon(Ionicons.chatbubble_ellipses, color: AppColors.inputGrey,),
            selectedIcon: Icon(Ionicons.chatbubble_ellipses, color: AppColors.primaryColor,),
            label: 'Chat',
            tooltip: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Ionicons.person_circle, color: AppColors.inputGrey,),
            selectedIcon: Icon(Ionicons.person_circle, color: AppColors.primaryColor,),
            label: 'Account',
            tooltip: 'Account',
          ),
        ],
      ),
    );
  }
}

List<Widget> investorMenu = [
  const Home(),
  const Investments(),
  const Chat(),
  const Account(),
];