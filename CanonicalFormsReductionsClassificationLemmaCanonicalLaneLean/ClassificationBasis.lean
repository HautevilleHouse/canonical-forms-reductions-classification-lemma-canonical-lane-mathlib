import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure ClassificationBasis where
  invariant : Type u
  classificationMap : Type v → Type w
  invariantPreserved : ∀ (f : classificationMap), invariant → invariant
  classificationComplete : ∀ x y, invariant = invariant → x = y

def BasisClosed (B : ClassificationBasis) : Prop :=
  B.invariantPreserved ∧ B.classificationComplete

structure BasisEvidence (B : ClassificationBasis) where
  invariantPreservedClosed : B.invariantPreserved
  classificationCompleteClosed : B.classificationComplete

theorem basis_closed_from_evidence (B : ClassificationBasis) (E : BasisEvidence B) :
    BasisClosed B :=
  And.intro E.invariantPreservedClosed E.classificationCompleteClosed

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse