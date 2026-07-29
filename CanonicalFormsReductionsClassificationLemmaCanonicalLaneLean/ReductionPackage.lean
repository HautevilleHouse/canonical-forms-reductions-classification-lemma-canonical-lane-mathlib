import CanonicalFormPackage

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemma

structure ReductionPackage (C : CanonicalFormPackage) where
  matrixSimilarityReduction : Prop
  rationalFormAlgorithm : Prop
  jordanFormAlgorithm : Prop
  correctnessProof : Prop
  complexityBound : Prop

structure ReductionEvidence (R : ReductionPackage) where
  matrixSimilarityReductionClosed : R.matrixSimilarityReduction
  rationalFormAlgorithmClosed : R.rationalFormAlgorithm
  jordanFormAlgorithmClosed : R.jordanFormAlgorithm
  correctnessProofClosed : R.correctnessProof
  complexityBoundClosed : R.complexityBound

def ReductionClosed (R : ReductionPackage) : Prop :=
  R.matrixSimilarityReduction ∧ R.rationalFormAlgorithm ∧ R.jordanFormAlgorithm ∧
  R.correctnessProof ∧ R.complexityBound

theorem reduction_closed_from_evidence (R : ReductionPackage) (E : ReductionEvidence R) :
    ReductionClosed R := by
  exact And.intro E.matrixSimilarityReductionClosed
    (And.intro E.rationalFormAlgorithmClosed
      (And.intro E.jordanFormAlgorithmClosed
        (And.intro E.correctnessProofClosed E.complexityBoundClosed)))

end CanonicalFormsReductionsClassificationLemma
end HautevilleHouse