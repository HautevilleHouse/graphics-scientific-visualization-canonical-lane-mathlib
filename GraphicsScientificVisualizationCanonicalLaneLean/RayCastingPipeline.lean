import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure RayCastingPipelinePackage where
  eyePosition : Type u
  viewDirection : Type v
  screenGrid : Type w
  rayGeneration : Prop
  rayIntersection : Prop
  shadingComputation : Prop
  occlusionHandling : Prop

structure RayCastingPipelineEvidence (P : RayCastingPipelinePackage) where
  rayGenerationClosed : P.rayGeneration
  rayIntersectionClosed : P.rayIntersection
  shadingComputationClosed : P.shadingComputation
  occlusionHandlingClosed : P.occlusionHandling

def RayCastingPipelineClosed (P : RayCastingPipelinePackage) : Prop :=
  P.rayGeneration ∧ P.rayIntersection ∧ P.shadingComputation ∧ P.occlusionHandling

theorem ray_casting_pipeline_closed_from_evidence (P : RayCastingPipelinePackage)
    (E : RayCastingPipelineEvidence P) : RayCastingPipelineClosed P := by
  exact And.intro E.rayGenerationClosed
    (And.intro E.rayIntersectionClosed
      (And.intro E.shadingComputationClosed E.occlusionHandlingClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse