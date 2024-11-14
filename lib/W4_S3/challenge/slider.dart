import 'package:flutter/material.dart';
import 'package:lesson/W4_S3/challenge/button.dart';

enum WeatherCondition {
  frost(Icons.ac_unit),
  snowy(Icons.cloudy_snowing),
  sunny(Icons.sunny),
  hot(Icons.local_fire_department);

  final IconData value;

  const WeatherCondition(this.value);
}

class SlideTemperature extends StatefulWidget {
  SlideTemperature({
    super.key,
  });
  @override
  State<SlideTemperature> createState() => _SlideTemperatureState();
}

class _SlideTemperatureState extends State<SlideTemperature> {
  double temperature = 0;
  String formattedNumber = "0";

  void updateState(double newtemperature) {
    setState(() {
      temperature = newtemperature;
      formattedNumber = temperature.toStringAsFixed(0);
    });
  }

  void addState() {
    setState(() {
      temperature = temperature + 10;
      if (temperature >= 100) {
        temperature = 100;
      }
      formattedNumber = temperature.toStringAsFixed(0);
    });
  }

  void subState() {
    setState(() {
      temperature = temperature - 10;
      if (temperature <= 0) {
        temperature = 0;
      }
      formattedNumber = temperature.toStringAsFixed(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconWeather(),
           const SizedBox(
            height: 40,
          ),
          label(),
          bar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddButtom(icon: Icons.remove, trigger: subState),
              AddButtom(icon: Icons.add, trigger: addState),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          slider()
        ],
      ),
    );
  }

  Icon iconWeather() {
    int index = int.parse(formattedNumber);
    if (index >= 0 && index < 10) {
      index = 0;
    } else if (index >= 10 && index < 15) {
      index = 1;
    } else if (index >= 15 && index < 35) {
      index = 2;
    } else {
      index = 3;
    }
    return Icon(
      WeatherCondition.values[index].value,
      color: colorStatus(formattedNumber),
      size: 36,
    );
  }

  Widget slider() {
    return Slider(
      value: temperature,
      onChanged: (double newtemperature) {
        updateState(newtemperature);
      },
      max: 100,
    );
  }

  Color colorStatus(String value) {
    int newValue = int.parse(value);
    double normalizedValue = newValue / 100;
    return Color.lerp(Colors.blue, Colors.red, normalizedValue)!;
  }

  Widget label() {
    return Text(
      "$formattedNumber °C",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        color: colorStatus(formattedNumber),
      ),
    );
  }

  Widget bar() {
    return Container(
        height: 44,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutExpo,
            height: 44,
            width: (double.parse(formattedNumber) * 3),
            decoration: BoxDecoration(
                color: colorStatus(formattedNumber),
                borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
