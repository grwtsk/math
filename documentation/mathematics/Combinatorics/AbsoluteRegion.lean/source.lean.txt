import DAF.Terrain.GlobalReference

/-!
# Regions in the absolute global coordinate frame

An `AbsoluteRegion` is a finite set of coordinates of one fixed
`KnownMaximalState`.  Local coordinates are subtypes, so forgetting a local
coordinate returns its exact global coordinate without a search or heuristic.
Extension is by zero; consequently restriction is a left inverse and the
induced global projection is idempotent with support inside the region.
-/

universe u v w

namespace DAF.Terrain

/-- An exact finite set of coordinates in a fixed maximal state. -/
structure AbsoluteRegion {State : Type u} (G : KnownMaximalState State) where
  coordinates : Finset G.Coord

namespace AbsoluteRegion

variable {State : Type u} {G : KnownMaximalState State}

/-- The complete absolute coordinate region. -/
def univ (G : KnownMaximalState State) : AbsoluteRegion G := by
  letI : Fintype G.Coord := G.coordFintype
  exact ⟨Finset.univ⟩

/-- The empty absolute coordinate region. -/
def empty (G : KnownMaximalState State) : AbsoluteRegion G :=
  ⟨∅⟩

@[simp]
theorem coordinates_univ (G : KnownMaximalState State) :
    letI := G.coordFintype
    letI := G.coordDecEq
    (univ G).coordinates = Finset.univ := by
  letI : Fintype G.Coord := G.coordFintype
  letI : DecidableEq G.Coord := G.coordDecEq
  rfl

@[simp]
theorem coordinates_empty (G : KnownMaximalState State) :
    (empty G).coordinates = ∅ :=
  rfl

/-- A local coordinate remembers its absolute coordinate by construction. -/
abbrev LocalCoord (R : AbsoluteRegion G) :=
  {c : G.Coord // c ∈ R.coordinates}

/-- The exact local-to-global coordinate embedding. -/
def globalCoord (R : AbsoluteRegion G) : R.LocalCoord → G.Coord :=
  Subtype.val

theorem globalCoord_injective (R : AbsoluteRegion G) :
    Function.Injective R.globalCoord :=
  Subtype.val_injective

/-- Locally installable decidable equality for a region. -/
def localDecidableEq (R : AbsoluteRegion G) : DecidableEq R.LocalCoord := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact inferInstance

/-- Locally installable finite enumeration for a region. -/
@[reducible] def localFintype (R : AbsoluteRegion G) : Fintype R.LocalCoord := by
  letI : Fintype G.Coord := G.coordFintype
  letI : DecidableEq G.Coord := G.coordDecEq
  exact inferInstance

/-- Exact restriction along the subtype embedding. -/
def restrictSignal (R : AbsoluteRegion G) (u : G.Coord → α) :
    R.LocalCoord → α :=
  fun c => u c.1

/-- Zero extension from a region into the global coordinate frame. -/
def extendSignal [Zero α] (R : AbsoluteRegion G) (u : R.LocalCoord → α) :
    G.Coord → α := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact fun c =>
    if h : c ∈ R.coordinates then u ⟨c, h⟩ else 0

@[simp]
theorem restrictSignal_extendSignal [Zero α]
    (R : AbsoluteRegion G) (u : R.LocalCoord → α) :
    restrictSignal R (extendSignal R u) = u := by
  letI : DecidableEq G.Coord := G.coordDecEq
  funext c
  simp [restrictSignal, extendSignal, c.2]

theorem extendSignal_eq_zero_of_not_mem [Zero α]
    (R : AbsoluteRegion G) (u : R.LocalCoord → α)
    {c : G.Coord} (hc : c ∉ R.coordinates) :
    extendSignal R u c = 0 := by
  letI : DecidableEq G.Coord := G.coordDecEq
  simp [extendSignal, hc]

/-- Restrict and zero-extend a global signal. -/
def projectSignal [Zero α] (R : AbsoluteRegion G) (u : G.Coord → α) :
    G.Coord → α :=
  extendSignal R (restrictSignal R u)

@[simp]
theorem projectSignal_apply_mem [Zero α]
    (R : AbsoluteRegion G) (u : G.Coord → α)
    {c : G.Coord} (hc : c ∈ R.coordinates) :
    projectSignal R u c = u c := by
  letI : DecidableEq G.Coord := G.coordDecEq
  simp [projectSignal, extendSignal, restrictSignal, hc]

theorem projectSignal_apply_not_mem [Zero α]
    (R : AbsoluteRegion G) (u : G.Coord → α)
    {c : G.Coord} (hc : c ∉ R.coordinates) :
    projectSignal R u c = 0 := by
  letI : DecidableEq G.Coord := G.coordDecEq
  simp [projectSignal, extendSignal, hc]

/-- The restriction/extension projection is idempotent. -/
@[simp]
theorem projectSignal_idempotent [Zero α]
    (R : AbsoluteRegion G) (u : G.Coord → α) :
    projectSignal R (projectSignal R u) = projectSignal R u := by
  letI : DecidableEq G.Coord := G.coordDecEq
  funext c
  by_cases hc : c ∈ R.coordinates
  · simp [projectSignal, extendSignal, restrictSignal, hc]
  · simp [projectSignal, extendSignal, hc]

/-- A relation on a region is the exact relation induced from global coordinates. -/
def inducedRelation (R : AbsoluteRegion G)
    (relation : G.Coord → G.Coord → Prop) :
    R.LocalCoord → R.LocalCoord → Prop :=
  fun x y => relation x.1 y.1

@[simp]
theorem inducedRelation_iff (R : AbsoluteRegion G)
    (relation : G.Coord → G.Coord → Prop)
    (x y : R.LocalCoord) :
    R.inducedRelation relation x y ↔ relation x.1 y.1 :=
  Iff.rfl

/-- Region containment in the common absolute coordinate frame. -/
def Subregion (R S : AbsoluteRegion G) : Prop :=
  R.coordinates ⊆ S.coordinates

end AbsoluteRegion

export AbsoluteRegion (restrictSignal extendSignal projectSignal)

end DAF.Terrain
