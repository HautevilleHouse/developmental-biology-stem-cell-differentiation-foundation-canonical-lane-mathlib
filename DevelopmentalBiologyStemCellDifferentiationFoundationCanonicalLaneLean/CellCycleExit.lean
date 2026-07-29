import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure CellCycleExit where
  cyclinDependentKinaseInhibitorsUp : Prop
  retinoblastomaProteinActive : Prop
  e2fTranscriptionRepressed : Prop
  terminalDifferentiationMarkers : Prop

structure CellCycleExitEvidence (C : CellCycleExit) where
  cyclinDependentKinaseInhibitorsUpClosed : C.cyclinDependentKinaseInhibitorsUp
  retinoblastomaProteinActiveClosed : C.retinoblastomaProteinActive
  e2fTranscriptionRepressedClosed : C.e2fTranscriptionRepressed
  terminalDifferentiationMarkersClosed : C.terminalDifferentiationMarkers

def CellCycleExitClosed (C : CellCycleExit) : Prop :=
  C.cyclinDependentKinaseInhibitorsUp ∧ C.retinoblastomaProteinActive ∧
  C.e2fTranscriptionRepressed ∧ C.terminalDifferentiationMarkers

theorem cell_cycle_exit_closed_from_evidence (C : CellCycleExit)
    (E : CellCycleExitEvidence C) : CellCycleExitClosed C := by
  exact And.intro E.cyclinDependentKinaseInhibitorsUpClosed
    (And.intro E.retinoblastomaProteinActiveClosed
      (And.intro E.e2fTranscriptionRepressedClosed E.terminalDifferentiationMarkersClosed))

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse