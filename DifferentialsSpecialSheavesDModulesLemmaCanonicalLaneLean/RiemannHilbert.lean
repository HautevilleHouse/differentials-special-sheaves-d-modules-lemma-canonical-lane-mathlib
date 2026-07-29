import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean.ConnectionDecomposition

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure RiemannHilbertPackage (P : DModuleSheafPackage) where
  regularSingularities : Prop
  monodromyRepresentation : Prop
  solutionSheafConstructible : Prop
  riemannHilbertCorrespondence : Prop

def RiemannHilbertClosed (P : DModuleSheafPackage) (R : RiemannHilbertPackage P) : Prop :=
  R.regularSingularities ∧ R.monodromyRepresentation ∧ R.solutionSheafConstructible ∧ R.riemannHilbertCorrespondence

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse