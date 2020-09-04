import 'Dart:math' as math;

class Wheel {
  double rim, tire;

  Wheel(rim, tire) {
    this.rim = rim;
    this.tire = tire;
  }

  double diameter() {
    return this.rim + (this.tire * 2);
  }

  double circumference() {
    return this.diameter() * math.pi;
  }
}

class Gear {
  double chainring, cog;
  var wheel;

  Gear(chainring, cog, [wheel]) {
    this.chainring = chainring;
    this.cog = cog;
    this.wheel = wheel;
  }

  double ratio() {
    return this.chainring / this.cog;
  }

  double gearInches() {
    return this.ratio() * this.wheel.diameter();
  }
}

void main() {
  Wheel wheel = new Wheel(26.0, 1.5);
  print(wheel.circumference());
  print(Gear(52.0, 11.0).ratio());
  print(Gear(52.0, 11.0, wheel).gearInches());
}
