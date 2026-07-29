import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure ScalarFieldInterpolation where
  dataGrid : Prop
  interpolationKernel : Prop
  reconstructionError : Prop
  filterDesign : Prop

structure ScalarFieldInterpolationEvidence (S : ScalarFieldInterpolation) where
  dataGridClosed : S.dataGrid
  interpolationKernelClosed : S.interpolationKernel
  reconstructionErrorClosed : S.reconstructionError
  filterDesignClosed : S.filterDesign

def ScalarFieldInterpolationClosed (S : ScalarFieldInterpolation) : Prop :=
  S.dataGrid ∧ S.interpolationKernel ∧ S.reconstructionError ∧ S.filterDesign

theorem scalar_field_interpolation_closed_from_evidence (S : ScalarFieldInterpolation)
    (E : ScalarFieldInterpolationEvidence S) : ScalarFieldInterpolationClosed S := by
  exact And.intro E.dataGridClosed (And.intro E.interpolationKernelClosed
    (And.intro E.reconstructionErrorClosed E.filterDesignClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse