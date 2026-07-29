import GraphicsScientificVisualizationCanonicalLaneLean.VisualizationPipeline
import GraphicsScientificVisualizationCanonicalLaneLean.RenderingEquation
import GraphicsScientificVisualizationCanonicalLaneLean.TransferFunction

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def ConstrainedScientificVisualizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_scientific_visualization_endgame (A : AdmissibleClass) : ConstrainedScientificVisualizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse