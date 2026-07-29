import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure LineageDeterminationPackage where
  masterRegulators : Prop
  signalIntegration : Prop
  cellFateDecision : Prop
  commitmentIrreversibility : Prop

structure LineageDeterminationEvidence (L : LineageDeterminationPackage) where
  masterRegulatorsClosed : L.masterRegulators
  signalIntegrationClosed : L.signalIntegration
  cellFateDecisionClosed : L.cellFateDecision
  commitmentIrreversibilityClosed : L.commitmentIrreversibility

def LineageDeterminationClosed (L : LineageDeterminationPackage) : Prop :=
  L.masterRegulators ∧ L.signalIntegration ∧
  L.cellFateDecision ∧ L.commitmentIrreversibility

theorem lineage_determination_closed_from_evidence (L : LineageDeterminationPackage)
    (E : LineageDeterminationEvidence L) : LineageDeterminationClosed L := by
  exact And.intro E.masterRegulatorsClosed
    (And.intro E.signalIntegrationClosed
      (And.intro E.cellFateDecisionClosed E.commitmentIrreversibilityClosed))

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse