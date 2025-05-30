import Debug "mo:base/Debug";
import Float "mo:base/Float";

actor SimpleCalculator {

  // Addition of two float numbers
  public func add(a: Float, b: Float): async Float {
    return a + b;
  };

  // Subtraction of two float numbers
  public func subtract(a: Float, b: Float): async Float {
    return a - b;
  };

  // Multiplication of two float numbers
  public func multiply(a: Float, b: Float): async Float {
    return a * b;
  };

  // Division with check for division by zero
  public func divide(a: Float, b: Float): async ?Float {
    if (b == 0.0) {
      Debug.print("Error: Division by zero");
      return null;
    } else {
      return ?(a / b);
    };
  };

  // Exponentiation using Float.pow
  public func power(base: Float, exponent: Float): async Float {
    return Float.pow(base, exponent);
  };

  // Square root using Float.sqrt with negative check
  public func sqrt(x: Float): async ?Float {
    if (x < 0.0) {
      Debug.print("Error: Negative input to sqrt");
      return null;
    } else {
      return ?(Float.sqrt(x));
    };
  };

  // Sine function (radians)
  public func sin(x: Float): async Float {
    return Float.sin(x);
  };

  // Cosine function (radians)
  public func cos(x: Float): async Float {
    return Float.cos(x);
  };

  // Tangent with check for undefined values
  public func tan(x: Float): async ?Float {
    let cosVal = Float.cos(x);
    if (Float.abs(cosVal) < 1e-10) {
      Debug.print("Error: Tangent undefined (cos ≈ 0)");
      return null;
    } else {
      return ?(Float.tan(x));
    };
  };
};
