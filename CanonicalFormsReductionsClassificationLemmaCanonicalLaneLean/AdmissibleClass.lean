import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CanonicalFormAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse
