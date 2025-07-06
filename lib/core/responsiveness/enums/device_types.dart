enum Device {
  web(1024),
  tablet(600),
  mobile(600);

  const Device(this.width);

  final int width;
}