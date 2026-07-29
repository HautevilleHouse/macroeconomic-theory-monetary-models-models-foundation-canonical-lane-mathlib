import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure AssetPricingKernelPackage where
  statePrices : Type u
  stochasticDiscountFactor : Type v
  noArbitrage : Prop
  riskNeutralMeasure : Prop
  assetPrices : Prop
  pricingKernel : Prop

structure AssetPricingKernelEvidence (A : AssetPricingKernelPackage) where
  noArbitrageClosed : A.noArbitrage
  riskNeutralMeasureClosed : A.riskNeutralMeasure
  assetPricesClosed : A.assetPrices
  pricingKernelClosed : A.pricingKernel

def AssetPricingKernelClosed (A : AssetPricingKernelPackage) : Prop :=
  A.noArbitrage ∧ A.riskNeutralMeasure ∧ A.assetPrices ∧ A.pricingKernel

theorem asset_pricing_kernel_closed_from_evidence
    (A : AssetPricingKernelPackage)
    (Ev : AssetPricingKernelEvidence A) :
    AssetPricingKernelClosed A := by
  exact And.intro Ev.noArbitrageClosed
    (And.intro Ev.riskNeutralMeasureClosed
      (And.intro Ev.assetPricesClosed Ev.pricingKernelClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse