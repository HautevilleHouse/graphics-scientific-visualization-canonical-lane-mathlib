import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure VisualizationPipelinePackage where
  dataSource : Prop
  transformationStage : Prop
  renderingStage : Prop
  outputDisplay : Prop

structure VisualizationPipelineEvidence (P : VisualizationPipelinePackage) where
  dataSourceClosed : P.dataSource
  transformationStageClosed : P.transformationStage
  renderingStageClosed : P.renderingStage
  outputDisplayClosed : P.outputDisplay

def VisualizationPipelineClosed (P : VisualizationPipelinePackage) : Prop :=
  P.dataSource ∧ P.transformationStage ∧ P.renderingStage ∧ P.outputDisplay

theorem visualization_pipeline_closed_from_evidence
    (P : VisualizationPipelinePackage) (E : VisualizationPipelineEvidence P) :
    VisualizationPipelineClosed P := by
  exact And.intro E.dataSourceClosed
    (And.intro E.transformationStageClosed
      (And.intro E.renderingStageClosed E.outputDisplayClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse