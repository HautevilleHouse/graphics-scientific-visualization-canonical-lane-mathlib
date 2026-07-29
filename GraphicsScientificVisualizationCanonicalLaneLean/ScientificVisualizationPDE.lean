import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsScientificVisualizationCanonicalLaneLean

structure ScientificVisualizationPDEPackage where
  scalarField : Type u
  gradientOperator : Type v
  diffusionEquation : Prop
  boundaryConditions : Prop
  numericalScheme : Prop
  solutionExistence : Prop

structure ScientificVisualizationPDEEvidence (P : ScientificVisualizationPDEPackage) where
  scalarFieldClosed : P.scalarField
  gradientOperatorClosed : P.gradientOperator
  diffusionEquationClosed : P.diffusionEquation
  boundaryConditionsClosed : P.boundaryConditions
  numericalSchemeClosed : P.numericalScheme
  solutionExistenceClosed : P.solutionExistence

def ScientificVisualizationPDEClosed (P : ScientificVisualizationPDEPackage) : Prop :=
  P.scalarField ∧ P.gradientOperator ∧ P.diffusionEquation ∧ P.boundaryConditions ∧ P.numericalScheme ∧ P.solutionExistence

theorem scientific_visualization_pde_closed_from_evidence
    (P : ScientificVisualizationPDEPackage) (E : ScientificVisualizationPDEEvidence P) :
    ScientificVisualizationPDEClosed P := by
  exact And.intro E.scalarFieldClosed
    (And.intro E.gradientOperatorClosed
      (And.intro E.diffusionEquationClosed
        (And.intro E.boundaryConditionsClosed
          (And.intro E.numericalSchemeClosed E.solutionExistenceClosed))))

end GraphicsScientificVisualizationCanonicalLaneLean
end HautevilleHouse