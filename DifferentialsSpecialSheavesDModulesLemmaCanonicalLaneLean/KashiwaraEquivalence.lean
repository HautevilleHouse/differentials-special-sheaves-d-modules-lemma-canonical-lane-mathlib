import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure KashiwaraEquivalencePackage where
  closedSubmanifold : Type u
  directImageFunctor : Type v
  equivalenceWithSupports : Prop
  equivalenceWithSupportsTerm : equivalenceWithSupports

structure KashiwaraEquivalenceEvidence (K : KashiwaraEquivalencePackage) where
  equivalenceWithSupportsClosed : K.equivalenceWithSupports

def KashiwaraEquivalenceClosed (K : KashiwaraEquivalencePackage) : Prop :=
  K.equivalenceWithSupports

theorem kashiwara_equivalence_closed_from_evidence (K : KashiwaraEquivalencePackage)
    (E : KashiwaraEquivalenceEvidence K) : KashiwaraEquivalenceClosed K := by
  exact E.equivalenceWithSupportsClosed

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse