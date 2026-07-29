import GraphicsScientificVisualizationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure RenderingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphicsAdmittedObject where
  space : RenderingSpace
  sampleable : Prop
  projectionConsistent : Prop
  visualizationModel : Type
  modelTopology : TopologicalSpace visualizationModel
  accurateRendering : Prop
  conclusion : accurateRendering

structure GraphicsEndgameState where
  object : GraphicsAdmittedObject

def GraphicsWitnessClosed (O : GraphicsAdmittedObject) : Prop :=
  O.accurateRendering

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse