import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.JordanCanonicalForm
import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.SmithNormalForm
import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.RationalCanonicalForm

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure CanonicalFormsClassificationLemmaPackage where
  jordan : JordanCanonicalFormPackage
  smith : SmithNormalFormPackage
  rational : RationalCanonicalFormPackage
  classificationComplete : Prop
  equivalenceReductions : Prop

structure CanonicalFormsClassificationLemmaEvidence (C : CanonicalFormsClassificationLemmaPackage) where
  jordanClosed : JordanCanonicalFormClosed C.jordan
  smithClosed : SmithNormalFormClosed C.smith
  rationalClosed : RationalCanonicalFormClosed C.rational
  classificationCompleteClosed : C.classificationComplete
  equivalenceReductionsClosed : C.equivalenceReductions

def CanonicalFormsClassificationLemmaClosed (C : CanonicalFormsClassificationLemmaPackage) : Prop :=
  JordanCanonicalFormClosed C.jordan ∧
  SmithNormalFormClosed C.smith ∧
  RationalCanonicalFormClosed C.rational ∧
  C.classificationComplete ∧
  C.equivalenceReductions

theorem canonical_forms_classification_lemma_closed_from_evidence
    (C : CanonicalFormsClassificationLemmaPackage) (E : CanonicalFormsClassificationLemmaEvidence C) :
    CanonicalFormsClassificationLemmaClosed C := by
  exact And.intro E.jordanClosed
    (And.intro E.smithClosed
      (And.intro E.rationalClosed
        (And.intro E.classificationCompleteClosed E.equivalenceReductionsClosed)))

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse