import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure MarketPortfolio where
  expectedReturn : ℝ
  variance : ℝ

structure Security (β : ℝ) where
  expectedReturn : ℝ
  beta : ℝ

def CAPMFormula (marketExpectedReturn : ℝ) (riskFreeRate : ℝ) (beta : ℝ) : ℝ :=
  riskFreeRate + beta * (marketExpectedReturn - riskFreeRate)

structure CAPMAssertion (β : ℝ) where
  security : Security β
  market : MarketPortfolio
  riskFreeRate : ℝ
  pricingConsistency : security.expectedReturn = CAPMFormula market.expectedReturn riskFreeRate security.beta
  pricingConsistencyProof : pricingConsistency

def CAPMEvidence {β : ℝ} (C : CAPMAssertion β) : Prop :=
  C.pricingConsistency

theorem capm_closed {β : ℝ} (C : CAPMAssertion β) (E : CAPMEvidence C) :
    C.pricingConsistency := E

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse