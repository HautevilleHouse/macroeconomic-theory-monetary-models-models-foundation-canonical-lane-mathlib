import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X -> X -> Prop
  completeness : ∀ x y : X, relation x y ∨ relation y x
  transitivity : ∀ x y z : X, relation x y → relation y z → relation x z

structure UtilityFunction (X : Type u) where
  function : X → ℝ
  represents : PreferenceRelation X
  representingProof : ∀ x y : X, represents.relation x y ↔ function x ≥ function y
  utilityClosed : representingProof

def UtilityEvidence (X : Type u) (U : UtilityFunction X) : Prop :=
  ∀ x y : X, U.represents.relation x y ↔ U.function x ≥ U.function y

theorem utility_closed (X : Type u) (U : UtilityFunction X) :
    ∀ x y : X, U.represents.relation x y ↔ U.function x ≥ U.function y := U.utilityClosed

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse