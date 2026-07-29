import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure SheafOfModules where
  baseSpace : Type u
  structureSheaf : Type v
  moduleSheaf : Type w
  twist : ℕ
  sheafAxioms : Prop
  moduleAxioms : Prop

def SheafOfModulesClosed (S : SheafOfModules) : Prop :=
  S.sheafAxioms ∧ S.moduleAxioms

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse