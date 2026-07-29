import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure ExpectationsAugmentedPhillipsCurvePackage where
  naturalRate : Prop
  inflationExpectations : Prop
  outputGap : Prop
  inflationDynamics : Prop
  shortRunTradeoff : Prop
  longRunNeutrality : Prop

structure ExpectationsAugmentedPhillipsCurveEvidence (P : ExpectationsAugmentedPhillipsCurvePackage) where
  naturalRateClosed : P.naturalRate
  inflationExpectationsClosed : P.inflationExpectations
  outputGapClosed : P.outputGap
  inflationDynamicsClosed : P.inflationDynamics
  shortRunTradeoffClosed : P.shortRunTradeoff
  longRunNeutralityClosed : P.longRunNeutrality

def ExpectationsAugmentedPhillipsCurveClosed (P : ExpectationsAugmentedPhillipsCurvePackage) : Prop :=
  P.naturalRate ∧ P.inflationExpectations ∧ P.outputGap ∧ P.inflationDynamics ∧ P.shortRunTradeoff ∧ P.longRunNeutrality

theorem expectations_augmented_phillips_curve_closed_from_evidence
    (P : ExpectationsAugmentedPhillipsCurvePackage) (ev : ExpectationsAugmentedPhillipsCurveEvidence P) :
    ExpectationsAugmentedPhillipsCurveClosed P := by
  exact And.intro ev.naturalRateClosed
    (And.intro ev.inflationExpectationsClosed
      (And.intro ev.outputGapClosed
        (And.intro ev.inflationDynamicsClosed
          (And.intro ev.shortRunTradeoffClosed ev.longRunNeutralityClosed))))

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse