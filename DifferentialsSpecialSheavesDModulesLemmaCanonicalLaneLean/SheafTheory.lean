import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure SheafOnManifold where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  sections : Type v
  sheafCondition : Prop

structure SheafMorphism where
  source : SheafOnManifold
  target : SheafOnManifold
  mapping : Prop
  continuous : Prop

def SheafClosed (S : SheafOnManifold) : Prop :=
  S.sheafCondition

theorem sheaf_closed (S : SheafOnManifold) : SheafClosed S := by
  exact S.sheafCondition

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse
