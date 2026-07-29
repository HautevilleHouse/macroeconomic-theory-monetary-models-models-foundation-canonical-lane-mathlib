import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundation

structure AssetPricingPackage where
  pricingKernel : Prop
  statePrices : Prop
  riskNeutralMeasure : Prop
  noArbitrage : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  pricingKernelClosed : A.pricingKernel
  statePricesClosed : A.statePrices
  riskNeutralMeasureClosed : A.riskNeutralMeasure
  noArbitrageClosed : A.noArbitrage

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.pricingKernel ∧ A.statePrices ∧ A.riskNeutralMeasure ∧ A.noArbitrage

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.pricingKernelClosed
    (And.intro E.statePricesClosed
      (And.intro E.riskNeutralMeasureClosed E.noArbitrageClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundation
end HautevilleHouse