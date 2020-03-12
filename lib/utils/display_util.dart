enum NavLinks { Home, Resources, Videos, Podcasts }

String displayString(NavLinks link) {
  switch(link) {
    case NavLinks.Home:
      return "Home";
      break;

    case NavLinks.Resources:
      return "Resources";
      break;
    case NavLinks.Videos:
      return "Videos";
      break;

    case NavLinks.Podcasts:
      return "Podcasts";
      break;

    default:
      return "";

  }
}

String linkUrl(NavLinks link) {
  switch(link) {
    case NavLinks.Home:
      return "https://flutter-to-fly.web.app/";
      break;

    case NavLinks.Resources:
      return "https://github.com/ptyagicodecamp";
      break;
    case NavLinks.Videos:
      return "https://www.youtube.com/channel/UCO3_dbHasEnA2dr_U0EhMAA?view_as=subscriber";
      break;

    case NavLinks.Podcasts:
      return "https://www.manager-tools.com/podcasts";
      break;

    default:
      return "";

  }
}