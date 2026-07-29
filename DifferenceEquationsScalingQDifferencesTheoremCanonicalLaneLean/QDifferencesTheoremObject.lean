import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean

structure QDifferenceRecurrence where
  baseFunction : Type u
  q : ℚ
  shift : ℕ → ℤ
  recurrenceRule : ℕ → Prop

diffStructure QDifferenceAdmittedObject where
  recurrence : QDifferenceRecurrence
  scalingProperty : Prop
  closedFormExists : Prop
  conclusion : closedFormExists

def QDifferenceWitnessClosed (O : QDifferenceAdmittedObject) : Prop :=
  O.closedFormExists

end DifferenceEquationsScalingQDifferencesTheoremCanonicalLaneLean
end HautevilleHouse
