import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure DifferentiationGradient where
  morphogenGradientEstablished : Prop
  concentrationThresholds : Prop
  targetGeneActivation : Prop
  positionalIdentityAssigned : Prop

structure GradientEvidence (G : DifferentiationGradient) where
  morphogenGradientEstablishedClosed : G.morphogenGradientEstablished
  concentrationThresholdsClosed : G.concentrationThresholds
  targetGeneActivationClosed : G.targetGeneActivation
  positionalIdentityAssignedClosed : G.positionalIdentityAssigned

def DifferentiationGradientClosed (G : DifferentiationGradient) : Prop :=
  G.morphogenGradientEstablished ∧ G.concentrationThresholds ∧
  G.targetGeneActivation ∧ G.positionalIdentityAssigned

theorem differentiation_gradient_closed_from_evidence (G : DifferentiationGradient)
    (E : GradientEvidence G) : DifferentiationGradientClosed G := by
  exact And.intro E.morphogenGradientEstablishedClosed
    (And.intro E.concentrationThresholdsClosed
      (And.intro E.targetGeneActivationClosed E.positionalIdentityAssignedClosed))

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse