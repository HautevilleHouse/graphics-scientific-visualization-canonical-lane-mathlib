import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure TransferFunctionPackage where
  domainMapping : Prop
  colorMap : Prop
  opacityMapping : Prop
  featureEmphasis : Prop
  interpolationScheme : Prop

structure TransferFunctionEvidence (T : TransferFunctionPackage) where
  domainMappingClosed : T.domainMapping
  colorMapClosed : T.colorMap
  opacityMappingClosed : T.opacityMapping
  featureEmphasisClosed : T.featureEmphasis
  interpolationSchemeClosed : T.interpolationScheme

def TransferFunctionClosed (T : TransferFunctionPackage) : Prop :=
  T.domainMapping ∧ T.colorMap ∧ T.opacityMapping ∧ T.featureEmphasis ∧ T.interpolationScheme

theorem transfer_function_closed_from_evidence
    (T : TransferFunctionPackage) (E : TransferFunctionEvidence T) :
    TransferFunctionClosed T := by
  exact And.intro E.domainMappingClosed
    (And.intro E.colorMapClosed
      (And.intro E.opacityMappingClosed
        (And.intro E.featureEmphasisClosed E.interpolationSchemeClosed)))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse