import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure JordanCanonicalFormPackage where
  matrix : Type u
  field : Type v
  characteristicPolynomial : Prop
  minimalPolynomial : Prop
  jordanBlocks : Prop
  jordanFormExists : Prop
  similarityToJordan : Prop

structure JordanCanonicalFormEvidence (J : JordanCanonicalFormPackage) where
  characteristicPolynomialClosed : J.characteristicPolynomial
  minimalPolynomialClosed : J.minimalPolynomial
  jordanBlocksClosed : J.jordanBlocks
  jordanFormExistsClosed : J.jordanFormExists
  similarityToJordanClosed : J.similarityToJordan

def JordanCanonicalFormClosed (J : JordanCanonicalFormPackage) : Prop :=
  J.characteristicPolynomial ∧ J.minimalPolynomial ∧ J.jordanBlocks ∧ J.jordanFormExists ∧ J.similarityToJordan

theorem jordan_canonical_form_closed_from_evidence (J : JordanCanonicalFormPackage) (E : JordanCanonicalFormEvidence J) :
    JordanCanonicalFormClosed J := by
  exact And.intro E.characteristicPolynomialClosed
    (And.intro E.minimalPolynomialClosed
      (And.intro E.jordanBlocksClosed
        (And.intro E.jordanFormExistsClosed E.similarityToJordanClosed)))

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse