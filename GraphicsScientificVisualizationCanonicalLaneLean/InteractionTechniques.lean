import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure InteractionTechniquesPackage where
  userInput : Type u
  viewManipulation : Type v
  dataExploration : Type w
  selectionMechanism : Type x
  viewpointControl : Prop
  brushingAndLinking : Prop
  animationAndSteering : Prop

structure InteractionTechniquesEvidence (I : InteractionTechniquesPackage) where
  viewpointControlClosed : I.viewpointControl
  brushingAndLinkingClosed : I.brushingAndLinking
  animationAndSteeringClosed : I.animationAndSteering

def InteractionTechniquesClosed (I : InteractionTechniquesPackage) : Prop :=
  I.viewpointControl ∧ I.brushingAndLinking ∧ I.animationAndSteering

theorem interaction_techniques_closed_from_evidence (I : InteractionTechniquesPackage) (E : InteractionTechniquesEvidence I) : InteractionTechniquesClosed I := by
  exact And.intro E.viewpointControlClosed (And.intro E.brushingAndLinkingClosed E.animationAndSteeringClosed)

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse