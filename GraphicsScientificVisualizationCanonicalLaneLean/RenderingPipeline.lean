import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure RenderingPipelinePackage where
  geometryInput : Prop
  shadingModel : Prop
  rasterization : Prop
  fragmentProcessing : Prop
  outputImage : Prop
  pipelineClosed : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  geometryInputClosed : R.geometryInput
  shadingModelClosed : R.shadingModel
  rasterizationClosed : R.rasterization
  fragmentProcessingClosed : R.fragmentProcessing
  outputImageClosed : R.outputImage
  pipelineClosedFromEvidence : R.pipelineClosed

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.geometryInput ∧ R.shadingModel ∧ R.rasterization ∧ R.fragmentProcessing ∧ R.outputImage ∧ R.pipelineClosed

theorem rendering_pipeline_closed_from_evidence
    (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) :
    RenderingPipelineClosed R := by
  exact And.intro E.geometryInputClosed
    (And.intro E.shadingModelClosed
      (And.intro E.rasterizationClosed
        (And.intro E.fragmentProcessingClosed
          (And.intro E.outputImageClosed E.pipelineClosedFromEvidence))))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse