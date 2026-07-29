import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean.QDifferenceOperator

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QSeriesAsymptotics (O : QDifferenceOperator) where
  asymptoticExpansion : (ℕ → ℚ) → ℚ
  growthRate : ℚ
  qExponentialWeight : ℚ
  asymptoticMatch : Prop
  remainderBound : Prop
  asymptoticMatchTerm : asymptoticMatch
  remainderBoundTerm : remainderBound

structure QSeriesAsymptoticsEvidence {O : QDifferenceOperator}
    (A : QSeriesAsymptotics O) where
  asymptoticMatchClosed : A.asymptoticMatch
  remainderBoundClosed : A.remainderBound

def QSeriesAsymptoticsClosed {O : QDifferenceOperator}
    (A : QSeriesAsymptotics O) : Prop :=
  A.asymptoticMatch ∧ A.remainderBound

theorem q_series_asymptotics_closed_from_evidence {O : QDifferenceOperator}
    (A : QSeriesAsymptotics O) (E : QSeriesAsymptoticsEvidence A) :
    QSeriesAsymptoticsClosed A :=
  And.intro E.asymptoticMatchClosed E.remainderBoundClosed

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse
