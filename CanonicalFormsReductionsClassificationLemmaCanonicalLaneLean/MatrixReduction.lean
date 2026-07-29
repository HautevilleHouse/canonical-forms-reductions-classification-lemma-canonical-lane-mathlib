import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure MatrixPackage where
  field : Type
  rows : Nat
  cols : Nat
  matrix : Type
  addition : matrix → matrix → matrix
  scalarMul : field → matrix → matrix
  fieldStructure : Prop
  matrixOperations : Prop

structure ReductionPackage (M : MatrixPackage) where
  elementaryRowOperation : Prop
  elementaryColOperation : Prop
  reductionSequence : Prop
  reducesToCanonical : Prop
  elementaryRowOperationClosed : elementaryRowOperation
  elementaryColOperationClosed : elementaryColOperation
  reductionSequenceClosed : reductionSequence
  reducesToCanonicalClosed : reducesToCanonical

structure ReductionEvidence (M : MatrixPackage) (R : ReductionPackage M) where
  elementaryRowOperationClosed : R.elementaryRowOperation
  elementaryColOperationClosed : R.elementaryColOperation
  reductionSequenceClosed : R.reductionSequence
  reducesToCanonicalClosed : R.reducesToCanonical

def ReductionClosed (M : MatrixPackage) (R : ReductionPackage M) : Prop :=
  R.elementaryRowOperation ∧ R.elementaryColOperation ∧ R.reductionSequence ∧ R.reducesToCanonical

theorem reduction_closed_from_evidence (M : MatrixPackage) (R : ReductionPackage M) (E : ReductionEvidence M R) : ReductionClosed M R := by
  exact And.intro E.elementaryRowOperationClosed
    (And.intro E.elementaryColOperationClosed
      (And.intro E.reductionSequenceClosed E.reducesToCanonicalClosed))

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse