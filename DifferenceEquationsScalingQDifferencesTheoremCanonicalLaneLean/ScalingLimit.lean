import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean.QDifferenceOperator

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure ScalingLimit (O : QDifferenceOperator) where
  scalingFactor : ℚ
  qPower : ℕ
  limitFunction : ℕ → ℚ
  convergence : Prop
  uniqueness : Prop
  convergenceTerm : convergence
  uniquenessTerm : uniqueness

structure ScalingLimitEvidence {O : QDifferenceOperator}
    (S : ScalingLimit O) where
  convergenceClosed : S.convergence
  uniquenessClosed : S.uniqueness

def ScalingLimitClosed {O : QDifferenceOperator}
    (S : ScalingLimit O) : Prop :=
  S.convergence ∧ S.uniqueness

theorem scaling_limit_closed_from_evidence {O : QDifferenceOperator}
    (S : ScalingLimit O) (E : ScalingLimitEvidence S) :
    ScalingLimitClosed S :=
  And.intro E.convergenceClosed E.uniquenessClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse
