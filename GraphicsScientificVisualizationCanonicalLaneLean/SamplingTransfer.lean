import GraphicsScientificVisualizationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure SamplingTransferPackage where
  sourceDomain : Type u
  targetDomain : Type v
  samplePoints : Type w
  interpolationKernel : Type x
  samplingRate : Prop
  reconstructionFidelity : Prop

def SamplingTransferClosed (S : SamplingTransferPackage) : Prop :=
  S.samplingRate ∧ S.reconstructionFidelity

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse