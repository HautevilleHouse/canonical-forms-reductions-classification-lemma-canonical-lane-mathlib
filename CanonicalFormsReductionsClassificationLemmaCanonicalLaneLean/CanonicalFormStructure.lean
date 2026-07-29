import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.MatrixReduction

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure CanonicalFormPackage (M : MatrixPackage) (R : ReductionPackage M) where
  canonicalForm : M.matrix
  smithNormalForm : Prop
  invariantFactors : List M.field
  existence : Prop
  uniqueness : Prop
  existenceClosed : existence
  uniquenessClosed : uniqueness

structure CanonicalFormEvidence (M : MatrixPackage) (R : ReductionPackage M) (C : CanonicalFormPackage M R) where
  existenceClosed : C.existence
  uniquenessClosed : C.uniqueness

def CanonicalFormClosed (M : MatrixPackage) (R : ReductionPackage M) (C : CanonicalFormPackage M R) : Prop :=
  C.existence ∧ C.uniqueness

theorem canonical_form_closed_from_evidence (M : MatrixPackage) (R : ReductionPackage M) (C : CanonicalFormPackage M R) (E : CanonicalFormEvidence M R C) : CanonicalFormClosed M R C := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse