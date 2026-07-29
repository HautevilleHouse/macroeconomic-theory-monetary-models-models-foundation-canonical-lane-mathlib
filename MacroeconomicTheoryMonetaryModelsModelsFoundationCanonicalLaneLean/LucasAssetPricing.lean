import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure LucasAssetPricingPackage where
  representativeAgent : Type u
  consumptionProcess : Type v
  dividendProcess : Type w
  equilibriumPrice : Prop
  stochasticDiscountFactor : Prop
  riskFreeRate : Prop
  equityPremium : Prop

structure LucasAssetPricingEvidence (L : LucasAssetPricingPackage) where
  equilibriumPriceClosed : L.equilibriumPrice
  stochasticDiscountFactorClosed : L.stochasticDiscountFactor
  riskFreeRateClosed : L.riskFreeRate
  equityPremiumClosed : L.equityPremium

def LucasAssetPricingClosed (L : LucasAssetPricingPackage) : Prop :=
  L.equilibriumPrice ∧ L.stochasticDiscountFactor ∧
  L.riskFreeRate ∧ L.equityPremium

theorem lucas_asset_pricing_closed_from_evidence
    (L : LucasAssetPricingPackage)
    (Ev : LucasAssetPricingEvidence L) :
    LucasAssetPricingClosed L := by
  exact And.intro Ev.equilibriumPriceClosed
    (And.intro Ev.stochasticDiscountFactorClosed
      (And.intro Ev.riskFreeRateClosed Ev.equityPremiumClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse