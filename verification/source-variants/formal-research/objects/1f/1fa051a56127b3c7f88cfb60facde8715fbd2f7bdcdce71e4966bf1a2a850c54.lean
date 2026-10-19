import Mathematics.Geometry.CorpusElement

/-!
# Euclidean subsumption

The modern layer is not a parallel theorem authority.  A proof-bearing
Euclidean item forgets directly to the ordinary Mathematics theorem-element
type.  Book labels and source placement are retained only as detachable
provenance.
-/

namespace Mathematics.Geometry

open Mathematics.Discovery

/--
Every kernel-proved Euclidean corpus item is already an ordinary Mathematics
theorem element for the exact same proposition and immutable seed.
-/
theorem everyKernelProvedEuclideanItemIsMathematicsTheorem
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    ∃ ordinary : LeanTheoremElement seed.proposal,
      ordinary = item.theoremElement := by
  exact ⟨item.asMathematicsTheoremElement, rfl⟩

/--
Replacing every historical coordinate and display label preserves semantic
identity, declared dependencies, theorem identity, and the proof term.
-/
theorem historicalPlacementIsNonauthoritative
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (replacement : List HistoricalProvenance) :
    let relocated := item.withProvenance replacement
    relocated.theoremElement.theoremElementId =
        item.theoremElement.theoremElementId ∧
      relocated.theoremElement.sourceSeedId =
        item.theoremElement.sourceSeedId ∧
      relocated.theoremElement.proof =
        item.theoremElement.proof ∧
      (seed.withProvenance replacement).dependencies =
        seed.dependencies := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/--
The provenance erasure is exact: neither a book coordinate nor a label enters
the ordinary theorem element returned by subsumption.
-/
theorem provenanceErasureIsExact
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    item.asMathematicsTheoremElement = item.theoremElement :=
  rfl

end Mathematics.Geometry
