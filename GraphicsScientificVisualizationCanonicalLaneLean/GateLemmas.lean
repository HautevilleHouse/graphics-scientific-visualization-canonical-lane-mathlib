import HautevilleHouse.GraphicsScientificVisualizationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.visualizationValid ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse