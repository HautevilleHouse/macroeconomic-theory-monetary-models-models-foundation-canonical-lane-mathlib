import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure RamseyCassKoopmansModelPackage where
  household : Type u
  firm : Type v
  capitalStock : Type w
  consumptionPath : Prop
  capitalAccumulation : Prop
  eulerEquation : Prop
  steadyState : Prop
  saddlePathStability : Prop

structure RamseyCassKoopmansModelEvidence (R : RamseyCassKoopmansModelPackage) where
  consumptionPathClosed : R.consumptionPath
  capitalAccumulationClosed : R.capitalAccumulation
  eulerEquationClosed : R.eulerEquation
  steadyStateClosed : R.steadyState
  saddlePathStabilityClosed : R.saddlePathStability

def RamseyCassKoopmansModelClosed (R : RamseyCassKoopmansModelPackage) : Prop :=
  R.consumptionPath ∧ R.capitalAccumulation ∧ R.eulerEquation ∧
  R.steadyState ∧ R.saddlePathStability

theorem ramsey_cass_koopmans_model_closed_from_evidence
    (R : RamseyCassKoopmansModelPackage)
    (Ev : RamseyCassKoopmansModelEvidence R) :
    RamseyCassKoopmansModelClosed R := by
  exact And.intro Ev.consumptionPathClosed
    (And.intro Ev.capitalAccumulationClosed
      (And.intro Ev.eulerEquationClosed
        (And.intro Ev.steadyStateClosed Ev.saddlePathStabilityClosed)))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse