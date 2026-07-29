import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure RayMarching where
  cameraSetup : Prop
  stepSize : Prop
  intersectionTest : Prop
  compositing : Prop

structure RayMarchingEvidence (R : RayMarching) where
  cameraSetupClosed : R.cameraSetup
  stepSizeClosed : R.stepSize
  intersectionTestClosed : R.intersectionTest
  compositingClosed : R.compositing

def RayMarchingClosed (R : RayMarching) : Prop :=
  R.cameraSetup ∧ R.stepSize ∧ R.intersectionTest ∧ R.compositing

theorem ray_marching_closed_from_evidence (R : RayMarching)
    (E : RayMarchingEvidence R) : RayMarchingClosed R := by
  exact And.intro E.cameraSetupClosed (And.intro E.stepSizeClosed
    (And.intro E.intersectionTestClosed E.compositingClosed))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse