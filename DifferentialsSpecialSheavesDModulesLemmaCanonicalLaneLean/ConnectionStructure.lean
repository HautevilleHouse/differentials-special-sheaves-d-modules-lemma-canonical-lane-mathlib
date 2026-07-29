import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure ConnectionStructure where
  curvature : Prop
  monodromy : Prop
  flatnessCondition : Prop

structure ConnectionEvidence (C : ConnectionStructure) where
  curvatureClosed : C.curvature
  monodromyClosed : C.monodromy
  flatnessConditionClosed : C.flatnessCondition

def ConnectionClosed (C : ConnectionStructure) : Prop :=
  C.curvature ∧ C.monodromy ∧ C.flatnessCondition

theorem connection_closed_from_evidence (C : ConnectionStructure) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.curvatureClosed (And.intro E.monodromyClosed E.flatnessConditionClosed)

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse
