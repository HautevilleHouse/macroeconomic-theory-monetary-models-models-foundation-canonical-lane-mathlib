import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure MonetaryEquilibriumPackage where
  moneyMarketClearing : Prop
  bondMarketClearing : Prop
  priceLevelDetermination : Prop
  equilibriumExists : Prop

structure MonetaryEquilibriumEvidence (M : MonetaryEquilibriumPackage) where
  moneyMarketClearingClosed : M.moneyMarketClearing
  bondMarketClearingClosed : M.bondMarketClearing
  priceLevelDeterminationClosed : M.priceLevelDetermination
  equilibriumExistsClosed : M.equilibriumExists

def MonetaryEquilibriumClosed (M : MonetaryEquilibriumPackage) : Prop :=
  M.moneyMarketClearing ∧ M.bondMarketClearing ∧ M.priceLevelDetermination ∧ M.equilibriumExists

theorem monetary_equilibrium_closed_from_evidence (M : MonetaryEquilibriumPackage) (E : MonetaryEquilibriumEvidence M) : MonetaryEquilibriumClosed M := by
  exact And.intro E.moneyMarketClearingClosed (And.intro E.bondMarketClearingClosed (And.intro E.priceLevelDeterminationClosed E.equilibriumExistsClosed))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse
