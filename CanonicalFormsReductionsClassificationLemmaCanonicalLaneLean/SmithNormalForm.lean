import CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure SmithNormalFormPackage where
  matrix : Type u
  ring : Type v
  invariantFactors : Prop
  unimodularTransforms : Prop
  snfExists : Prop
  uniqueness : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  invariantFactorsClosed : S.invariantFactors
  unimodularTransformsClosed : S.unimodularTransforms
  snfExistsClosed : S.snfExists
  uniquenessClosed : S.uniqueness

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.invariantFactors ∧ S.unimodularTransforms ∧ S.snfExists ∧ S.uniqueness

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact And.intro E.invariantFactorsClosed
    (And.intro E.unimodularTransformsClosed
      (And.intro E.snfExistsClosed E.uniquenessClosed))

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse