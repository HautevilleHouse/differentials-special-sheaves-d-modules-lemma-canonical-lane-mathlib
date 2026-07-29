import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure DModuleDecompositionPackage where
  dModule : Type u
  decompositionComponents : List Type
  directSum : Type v
  holonomicComponents : Prop
  irreducibleComponents : Prop
  decompositionComponentsTerm : decompositionComponents ≠ []
  holonomicComponentsTerm : holonomicComponents
  irreducibleComponentsTerm : irreducibleComponents

structure DModuleDecompositionEvidence (P : DModuleDecompositionPackage) where
  holonomicComponentsClosed : P.holonomicComponents
  irreducibleComponentsClosed : P.irreducibleComponents

def DModuleDecompositionClosed (P : DModuleDecompositionPackage) : Prop :=
  P.holonomicComponents ∧ P.irreducibleComponents

theorem d_module_decomposition_closed_from_evidence (P : DModuleDecompositionPackage)
    (E : DModuleDecompositionEvidence P) : DModuleDecompositionClosed P := by
  exact And.intro E.holonomicComponentsClosed E.irreducibleComponentsClosed

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse
