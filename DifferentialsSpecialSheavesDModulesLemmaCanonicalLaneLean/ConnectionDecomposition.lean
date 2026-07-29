import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean.DModuleSheaf

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure ConnectionDecompositionPackage (P : DModuleSheafPackage) where
  curvatureForm : Prop
  holonomyRepresentation : Prop
  localTrivializationExists : Prop
  decompositionIntoIrreducibles : Prop

def ConnectionDecompositionClosed (P : DModuleSheafPackage) (C : ConnectionDecompositionPackage P) : Prop :=
  C.curvatureForm ∧ C.holonomyRepresentation ∧ C.localTrivializationExists ∧ C.decompositionIntoIrreducibles

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse