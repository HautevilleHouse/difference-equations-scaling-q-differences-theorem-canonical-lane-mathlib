import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QDifferenceOperator where
  q : ℚ
  shift : ℕ → ℚ
  action : (ℕ → ℚ) → (ℕ → ℚ)
  linearity : ℚ → ℚ → Prop
  qLeibnizRule : Prop
  linearityTerm : linearity 0 0
  qLeibnizRuleTerm : qLeibnizRule

structure QDifferenceOperatorEvidence (O : QDifferenceOperator) where
  linearityClosed : O.linearity 0 0
  qLeibnizRuleClosed : O.qLeibnizRule

def QDifferenceOperatorClosed (O : QDifferenceOperator) : Prop :=
  O.linearity 0 0 ∧ O.qLeibnizRule

theorem q_difference_operator_closed_from_evidence (O : QDifferenceOperator)
    (E : QDifferenceOperatorEvidence O) : QDifferenceOperatorClosed O :=
  And.intro E.linearityClosed E.qLeibnizRuleClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse
