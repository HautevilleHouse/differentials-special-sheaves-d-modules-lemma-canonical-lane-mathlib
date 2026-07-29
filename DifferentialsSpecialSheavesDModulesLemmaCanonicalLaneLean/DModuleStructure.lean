import canonicalLaneMathlib.AdmissibleClass
import DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure DModulePackage (S : SpecialSheafObject) where
  differentialOperator : Type u
  moduleAction : Type v
  integrabilityCondition : Prop
  poincareLemmaVariant : Prop

def dModuleClosed (S : SpecialSheafObject) : Prop :=
  ∃ (D : DModulePackage S), D.integrabilityCondition ∧ D.poincareLemmaVariant

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse