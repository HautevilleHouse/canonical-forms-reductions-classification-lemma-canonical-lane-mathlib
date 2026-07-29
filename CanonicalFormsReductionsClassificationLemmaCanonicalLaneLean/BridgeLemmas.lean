import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CanonicalFormsReductionsClassificationLemmaCanonicalLaneLean
end HautevilleHouse
