 body: Drawer(
          child: ListView(
            children: <Widget>[
              ExpansionTile(
                title: Text("Expansion Title"),
                children: <Widget>[Text("children 1"), Text("children 2")],
              )
            ],
          ),
        )



        body: Row(
        children: [
          SideNavigationBar(
            expandable: true,
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.home,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            theme: SideNavigationBarTheme(
              backgroundColor: Colors.grey,
              togglerTheme: SideNavigationBarTogglerTheme.standard(),
              itemTheme: SideNavigationBarItemTheme.standard(),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),