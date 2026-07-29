import canonicalLaneMathlib.AdmissibleClass
import DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure CohomologyVanishingPackage (S : SpecialSheafObject) where
  stalksAcyclic : Prop
  higherCohomologyVanishes : Prop
  resolutionConstructed : Prop
  fromDModule : dModuleClosed S → CohomologyVanishingPackage S

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse