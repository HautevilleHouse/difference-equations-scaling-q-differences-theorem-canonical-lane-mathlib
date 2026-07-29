import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure AdmittedQDifferenceObject where
  baseQ : ℚ
  baseQPositive : baseQ > 0
  baseQLessThanOne : baseQ < 1
  scalingParameter : ℕ → ℚ
  scalingParameterDefined : ∀ n, scalingParameter n = baseQ ^ n
  qDifferenceDefined : Prop
  qDifferenceOperator : (ℕ → ℚ) → (ℕ → ℚ)
  eigenvalueEquation : Prop
  conclusion : eigenvalueEquation

structure AdmissibleClass where
  object : AdmittedQDifferenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QDifferenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse