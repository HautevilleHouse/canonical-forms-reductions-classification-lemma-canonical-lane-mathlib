import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

def ConstrainedCanonicalFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_form_endgame (A : AdmissibleClass) :
    ConstrainedCanonicalFormClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse