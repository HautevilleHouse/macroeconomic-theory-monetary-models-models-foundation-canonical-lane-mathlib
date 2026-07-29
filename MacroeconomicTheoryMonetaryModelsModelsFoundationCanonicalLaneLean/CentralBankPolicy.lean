import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure CentralBankPolicyPackage where
  interestRateRule : Prop
  inflationTarget : Prop
  outputGapStabilization : Prop
  policyCredibility : Prop

structure CentralBankPolicyEvidence (C : CentralBankPolicyPackage) where
  interestRateRuleClosed : C.interestRateRule
  inflationTargetClosed : C.inflationTarget
  outputGapStabilizationClosed : C.outputGapStabilization
  policyCredibilityClosed : C.policyCredibility

def CentralBankPolicyClosed (C : CentralBankPolicyPackage) : Prop :=
  C.interestRateRule ∧ C.inflationTarget ∧ C.outputGapStabilization ∧ C.policyCredibility

theorem central_bank_policy_closed_from_evidence (C : CentralBankPolicyPackage) (E : CentralBankPolicyEvidence C) : CentralBankPolicyClosed C := by
  exact And.intro E.interestRateRuleClosed (And.intro E.inflationTargetClosed (And.intro E.outputGapStabilizationClosed E.policyCredibilityClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse
