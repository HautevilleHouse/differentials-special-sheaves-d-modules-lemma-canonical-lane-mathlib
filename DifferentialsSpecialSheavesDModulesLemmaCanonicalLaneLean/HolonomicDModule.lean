import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure HolonomicDModule where
  sheaf : SheafOfModules
  characteristicVariety : Type u
  holonomicCondition : Prop
  characteristicVarietyLagrangian : Prop

def HolonomicDModuleClosed (H : HolonomicDModule) : Prop :=
  SheafOfModulesClosed H.sheaf ∧ H.holonomicCondition ∧ H.characteristicVarietyLagrangian

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse