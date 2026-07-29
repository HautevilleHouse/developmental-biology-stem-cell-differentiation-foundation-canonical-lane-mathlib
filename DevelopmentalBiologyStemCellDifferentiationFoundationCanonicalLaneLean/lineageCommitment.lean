import DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean.EpigeneticLandscape

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

structure LineageCommitmentPackage {G : GeneRegulatoryNetworkPackage}
  {S : PluripotencySignalingPackage G} {E : EpigeneticLandscapePackage S} where
  progenitorSpecification : Prop
  lineageRestriction : Prop
  terminalDifferentiation : Prop

structure LineageCommitmentEvidence {G : GeneRegulatoryNetworkPackage}
  {S : PluripotencySignalingPackage G} {E : EpigeneticLandscapePackage S}
  (L : LineageCommitmentPackage E) where
  progenitorSpecificationClosed : L.progenitorSpecification
  lineageRestrictionClosed : L.lineageRestriction
  terminalDifferentiationClosed : L.terminalDifferentiation

def LineageCommitmentClosed {G : GeneRegulatoryNetworkPackage}
  {S : PluripotencySignalingPackage G} {E : EpigeneticLandscapePackage S}
  (L : LineageCommitmentPackage E) : Prop :=
  L.progenitorSpecification ∧ L.lineageRestriction ∧ L.terminalDifferentiation

theorem lineage_commitment_closed_from_evidence
  {G : GeneRegulatoryNetworkPackage} {S : PluripotencySignalingPackage G}
  {E : EpigeneticLandscapePackage S} (L : LineageCommitmentPackage E)
  (Ev : LineageCommitmentEvidence L) : LineageCommitmentClosed L := by
  exact And.intro Ev.progenitorSpecificationClosed
    (And.intro Ev.lineageRestrictionClosed Ev.terminalDifferentiationClosed)

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse
