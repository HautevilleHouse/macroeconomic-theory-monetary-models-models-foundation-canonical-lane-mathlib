import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure NewKeynesianPackage where
  phillipsCurve : Prop
  isCurve : Prop
  monetaryPolicyRule : Prop
  rationalExpectations : Prop
  stickyPrices : Prop

structure NewKeynesianEvidence (N : NewKeynesianPackage) where
  phillipsCurveClosed : N.phillipsCurve
  isCurveClosed : N.isCurve
  monetaryPolicyRuleClosed : N.monetaryPolicyRule
  rationalExpectationsClosed : N.rationalExpectations
  stickyPricesClosed : N.stickyPrices

def NewKeynesianClosed (N : NewKeynesianPackage) : Prop :=
  N.phillipsCurve ∧ N.isCurve ∧ N.monetaryPolicyRule ∧ N.rationalExpectations ∧ N.stickyPrices

theorem new_keynesian_closed_from_evidence (N : NewKeynesianPackage) (E : NewKeynesianEvidence N) : NewKeynesianClosed N := by
  exact And.intro E.phillipsCurveClosed (And.intro E.isCurveClosed (And.intro E.monetaryPolicyRuleClosed (And.intro E.rationalExpectationsClosed E.stickyPricesClosed)))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse
