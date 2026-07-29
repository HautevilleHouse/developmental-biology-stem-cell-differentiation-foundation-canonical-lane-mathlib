import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean

def ConstrainedStemCellClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stem_cell_endgame (A : AdmissibleClass) :
    ConstrainedStemCellClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyStemCellDifferentiationFoundationCanonicalLaneLean
end HautevilleHouse
