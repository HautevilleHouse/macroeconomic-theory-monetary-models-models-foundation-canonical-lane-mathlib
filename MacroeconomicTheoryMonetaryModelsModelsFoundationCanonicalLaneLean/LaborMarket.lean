import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure SearchAndMatchingModel where
  unemploymentRate : ℝ
  jobVacancies : ℝ
  matchingFunction : ℝ → ℝ → ℝ
  marketTightness : ℝ
  jobFindingProbability : ℝ
  vacancyFillingProbability : ℝ
  equilibriumCondition : Prop

structure LaborMarketEvidence (L : SearchAndMatchingModel) where
  equilibriumConditionClosed : L.equilibriumCondition

def LaborMarketClosed (L : SearchAndMatchingModel) : Prop :=
  L.equilibriumCondition

theorem labor_market_closed_from_evidence (L : SearchAndMatchingModel) (Ev : LaborMarketEvidence L) : LaborMarketClosed L := by
  exact Ev.equilibriumConditionClosed

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse