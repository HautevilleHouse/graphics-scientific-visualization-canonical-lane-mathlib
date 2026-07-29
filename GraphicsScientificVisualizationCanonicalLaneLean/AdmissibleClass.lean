import HautevilleHouse.GraphicsScientificVisualizationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure AdmissibleClass where
  object : VisualizationAdmittedObject
  visualizationValid : Prop
  remainderRecorded : Prop
  gateWitness : visualizationValid ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VisualizationWitnessClosed A.object ∧ (A.visualizationValid ∨ A.remainderRecorded)

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse