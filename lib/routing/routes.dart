const rootRoute = "/";

const homePageDisplayName= "Home";
const homePageRoute = "/home";

const fensterPageDisplayName= "Fenster";
const fensterPageRoute = "/Fenster";

const rollladenPageDisplayName = "Rollladen";
const rollladenPageRoute = "/Rollladen";

const hebeschiebeanlagenPageDisplayName = "Hebeschiebeanlagen";
const hebeschiebeanlagenPageRoute = "/Hebeschiebeanlagen";

const fliegengitterPageDisplayName = "Fliegengitter";
const fliegengitterPageRoute = "/Fliegengitter";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePageDisplayName, homePageRoute),
  MenuItem(fensterPageDisplayName, fensterPageRoute),
  MenuItem(rollladenPageDisplayName, rollladenPageRoute),
  MenuItem(hebeschiebeanlagenPageDisplayName, hebeschiebeanlagenPageRoute),
  MenuItem(fliegengitterPageDisplayName, fliegengitterPageRoute),
];