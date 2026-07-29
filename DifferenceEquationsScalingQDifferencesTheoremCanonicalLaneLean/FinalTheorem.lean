import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

def ConstrainedQDifferencesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qdifferences_endgame (A : AdmissibleClass) :
    ConstrainedQDifferencesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse