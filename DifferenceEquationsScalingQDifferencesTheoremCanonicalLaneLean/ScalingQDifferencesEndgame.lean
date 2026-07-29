import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

def QDifferenceWitnessClosed (O : AdmittedQDifferenceObject) : Prop :=
  O.eigenvalueEquation

structure AnalyticFoundation where
  qDiamond : QDiamondPackage
  qExponential : QExponentialPackage
  qDiffEq : QDifferenceEquationPackage
  qDiamondEvidence : QDiamondEvidence qDiamond
  qExponentialEvidence : QExponentialEvidence qExponential
  qDiffEqEvidence : QDifferenceEquationEvidence qDiffEq

def AnalyticFoundationClosed (F : AnalyticFoundation) : Prop :=
  QDiamondClosed F.qDiamond ∧ QExponentialClosed F.qExponential ∧ QDifferenceEquationClosed F.qDiffEq

theorem analytic_foundation_closed_from_evidence (F : AnalyticFoundation) :
    AnalyticFoundationClosed F := by
  exact And.intro (qdiamond_closed_from_evidence F.qDiamond F.qDiamondEvidence)
    (And.intro (qexponential_closed_from_evidence F.qExponential F.qExponentialEvidence)
      (qdifference_equation_closed_from_evidence F.qDiffEq F.qDiffEqEvidence))

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse