import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse