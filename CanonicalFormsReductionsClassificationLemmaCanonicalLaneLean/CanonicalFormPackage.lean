import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemma

structure CanonicalFormPackage {V : Type u} [AddCommGroup V] [Module ℚ V] where
  invariantFactors : V → ℚ[X]
  jordanBlocks : V → ℕ × ℚ
  rationalCanonicalForm : V → Matrix ℚ ℚ
  existenceProof : Prop
  uniquenessProof : Prop
  similarityInvariance : Prop

structure CanonicalFormEvidence (C : CanonicalFormPackage) where
  existenceProofClosed : C.existenceProof
  uniquenessProofClosed : C.uniquenessProof
  similarityInvarianceClosed : C.similarityInvariance

def CanonicalFormClosed (C : CanonicalFormPackage) : Prop :=
  C.existenceProof ∧ C.uniquenessProof ∧ C.similarityInvariance

theorem canonical_form_closed_from_evidence (C : CanonicalFormPackage) (E : CanonicalFormEvidence C) :
    CanonicalFormClosed C := by
  exact And.intro E.existenceProofClosed (And.intro E.uniquenessProofClosed E.similarityInvarianceClosed)

end CanonicalFormsReductionsClassificationLemma
end HautevilleHouse