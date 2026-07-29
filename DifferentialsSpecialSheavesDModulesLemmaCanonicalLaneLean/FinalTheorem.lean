import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

def ConstrainedDModuleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem d_module_endgame (A : AdmissibleClass) :
    ConstrainedDModuleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse