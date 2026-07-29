import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure ColorMappingPackage where
  colorSpace : Prop
  transferFunction : Prop
  opacityMapping : Prop
  perceptualUniformity : Prop

structure ColorMappingEvidence (C : ColorMappingPackage) where
  colorSpaceClosed : C.colorSpace
  transferFunctionClosed : C.transferFunction
  opacityMappingClosed : C.opacityMapping
  perceptualUniformityClosed : C.perceptualUniformity

def ColorMappingClosed (C : ColorMappingPackage) : Prop :=
  C.colorSpace ∧ C.transferFunction ∧ C.opacityMapping ∧ C.perceptualUniformity

theorem color_mapping_closed_from_evidence
    (C : ColorMappingPackage) (E : ColorMappingEvidence C) :
    ColorMappingClosed C := by
  exact And.intro E.colorSpaceClosed
    (And.intro E.transferFunctionClosed
      (And.intro E.opacityMappingClosed E.perceptualUniformityClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse