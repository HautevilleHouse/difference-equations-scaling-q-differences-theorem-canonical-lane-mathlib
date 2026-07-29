import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QDifferenceEquationPackage (A : AdmissibleClass) where
  linearOperator : (ℕ → ℚ) → (ℕ → ℚ)
  sourceTerm : ℕ → ℚ
  homogeneousSolutionSpace : Type u
  particularSolution : ℕ → ℚ
  solvabilityCondition : Prop
  solutionExpression : Prop
  solvabilityConditionClosed : solvabilityCondition
  solutionExpressionClosed : solutionExpression

structure QDifferenceEquationEvidence {A : AdmissibleClass} (D : QDifferenceEquationPackage A) where
  solvabilityConditionClosed : D.solvabilityCondition
  solutionExpressionClosed : D.solutionExpression

def QDifferenceEquationClosed {A : AdmissibleClass} (D : QDifferenceEquationPackage A) : Prop :=
  D.solvabilityCondition ∧ D.solutionExpression

theorem qdifference_equation_closed_from_evidence {A : AdmissibleClass} (D : QDifferenceEquationPackage A) (E : QDifferenceEquationEvidence D) :
    QDifferenceEquationClosed D := by
  exact And.intro E.solvabilityConditionClosed E.solutionExpressionClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse