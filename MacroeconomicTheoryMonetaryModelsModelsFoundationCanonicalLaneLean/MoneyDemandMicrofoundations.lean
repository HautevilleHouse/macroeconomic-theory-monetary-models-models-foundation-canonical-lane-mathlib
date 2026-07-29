import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure MoneyDemandMicrofoundationsPackage where
  cashInAdvance : Prop
  moneyInUtility : Prop
  searchTheoretic : Prop
  transactionCost : Prop
  liquidityPreference : Prop
  moneyDemandFunction : Prop

structure MoneyDemandMicrofoundationsEvidence (M : MoneyDemandMicrofoundationsPackage) where
  cashInAdvanceClosed : M.cashInAdvance
  moneyInUtilityClosed : M.moneyInUtility
  searchTheoreticClosed : M.searchTheoretic
  transactionCostClosed : M.transactionCost
  liquidityPreferenceClosed : M.liquidityPreference
  moneyDemandFunctionClosed : M.moneyDemandFunction

def MoneyDemandMicrofoundationsClosed (M : MoneyDemandMicrofoundationsPackage) : Prop :=
  M.cashInAdvance ∧ M.moneyInUtility ∧ M.searchTheoretic ∧ M.transactionCost ∧ M.liquidityPreference ∧ M.moneyDemandFunction

theorem money_demand_microfoundations_closed_from_evidence
    (M : MoneyDemandMicrofoundationsPackage) (ev : MoneyDemandMicrofoundationsEvidence M) :
    MoneyDemandMicrofoundationsClosed M := by
  exact And.intro ev.cashInAdvanceClosed
    (And.intro ev.moneyInUtilityClosed
      (And.intro ev.searchTheoreticClosed
        (And.intro ev.transactionCostClosed
          (And.intro ev.liquidityPreferenceClosed ev.moneyDemandFunctionClosed))))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse