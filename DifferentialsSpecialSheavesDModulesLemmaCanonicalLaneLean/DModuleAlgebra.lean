import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure DModuleAlgebra where
  ring : Type u
  derivations : List (ring → ring)
  leftAction : ring → ring → ring
  rightAction : ring → ring → ring
  algebraAxioms : Prop
  derivationsClosed : Prop

def DModuleAlgebraClosed (A : DModuleAlgebra) : Prop :=
  A.algebraAxioms ∧ A.derivationsClosed

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse