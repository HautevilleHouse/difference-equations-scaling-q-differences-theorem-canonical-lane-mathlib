import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QDiamondPackage (A : AdmissibleClass) where
  diamondOperator : (ℕ → ℚ) → (ℕ → ℚ)
  diamondScaling : ℚ → ℚ → ℚ
  diamondDefined : ∀ (f : ℕ → ℚ) (n : ℕ), diamondOperator f n = (f (n+1) - f n) / ((A.object.baseQ ^ n) * (A.object.baseQ - 1))
  linearity : Prop
  productRule : Prop
  linearityClosed : linearity
  productRuleClosed : productRule

structure QDiamondEvidence {A : AdmissibleClass} (D : QDiamondPackage A) where
  linearityClosed : D.linearity
  productRuleClosed : D.productRule

def QDiamondClosed {A : AdmissibleClass} (D : QDiamondPackage A) : Prop :=
  D.linearity ∧ D.productRule

theorem qdiamond_closed_from_evidence {A : AdmissibleClass} (D : QDiamondPackage A) (E : QDiamondEvidence D) :
    QDiamondClosed D := by
  exact And.intro E.linearityClosed E.productRuleClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse