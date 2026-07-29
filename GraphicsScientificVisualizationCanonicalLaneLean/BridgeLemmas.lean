import HautevilleHouse.GraphicsScientificVisualizationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VisualizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse