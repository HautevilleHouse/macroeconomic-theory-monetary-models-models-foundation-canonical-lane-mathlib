import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure FinancialAcceleratorBernankeGertlerPackage where
  entrepreneurNetWorth : Prop
  externalFinancePremium : Prop
  balanceSheetChannel : Prop
  creditMarketImperfection : Prop
  amplificationMechanism : Prop
  outputDynamics : Prop

structure FinancialAcceleratorBernankeGertlerEvidence (F : FinancialAcceleratorBernankeGertlerPackage) where
  entrepreneurNetWorthClosed : F.entrepreneurNetWorth
  externalFinancePremiumClosed : F.externalFinancePremium
  balanceSheetChannelClosed : F.balanceSheetChannel
  creditMarketImperfectionClosed : F.creditMarketImperfection
  amplificationMechanismClosed : F.amplificationMechanism
  outputDynamicsClosed : F.outputDynamics

def FinancialAcceleratorBernankeGertlerClosed (F : FinancialAcceleratorBernankeGertlerPackage) : Prop :=
  F.entrepreneurNetWorth ∧ F.externalFinancePremium ∧ F.balanceSheetChannel ∧ F.creditMarketImperfection ∧ F.amplificationMechanism ∧ F.outputDynamics

theorem financial_accelerator_bernanke_gertler_closed_from_evidence
    (F : FinancialAcceleratorBernankeGertlerPackage) (ev : FinancialAcceleratorBernankeGertlerEvidence F) :
    FinancialAcceleratorBernankeGertlerClosed F := by
  exact And.intro ev.entrepreneurNetWorthClosed
    (And.intro ev.externalFinancePremiumClosed
      (And.intro ev.balanceSheetChannelClosed
        (And.intro ev.creditMarketImperfectionClosed
          (And.intro ev.amplificationMechanismClosed ev.outputDynamicsClosed))))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse