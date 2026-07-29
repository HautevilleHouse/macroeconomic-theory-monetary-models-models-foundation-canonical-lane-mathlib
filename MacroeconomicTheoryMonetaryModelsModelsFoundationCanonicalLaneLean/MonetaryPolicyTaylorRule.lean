import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure MonetaryPolicyTaylorRulePackage where
  centralBank : Type u
  inflationTarget : Type v
  outputGap : Type w
  nominalInterestRate : Prop
  taylorRule : Prop
  inflationResponse : Prop
  outputResponse : Prop
  equilibriumDeterminacy : Prop

structure MonetaryPolicyTaylorRuleEvidence (M : MonetaryPolicyTaylorRulePackage) where
  nominalInterestRateClosed : M.nominalInterestRate
  taylorRuleClosed : M.taylorRule
  inflationResponseClosed : M.inflationResponse
  outputResponseClosed : M.outputResponse
  equilibriumDeterminacyClosed : M.equilibriumDeterminacy

def MonetaryPolicyTaylorRuleClosed (M : MonetaryPolicyTaylorRulePackage) : Prop :=
  M.nominalInterestRate ∧ M.taylorRule ∧ M.inflationResponse ∧
  M.outputResponse ∧ M.equilibriumDeterminacy

theorem monetary_policy_taylor_rule_closed_from_evidence
    (M : MonetaryPolicyTaylorRulePackage)
    (Ev : MonetaryPolicyTaylorRuleEvidence M) :
    MonetaryPolicyTaylorRuleClosed M := by
  exact And.intro Ev.nominalInterestRateClosed
    (And.intro Ev.taylorRuleClosed
      (And.intro Ev.inflationResponseClosed
        (And.intro Ev.outputResponseClosed Ev.equilibriumDeterminacyClosed)))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse