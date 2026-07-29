import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsScientificVisualizationCanonicalLaneLean.RayCastingPipeline

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse