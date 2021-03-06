part of tensorflow;

abstract class Optimizer {
  final String _name;

  Optimizer._(this._name);

  factory Optimizer.gradientDescent(
          {@required double learningRate, bool useLocking: true}) =>
      new _GradientDescentOptimizer(learningRate, useLocking);

  Output<T> _applyDense<T>(Output var$, Output<T> grad);

  @mustCallSuper
  Output<T> minimize<T>(Output<T> grad) {
    var v = _init(grad);
    v = _applyDense<T>(v, grad);
    return v;
  }

  Output _init(Output target) {
    var _var = getVariable(
      defaultGraph._scope.uniqueName('${_name}Optimizer/'),
      shape: target.shape,
      dtype: target.dtype,
    );
    return _var..initializer.run();
  }
}

class _GradientDescentOptimizer extends Optimizer {
  final double learningRate;
  final bool useLocking;

  _GradientDescentOptimizer(this.learningRate, this.useLocking)
      : super._('GradientDescent');

  @override
  Output<T> _applyDense<T>(Output var$, Output<T> grad) {
    return applyGradientDescent(
      var$.value,
      constant(learningRate),
      grad,
      useLocking: useLocking,
    );
  }
}
