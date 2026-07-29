import GraphicsScientificVisualizationCanonicalLaneLean.RenderPipelineAdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def bridgeClosed (A : GraphicsAdmittedObject) : Prop :=
  GraphicsWitnessClosed A

theorem bridge_from_admissible_class (A : GraphicsAdmittedObject) :
    bridgeClosed A :=
  A.conclusion

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse