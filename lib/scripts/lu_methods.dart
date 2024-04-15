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
      result += 'x$iter = ${ksi.toStringAsFixed(4)}\n';
      iter++;
    } while ((x1 - x0).abs() > e);
    result += 'ksi.toStringAsFixed(4)';
  }

  return result;
}

String tangent(double x_prev, double x_curr, double e, List<double> coefs) {
  String result = '';
  double x_next = 0;
  double tmp;
  do {
    result += 'Промежуток [${x_prev.toStringAsFixed(3)}, ${x_curr.toStringAsFixed(3)}]\n';
    result += 'Текущая точка: ${x_curr.toStringAsFixed(3)}\n';
    tmp = x_next;
    x_next = x_curr - f(x_curr, coefs) / fDerivative(x_curr, coefs);
    result += 'Следующая точка: ${x_next.toStringAsFixed(3)}\n';
    x_curr = tmp;
  } while ((x_next - x_curr).abs() > e);
  result += 'Результат: ${x_next.toStringAsFixed(3)}';
  return result;
}

double f (double x, List<double> coefs){
  return coefs[0] * pow(x, 3) + coefs[1] * x + coefs[2]; 
}

double fDerivative(x, List<double> coefs){
  return coefs[0] * 3 * pow(x, 2) + coefs[1];
}