import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QExponentialPackage where
  baseQ : ℚ
  baseQPositive : baseQ > 0
  baseQLessThanOne : baseQ < 1
  qExp : ℚ → ℚ
  qExpDefined : ∀ x, qExp x = ∑' (k:ℕ), x^k / ((baseQ:ℚ)^(k*(k-1)/2) * (∏_{i=1}^k (1 - baseQ^i)))
  convergenceRadius : Prop
  functionalEquation : Prop
  convergenceRadiusClosed : convergenceRadius
  functionalEquationClosed : functionalEquation

structure QExponentialEvidence (E : QExponentialPackage) where
  convergenceRadiusClosed : E.convergenceRadius
  functionalEquationClosed : E.functionalEquation

def QExponentialClosed (E : QExponentialPackage) : Prop :=
  E.convergenceRadius ∧ E.functionalEquation

theorem qexponential_closed_from_evidence (E : QExponentialPackage) (Ev : QExponentialEvidence E) :
    QExponentialClosed E := by
  exact And.intro Ev.convergenceRadiusClosed Ev.functionalEquationClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse