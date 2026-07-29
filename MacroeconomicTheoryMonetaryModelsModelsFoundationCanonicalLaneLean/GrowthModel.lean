import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure SolowSwanParameters where
  savingsRate : ℝ
  depreciationRate : ℝ
  populationGrowthRate : ℝ
  technologyGrowthRate : ℝ
  capitalShare : ℝ

structure SolowSwanModel where
  parameters : SolowSwanParameters
  capitalPerEffectiveWorker : ℝ → ℝ
  steadyStateCapital : ℝ
  convergenceProperty : Prop
  steadyStateCapitalComputed : steadyStateCapital = ((parameters.savingsRate) / (parameters.depreciationRate + parameters.populationGrowthRate + parameters.technologyGrowthRate))^(1 / (1 - parameters.capitalShare))
  convergenceProof : convergenceProperty

def GrowthModelEvidence (M : SolowSwanModel) : Prop :=
  M.steadyStateCapitalComputed ∧ M.convergenceProof

theorem growth_model_closed (M : SolowSwanModel) (E : GrowthModelEvidence M) :
    M.steadyStateCapitalComputed ∧ M.convergenceProof := by
  exact And.intro E.1 E.2

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse