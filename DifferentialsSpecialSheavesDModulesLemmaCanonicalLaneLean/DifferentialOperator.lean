import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean

structure DifferentialOperator where
  order : ℕ
  symbol : Prop
  principalSymbol : Prop

structure DifferentialOperatorEvidence (D : DifferentialOperator) where
  orderClosed : D.order = D.order
  symbolClosed : D.symbol
  principalSymbolClosed : D.principalSymbol

def DifferentialOperatorClosed (D : DifferentialOperator) : Prop :=
  D.symbol ∧ D.principalSymbol

theorem differential_operator_closed_from_evidence (D : DifferentialOperator) (E : DifferentialOperatorEvidence D) :
    DifferentialOperatorClosed D := by
  exact And.intro E.symbolClosed E.principalSymbolClosed

end DifferentialsSpecialSheavesDModulesLemmaCanonicalLaneLean
end HautevilleHouse
