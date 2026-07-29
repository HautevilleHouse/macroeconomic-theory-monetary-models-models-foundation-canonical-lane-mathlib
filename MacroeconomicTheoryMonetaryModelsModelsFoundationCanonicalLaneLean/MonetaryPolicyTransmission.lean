import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure MonetaryPolicyTransmissionPackage where
  interestRateChannel : Prop
  creditChannel : Prop
  exchangeRateChannel : Prop
  assetPriceChannel : Prop
  expectationsChannel : Prop
  policyEffectiveness : Prop

structure MonetaryPolicyTransmissionEvidence (M : MonetaryPolicyTransmissionPackage) where
  interestRateChannelClosed : M.interestRateChannel
  creditChannelClosed : M.creditChannel
  exchangeRateChannelClosed : M.exchangeRateChannel
  assetPriceChannelClosed : M.assetPriceChannel
  expectationsChannelClosed : M.expectationsChannel
  policyEffectivenessClosed : M.policyEffectiveness

def MonetaryPolicyTransmissionClosed (M : MonetaryPolicyTransmissionPackage) : Prop :=
  M.interestRateChannel ∧ M.creditChannel ∧ M.exchangeRateChannel ∧ M.assetPriceChannel ∧ M.expectationsChannel ∧ M.policyEffectiveness

theorem monetary_policy_transmission_closed_from_evidence
    (M : MonetaryPolicyTransmissionPackage) (ev : MonetaryPolicyTransmissionEvidence M) :
    MonetaryPolicyTransmissionClosed M := by
  exact And.intro ev.interestRateChannelClosed
    (And.intro ev.creditChannelClosed
      (And.intro ev.exchangeRateChannelClosed
        (And.intro ev.assetPriceChannelClosed
          (And.intro ev.expectationsChannelClosed ev.policyEffectivenessClosed))))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse