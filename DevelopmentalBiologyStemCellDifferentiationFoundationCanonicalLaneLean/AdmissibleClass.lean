import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure DevelopmentalStemCellObject where
  cellType : Type
  signalingPathway : Type
  differentiationPotential : Prop
  potencyMarker : Prop
  conclusion : differentiationPotential ∧ potencyMarker

structure AdmissibleClass where
  object : DevelopmentalStemCellObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.differentiationPotential ∧ A.object.potencyMarker) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse