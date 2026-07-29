import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure CashInAdvancePackage where
  cashConstraint : Prop
  consumerOptimization : Prop
  firmOptimization : Prop
  monetaryNeutrality : Prop

structure CashInAdvanceEvidence (C : CashInAdvancePackage) where
  cashConstraintClosed : C.cashConstraint
  consumerOptimizationClosed : C.consumerOptimization
  firmOptimizationClosed : C.firmOptimization
  monetaryNeutralityClosed : C.monetaryNeutrality

def CashInAdvanceClosed (C : CashInAdvancePackage) : Prop :=
  C.cashConstraint ∧ C.consumerOptimization ∧ C.firmOptimization ∧ C.monetaryNeutrality

theorem cash_in_advance_closed_from_evidence (C : CashInAdvancePackage) (E : CashInAdvanceEvidence C) : CashInAdvanceClosed C := by
  exact And.intro E.cashConstraintClosed (And.intro E.consumerOptimizationClosed (And.intro E.firmOptimizationClosed E.monetaryNeutralityClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse
