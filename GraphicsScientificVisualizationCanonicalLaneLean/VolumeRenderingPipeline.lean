import GraphicsScientificVisualizationCanonicalLaneLean.SamplingTransfer

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure VolumeRenderingPackage {S : SamplingTransferPackage} where
  scalarFieldSampled : Prop
  opacityTransferDefined : Prop
  rayMarchingAlgorithm : Prop
  compositingRespectsOrder : Prop

structure VolumeRenderingEvidence {S : SamplingTransferPackage} (V : VolumeRenderingPackage S) where
  scalarFieldSampledClosed : V.scalarFieldSampled
  opacityTransferDefinedClosed : V.opacityTransferDefined
  rayMarchingAlgorithmClosed : V.rayMarchingAlgorithm
  compositingRespectsOrderClosed : V.compositingRespectsOrder

def VolumeRenderingClosed {S : SamplingTransferPackage} (V : VolumeRenderingPackage S) : Prop :=
  V.scalarFieldSampled ∧ V.opacityTransferDefined ∧ V.rayMarchingAlgorithm ∧ V.compositingRespectsOrder

theorem volume_rendering_closed_from_evidence
    {S : SamplingTransferPackage} (V : VolumeRenderingPackage S)
    (E : VolumeRenderingEvidence V) : VolumeRenderingClosed V :=
  And.intro E.scalarFieldSampledClosed
    (And.intro E.opacityTransferDefinedClosed
      (And.intro E.rayMarchingAlgorithmClosed E.compositingRespectsOrderClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse