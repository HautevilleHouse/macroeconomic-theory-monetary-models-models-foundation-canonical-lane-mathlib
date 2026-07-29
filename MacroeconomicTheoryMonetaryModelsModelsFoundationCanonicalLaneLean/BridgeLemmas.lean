import MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MacroeconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse