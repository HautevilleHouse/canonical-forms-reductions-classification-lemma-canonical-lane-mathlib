import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure ReductionSystem where
  carrier : Type u
  reduction : carrier → carrier → Prop
  termination : WellFounded reduction
  confluence : ∀ a b c, reduction a b → reduction a c → ∃ d, reduction b d ∧ reduction c d

def ReductionClosed (R : ReductionSystem) : Prop :=
  R.termination ∧ R.confluence

structure ReductionEvidence {R : ReductionSystem} where
  terminationClosed : R.termination
  confluenceClosed : R.confluence

theorem reduction_closed_from_evidence (R : ReductionSystem) (E : ReductionEvidence) :
    ReductionClosed R :=
  And.intro E.terminationClosed E.confluenceClosed

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse