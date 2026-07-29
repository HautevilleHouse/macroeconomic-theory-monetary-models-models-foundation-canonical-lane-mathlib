import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundation

structure GeneralEquilibriumPackage where
  walrasLaw : Prop
  excessDemandZero : Prop
  equilibriumPriceExists : Prop
  paretoOptimality : Prop

structure GeneralEquilibriumEvidence (G : GeneralEquilibriumPackage) where
  walrasLawClosed : G.walrasLaw
  excessDemandZeroClosed : G.excessDemandZero
  equilibriumPriceExistsClosed : G.equilibriumPriceExists
  paretoOptimalityClosed : G.paretoOptimality

def GeneralEquilibriumClosed (G : GeneralEquilibriumPackage) : Prop :=
  G.walrasLaw ∧ G.excessDemandZero ∧ G.equilibriumPriceExists ∧ G.paretoOptimality

theorem general_equilibrium_closed_from_evidence (G : GeneralEquilibriumPackage)
    (E : GeneralEquilibriumEvidence G) : GeneralEquilibriumClosed G := by
  exact And.intro E.walrasLawClosed
    (And.intro E.excessDemandZeroClosed
      (And.intro E.equilibriumPriceExistsClosed E.paretoOptimalityClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundation
end HautevilleHouse