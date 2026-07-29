import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure DModuleResolutionPackage where
  dModuleObject : Type u
  resolutionComplex : Type v
  quasiIsomorphism : Prop
  finiteLength : Prop
  exPretSheaf : Type w
  quasiIsomorphismTerm : quasiIsomorphism
  finiteLengthTerm : finiteLength

structure DModuleResolutionEvidence (P : DModuleResolutionPackage) where
  quasiIsomorphismClosed : P.quasiIsomorphism
  finiteLengthClosed : P.finiteLength

def DModuleResolutionClosed (P : DModuleResolutionPackage) : Prop :=
  P.quasiIsomorphism ∧ P.finiteLength

theorem d_module_resolution_closed_from_evidence (P : DModuleResolutionPackage)
    (E : DModuleResolutionEvidence P) : DModuleResolutionClosed P := by
  exact And.intro E.quasiIsomorphismClosed E.finiteLengthClosed

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse
