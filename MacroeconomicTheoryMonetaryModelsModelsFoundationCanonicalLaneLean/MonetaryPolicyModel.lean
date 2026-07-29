import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure NewKeynesianModel where
  outputGap : ℝ → ℝ
  inflation : ℝ → ℝ
  interestRate : ℝ → ℝ
  isCurve : outputGap = - (interestRate - inflation)  -- placeholder
  phillipsCurve : inflation = 0.5 * outputGap  -- placeholder
  equilibriumCondition : Prop

def MonetaryPolicyAnalysis (M : NewKeynesianModel) : Prop :=
  M.equilibriumCondition

theorem monetary_policy_closed (M : NewKeynesianModel) (h : MonetaryPolicyAnalysis M) :
    M.equilibriumCondition := h

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse