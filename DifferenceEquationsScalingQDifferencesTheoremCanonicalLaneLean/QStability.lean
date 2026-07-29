import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean.ScalingLimit

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QStability {O : QDifferenceOperator}
    (S : ScalingLimit O) where
  perturbationTolerance : ℚ → Prop
  stableLimit : Prop
  qParameterContinuity : Prop
  stableLimitTerm : stableLimit
  qParameterContinuityTerm : qParameterContinuity

structure QStabilityEvidence {O : QDifferenceOperator}
    {S : ScalingLimit O} (St : QStability S) where
  stableLimitClosed : St.stableLimit
  qParameterContinuityClosed : St.qParameterContinuity

def QStabilityClosed {O : QDifferenceOperator}
    {S : ScalingLimit O} (St : QStability S) : Prop :=
  St.stableLimit ∧ St.qParameterContinuity

theorem q_stability_closed_from_evidence {O : QDifferenceOperator}
    {S : ScalingLimit O} (St : QStability S) (E : QStabilityEvidence St) :
    QStabilityClosed St :=
  And.intro E.stableLimitClosed E.qParameterContinuityClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse
