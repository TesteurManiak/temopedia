int booleanToInt(bool val) => val ? 1 : 0;

bool intToBool(int val) {
  switch (val) {
    case 1:
      return true;
    case 0:
      return false;
    default:
      return null;
  }
}
