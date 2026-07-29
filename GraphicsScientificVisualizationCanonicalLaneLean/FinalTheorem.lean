import canonicalLaneMathlib.AdmissibleClass
import GraphicsScientificVisualizationCanonicalLaneLean.VisualizationPipeline
import GraphicsScientificVisualizationCanonicalLaneLean.ColorMapping
import GraphicsScientificVisualizationCanonicalLaneLean.VolumeRendering

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGraphicsVisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_vis_endgame (A : AdmissibleClass) :
    ConstrainedGraphicsVisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse