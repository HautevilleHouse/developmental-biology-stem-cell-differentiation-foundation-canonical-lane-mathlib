import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure ProgenitorCellHierarchy where
  stemCellPopulation : Prop
  progenitorPopulation : Prop
  differentiatedPopulation : Prop
  lineageBias : Prop
  selfRenewalCapacity : Prop

structure ProgenitorHierarchyEvidence (P : ProgenitorCellHierarchy) where
  stemCellPopulationClosed : P.stemCellPopulation
  progenitorPopulationClosed : P.progenitorPopulation
  differentiatedPopulationClosed : P.differentiatedPopulation
  lineageBiasClosed : P.lineageBias
  selfRenewalCapacityClosed : P.selfRenewalCapacity

def ProgenitorHierarchyClosed (P : ProgenitorCellHierarchy) : Prop :=
  P.stemCellPopulation ∧ P.progenitorPopulation ∧ P.differentiatedPopulation ∧
  P.lineageBias ∧ P.selfRenewalCapacity

theorem progenitor_hierarchy_closed_from_evidence (P : ProgenitorCellHierarchy)
    (E : ProgenitorHierarchyEvidence P) : ProgenitorHierarchyClosed P := by
  exact And.intro E.stemCellPopulationClosed
    (And.intro E.progenitorPopulationClosed
      (And.intro E.differentiatedPopulationClosed
        (And.intro E.lineageBiasClosed E.selfRenewalCapacityClosed)))

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse