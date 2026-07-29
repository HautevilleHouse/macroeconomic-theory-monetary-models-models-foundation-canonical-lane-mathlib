import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  householdUtility : Type u
  firmProduction : Type v
  priceVector : Type w
  endowments : Prop
  preferencesConvex : Prop
  productionSetConvex : Prop
  equilibriumExists : Prop
  welfareTheoremsHold : Prop

structure ArrowDebreuEquilibriumEvidence (E : ArrowDebreuEquilibriumPackage) where
  endowmentsClosed : E.endowments
  preferencesConvexClosed : E.preferencesConvex
  productionSetConvexClosed : E.productionSetConvex
  equilibriumExistsClosed : E.equilibriumExists
  welfareTheoremsHoldClosed : E.welfareTheoremsHold

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.endowments ∧ E.preferencesConvex ∧ E.productionSetConvex ∧
  E.equilibriumExists ∧ E.welfareTheoremsHold

theorem arrow_debreu_equilibrium_closed_from_evidence
    (E : ArrowDebreuEquilibriumPackage)
    (Ev : ArrowDebreuEquilibriumEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.endowmentsClosed
    (And.intro Ev.preferencesConvexClosed
      (And.intro Ev.productionSetConvexClosed
        (And.intro Ev.equilibriumExistsClosed Ev.welfareTheoremsHoldClosed)))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse