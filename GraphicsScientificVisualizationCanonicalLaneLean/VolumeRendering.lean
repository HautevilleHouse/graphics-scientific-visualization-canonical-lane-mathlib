import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure VolumeRenderingPackage where
  scalarFieldSampling : Prop
  gradientComputation : Prop
  illuminationModel : Prop
  compositing : Prop
  renderingOutput : Prop

structure VolumeRenderingEvidence (V : VolumeRenderingPackage) where
  scalarFieldSamplingClosed : V.scalarFieldSampling
  gradientComputationClosed : V.gradientComputation
  illuminationModelClosed : V.illuminationModel
  compositingClosed : V.compositing
  renderingOutputClosed : V.renderingOutput

def VolumeRenderingClosed (V : VolumeRenderingPackage) : Prop :=
  V.scalarFieldSampling ∧ V.gradientComputation ∧
  V.illuminationModel ∧ V.compositing ∧ V.renderingOutput

theorem volume_rendering_closed_from_evidence
    (V : VolumeRenderingPackage) (E : VolumeRenderingEvidence V) :
    VolumeRenderingClosed V := by
  exact And.intro E.scalarFieldSamplingClosed
    (And.intro E.gradientComputationClosed
      (And.intro E.illuminationModelClosed
        (And.intro E.compositingClosed E.renderingOutputClosed)))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse