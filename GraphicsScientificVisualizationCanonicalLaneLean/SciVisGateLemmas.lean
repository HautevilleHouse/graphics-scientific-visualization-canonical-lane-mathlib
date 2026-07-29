import GraphicsScientificVisualizationCanonicalLaneLean.SciVisBridgeLemmas

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

def gateClosed (A : GraphicsAdmittedObject) : Prop :=
  A.projectionConsistent ∨ A.sampleable

theorem gate_from_admissible_class (A : GraphicsAdmittedObject) :
    gateClosed A :=
  match A with
  | { projectionConsistent := p, sampleable := s, .. } =>
    if h : p then Or.inl h else Or.inr s

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse