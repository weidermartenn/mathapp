import 'dart:math';

String chord(double x0, double x1, double e, List<double> coefs){
  String result = '';
  double ksi;

  if (f(x0, coefs) * f(x1, coefs) > 0) {
    result += 'В данном промежутке корня нет';
  } else {
    int iter = 1;
    do {
      result += '$iter-й промежуток [${x0.toStringAsFixed(4)} ; ${x1.toStringAsFixed(4)}]\n';
      ksi = x1 - (f(x1, coefs) * (x1 - x0)) / (f(x1, coefs) - f(x0, coefs));
      x0 = x1;
      x1 = ksi;
      result += 'x$iter = ${ksi.toStringAsFixed(4)}\n\n';
      iter++;
    } while ((x1 - x0).abs() > e);

    result += '\nОтвет: ${ksi.toStringAsFixed(4)}';
  }
  return result;
}

String tangent(double x0, double x1, double e, List<double> coefs) {
  String result = '';
  double ksi;

  if (f(x0, coefs) * f(x1, coefs) > 0) {
    result += 'В данном промежутке корня нет';
  } else {
    int iter = 1;
    do {
      result += '$iter-й промежуток [${x0.toStringAsFixed(4)} ; ${x1.toStringAsFixed(4)}]\n';
      ksi = x1 - f(x1, coefs) / fDerivative(x1, coefs);
      x0 = x1;
      x1 = ksi;
      result += 'x$iter = ${ksi.toStringAsFixed(4)}\n\n';
      iter++;
    } while ((x1 - x0).abs() > e);

    result += '\nОтвет: ${ksi.toStringAsFixed(4)}';
  }
  return result;
}

String iterative(List<double> approx, List<double> firstRow, List<double> secondRow, List<double> thirdRow, List<double> b, double e) {
  String result = '';
  double x1 = approx[0];
  double x2 = approx[1];
  double x3 = approx[2];

  result += 'Начальное приближение: {\n\tx1 = $x1\n\tx2 = $x2\n\tx3 = $x3\n}\n';

  double x1_prev, x2_prev, x3_prev;
  int iter = 1;
  
  do {
    x1_prev = x1;
    x2_prev = x2;
    x3_prev = x3;

    x1 = (b[0] - firstRow[1] * x2_prev - firstRow[2] * x3_prev) / firstRow[0];
    x2 = (b[1] - secondRow[0] * x1_prev - secondRow[2] * x3_prev) / secondRow[1];
    x3 = (b[2] - thirdRow[0] * x1_prev - thirdRow[1] * x2_prev) / thirdRow[2];

    result += 'Итерация $iter: {\n\tx1 = ${x1.toStringAsFixed(3)}\n\tx2 = ${x2.toStringAsFixed(3)}\n\tx3 = ${x3.toStringAsFixed(3)}\n}\n';

    iter++;

    double maxDiff = (x1 - x1_prev).abs();
    maxDiff = maxDiff < (x2 - x2_prev).abs() ? (x2 - x2_prev).abs() : maxDiff;
    maxDiff = maxDiff < (x3 - x3_prev).abs() ? (x3 - x3_prev).abs() : maxDiff;

    if (maxDiff < e) {
      result += 'Решение найдено после $iter итераций:\n';
      result += 'x1 = ${x1.toStringAsFixed(2)}\nx2 = ${x2.toStringAsFixed(2)}\nx3 = ${x3.toStringAsFixed(2)}\n';
      return result;
    }
  } while (true);
}

String zeidel(List<double> approx, List<double> firstRow, List<double> secondRow, List<double> thirdRow, List<double> b, double e) {
  String result = '';

  return result;
}

double f (double x, List<double> coefs){
  return coefs[0] * pow(x, 3) + coefs[1] * x + coefs[2]; 
}

double fDerivative(x, List<double> coefs){
  return coefs[0] * 3 * pow(x, 2) + coefs[1];
}