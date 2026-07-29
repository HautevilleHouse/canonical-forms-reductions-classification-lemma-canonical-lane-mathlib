import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure RationalCanonicalFormPackage where
  linearOperator : Type u
  field : Type v
  invariantFactorDecomposition : Prop
  companionBlocks : Prop
  rationalFormExists : Prop
  uniqueness : Prop

structure RationalCanonicalFormEvidence (R : RationalCanonicalFormPackage) where
  invariantFactorDecompositionClosed : R.invariantFactorDecomposition
  companionBlocksClosed : R.companionBlocks
  rationalFormExistsClosed : R.rationalFormExists
  uniquenessClosed : R.uniqueness

def RationalCanonicalFormClosed (R : RationalCanonicalFormPackage) : Prop :=
  R.invariantFactorDecomposition ∧ R.companionBlocks ∧ R.rationalFormExists ∧ R.uniqueness

theorem rational_canonical_form_closed_from_evidence (R : RationalCanonicalFormPackage) (E : RationalCanonicalFormEvidence R) :
    RationalCanonicalFormClosed R := by
  exact And.intro E.invariantFactorDecompositionClosed
    (And.intro E.companionBlocksClosed
      (And.intro E.rationalFormExistsClosed E.uniquenessClosed))

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse