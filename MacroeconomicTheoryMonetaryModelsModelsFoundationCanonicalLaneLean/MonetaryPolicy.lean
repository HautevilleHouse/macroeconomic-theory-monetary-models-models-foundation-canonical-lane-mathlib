import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundation

structure MonetaryPolicyPackage where
  moneyDemand : Prop
  interestRateRule : Prop
  inflationTarget : Prop
  monetaryTransmission : Prop

structure MonetaryPolicyEvidence (M : MonetaryPolicyPackage) where
  moneyDemandClosed : M.moneyDemand
  interestRateRuleClosed : M.interestRateRule
  inflationTargetClosed : M.inflationTarget
  monetaryTransmissionClosed : M.monetaryTransmission

def MonetaryPolicyClosed (M : MonetaryPolicyPackage) : Prop :=
  M.moneyDemand ∧ M.interestRateRule ∧ M.inflationTarget ∧ M.monetaryTransmission

theorem monetary_policy_closed_from_evidence (M : MonetaryPolicyPackage)
    (E : MonetaryPolicyEvidence M) : MonetaryPolicyClosed M := by
  exact And.intro E.moneyDemandClosed
    (And.intro E.interestRateRuleClosed
      (And.intro E.inflationTargetClosed E.monetaryTransmissionClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundation
end HautevilleHouse