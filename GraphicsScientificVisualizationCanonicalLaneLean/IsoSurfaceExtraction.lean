import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure IsoSurfaceExtractionPackage where
  scalarField : Type u
  isoValue : ℝ
  marchingSquaresCubes : Prop
  vertexInterpolation : Prop
  triangulation : Prop
  surfaceClosed : Prop

structure IsoSurfaceExtractionEvidence (I : IsoSurfaceExtractionPackage) where
  scalarFieldClosed : I.scalarField
  isoValueClosed : I.isoValue = I.isoValue
  marchingSquaresCubesClosed : I.marchingSquaresCubes
  vertexInterpolationClosed : I.vertexInterpolation
  triangulationClosed : I.triangulation
  surfaceClosedFromEvidence : I.surfaceClosed

def IsoSurfaceExtractionClosed (I : IsoSurfaceExtractionPackage) : Prop :=
  I.scalarField ∧ I.marchingSquaresCubes ∧ I.vertexInterpolation ∧ I.triangulation ∧ I.surfaceClosed

theorem iso_surface_extraction_closed_from_evidence
    (I : IsoSurfaceExtractionPackage) (E : IsoSurfaceExtractionEvidence I) :
    IsoSurfaceExtractionClosed I := by
  exact And.intro E.scalarFieldClosed
    (And.intro E.marchingSquaresCubesClosed
      (And.intro E.vertexInterpolationClosed
        (And.intro E.triangulationClosed E.surfaceClosedFromEvidence)))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse