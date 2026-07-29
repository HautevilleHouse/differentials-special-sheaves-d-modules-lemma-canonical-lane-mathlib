import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure RiemannHilbertCorrespondence where
  dModule : HolonomicDModule
  perverseSheaf : Type u
  equivalence : Prop
  regularSingularity : Prop

def RiemannHilbertCorrespondenceClosed (R : RiemannHilbertCorrespondence) : Prop :=
  HolonomicDModuleClosed R.dModule ∧ R.equivalence ∧ R.regularSingularity

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse