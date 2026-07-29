import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.ReductionRelations

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure NormalFormSpecification where
  carrier : Type u
  reductionSystem : ReductionSystem
  normalForm : carrier → Prop
  normalFormUnique : ∀ a, normalForm a → ∀ b, normalForm b → a = b
  reductionToNormalForm : ∀ a, ∃ b, normalForm b ∧ reductionSystem.reduction a b

def NormalFormSpecClosed (S : NormalFormSpecification) : Prop :=
  S.normalFormUnique ∧ S.reductionToNormalForm (∀ a, ∃ b, …)

structure NormalFormSpecEvidence (S : NormalFormSpecification) where
  normalFormUniqueClosed : S.normalFormUnique
  reductionToNormalFormClosed : ∀ a, ∃ b, S.normalForm b ∧ S.reductionSystem.reduction a b

theorem normal_form_spec_closed_from_evidence (S : NormalFormSpecification)
    (E : NormalFormSpecEvidence S) : NormalFormSpecClosed S :=
  And.intro E.normalFormUniqueClosed E.reductionToNormalFormClosed

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse