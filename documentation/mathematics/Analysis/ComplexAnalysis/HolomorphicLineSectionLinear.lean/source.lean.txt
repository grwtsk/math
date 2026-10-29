import GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
import Mathlib.Tactic.Linarith

/-!
# Linear operations on the existing finite-energy section quotient

Holomorphy and finite-energy closure are derived for the actual section operations. The
same operations descend through the historical a.e. relation to the historical quotient.
The explicit vector-space laws and gauge commutation below do not install new Mathlib
instances, an inner product, a completion, or any section-space operator domain.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear

open MeasureTheory
open scoped ENNReal
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- The zero section satisfies the original chartwise holomorphy predicate. -/
def sectionZero (C : Cocycle D) (hOpen : D.IsOpenCover) : BundleSection C hOpen where
  value _ := 0
  holomorphic := by
    intro i
    refine ⟨fun _ : ℂ => 0, (differentiable_const (0 : ℂ)).differentiableOn, ?_⟩
    intro z
    simp only [chartCoordinate_apply, mul_zero]

/-- Addition is on the original dependent fibers, with derived chartwise holomorphy. -/
def sectionAdd {hOpen : D.IsOpenCover} (s t : BundleSection C hOpen) :
    BundleSection C hOpen where
  value x := s.value x + t.value x
  holomorphic := by
    intro i
    rcases s.holomorphic i with ⟨F, hF, hFs⟩
    rcases t.holomorphic i with ⟨H, hH, hHt⟩
    refine ⟨fun z => F z + H z, hF.add hH, ?_⟩
    intro z
    let x : D.X.carrier := ⟨z.1, D.subset i z.2⟩
    have hs := hFs z
    have ht := hHt z
    change F z = C.scalar (D.select x) i x * s.value x at hs
    change H z = C.scalar (D.select x) i x * t.value x at ht
    change F z + H z = C.scalar (D.select x) i x * (s.value x + t.value x)
    rw [mul_add, ← hs, ← ht]

/-- A constant complex scalar preserves the original holomorphy witnesses. -/
def sectionSMul {hOpen : D.IsOpenCover} (c : ℂ) (s : BundleSection C hOpen) :
    BundleSection C hOpen where
  value x := c • s.value x
  holomorphic := by
    intro i
    rcases s.holomorphic i with ⟨F, hF, hFs⟩
    refine ⟨fun z => c * F z, (differentiable_const c).differentiableOn.mul hF, ?_⟩
    intro z
    let x : D.X.carrier := ⟨z.1, D.subset i z.2⟩
    have hs := hFs z
    change F z = C.scalar (D.select x) i x * s.value x at hs
    change c * F z = C.scalar (D.select x) i x * (c * s.value x)
    rw [hs]
    exact mul_left_comm _ _ _

@[simp] theorem sectionZero_value (C : Cocycle D) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) : (sectionZero C hOpen).value x = 0 := rfl

@[simp] theorem sectionAdd_value {hOpen : D.IsOpenCover}
    (s t : BundleSection C hOpen) (x : D.X.carrier) :
    (sectionAdd s t).value x = s.value x + t.value x := rfl

@[simp] theorem sectionSMul_value {hOpen : D.IsOpenCover}
    (c : ℂ) (s : BundleSection C hOpen) (x : D.X.carrier) :
    (sectionSMul c s).value x = c • s.value x := rfl

/-- The elementary quadratic bound used for finite-energy closure. -/
theorem normSq_add_le (a b : ℂ) :
    Complex.normSq (a + b) ≤ 2 * (Complex.normSq a + Complex.normSq b) := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im]
  nlinarith [sq_nonneg (a.re - b.re), sq_nonneg (a.im - b.im)]

theorem squaredNorm_add_le (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) (x : D.X.carrier) :
    M.squaredNorm hOpen x ((sectionAdd s t).value x) ≤
      2 * (M.squaredNorm hOpen x (s.value x) + M.squaredNorm hOpen x (t.value x)) := by
  calc
    M.squaredNorm hOpen x ((sectionAdd s t).value x) ≤
        M.atPoint x * (2 * (Complex.normSq (s.value x) + Complex.normSq (t.value x))) :=
      mul_le_mul_of_nonneg_left (normSq_add_le _ _) (M.atPoint_pos x).le
    _ = _ := by unfold MetricWeights.squaredNorm; ring

@[simp] theorem density_zero (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) : density M hOpen (sectionZero C hOpen) x = 0 := by
  change ENNReal.ofReal (M.atPoint x * Complex.normSq (0 : ℂ)) = 0
  simp

theorem density_smul (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (c : ℂ) (s : BundleSection C hOpen) (x : D.X.carrier) :
    density M hOpen (sectionSMul c s) x = ENNReal.ofReal (Complex.normSq c) *
      density M hOpen s x := by
  have h : M.squaredNorm hOpen x ((sectionSMul c s).value x) =
      Complex.normSq c * M.squaredNorm hOpen x (s.value x) := by
    change M.atPoint x * Complex.normSq (c * s.value x) =
      Complex.normSq c * (M.atPoint x * Complex.normSq (s.value x))
    rw [Complex.normSq_mul]
    ring
  unfold density
  rw [h, ENNReal.ofReal_mul (Complex.normSq_nonneg c)]

theorem density_add_le (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) (x : D.X.carrier) :
    density M hOpen (sectionAdd s t) x ≤ 2 * (density M hOpen s x + density M hOpen t x) := by
  calc
    density M hOpen (sectionAdd s t) x ≤ ENNReal.ofReal
        (2 * (M.squaredNorm hOpen x (s.value x) + M.squaredNorm hOpen x (t.value x))) :=
      ENNReal.ofReal_le_ofReal (squaredNorm_add_le M hOpen s t x)
    _ = _ := by
      rw [ENNReal.ofReal_mul (by norm_num : (0 : ℝ) ≤ 2),
        ENNReal.ofReal_add (M.squaredNorm_nonneg hOpen x (s.value x))
          (M.squaredNorm_nonneg hOpen x (t.value x))]
      norm_num [density]

@[simp] theorem energy_zero (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : energy M μ hOpen (sectionZero C hOpen) = 0 := by
  simp [energy]

/-- This law includes zero scalars and infinite energies in `ENNReal`. -/
theorem energy_smul (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (s : BundleSection C hOpen) :
    energy M μ hOpen (sectionSMul c s) =
      ENNReal.ofReal (Complex.normSq c) * energy M μ hOpen s := by
  unfold energy
  simp_rw [density_smul]
  exact lintegral_const_mul _ (density_measurable M hOpen s)

/-- Addition requires an upper bound; energy itself is not additive. -/
theorem energy_add_le (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : BundleSection C hOpen) :
    energy M μ hOpen (sectionAdd s t) ≤ 2 * (energy M μ hOpen s + energy M μ hOpen t) := by
  calc
    energy M μ hOpen (sectionAdd s t) ≤
        ∫⁻ x, 2 * (density M hOpen s x + density M hOpen t x) ∂μ :=
      lintegral_mono (density_add_le M hOpen s t)
    _ = _ := by
      rw [lintegral_const_mul 2 ((density_measurable M hOpen s).add
        (density_measurable M hOpen t)), lintegral_add_left (density_measurable M hOpen s)]

/-- Reflection of finite energy needs a nonzero scalar, unlike forward closure. -/
theorem energy_smul_lt_top_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (hc : c ≠ 0) (s : BundleSection C hOpen) :
    energy M μ hOpen (sectionSMul c s) < ∞ ↔ energy M μ hOpen s < ∞ := by
  rw [energy_smul]
  constructor
  · intro h
    exact ENNReal.lt_top_of_mul_ne_top_right (ne_of_lt h)
      (ne_of_gt (ENNReal.ofReal_pos.mpr (Complex.normSq_pos.mpr hc)))
  · intro h
    exact ENNReal.mul_lt_top (by simp) h

theorem aeEqual_add (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    {s s' t t' : BundleSection C hOpen} (hs : AEEqual μ hOpen s s')
    (ht : AEEqual μ hOpen t t') : AEEqual μ hOpen (sectionAdd s t) (sectionAdd s' t') := by
  filter_upwards [hs, ht] with x hx hy
  exact congrArg₂ (fun a b : (C.vectorBundleCore hOpen).Fiber x => a + b) hx hy

theorem aeEqual_smul (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (c : ℂ) {s t : BundleSection C hOpen} (h : AEEqual μ hOpen s t) :
    AEEqual μ hOpen (sectionSMul c s) (sectionSMul c t) := by
  filter_upwards [h] with x hx
  exact congrArg (fun a : (C.vectorBundleCore hOpen).Fiber x => c • a) hx

/-- These operations keep the historical finite-energy subtype and its actual membership proof. -/
def finiteZero (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    FiniteEnergySection M μ hOpen := ⟨sectionZero C hOpen, by simp⟩

def finiteAdd (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s t : FiniteEnergySection M μ hOpen) : FiniteEnergySection M μ hOpen :=
  ⟨sectionAdd s.1 t.1, lt_of_le_of_lt (energy_add_le M μ hOpen s.1 t.1)
    (ENNReal.mul_lt_top (by norm_num) (ENNReal.add_lt_top.mpr ⟨s.2, t.2⟩))⟩

def finiteSMul (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (c : ℂ) (s : FiniteEnergySection M μ hOpen) : FiniteEnergySection M μ hOpen :=
  ⟨sectionSMul c s.1, by
    rw [energy_smul]
    exact ENNReal.mul_lt_top (by simp) s.2⟩

/-- No new carrier or new equivalence relation is introduced by these quotient operations. -/
def quotientZero (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen := classOf M μ hOpen (finiteZero M μ hOpen)

def quotientAdd (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (q r : SectionQuotient M μ hOpen) : SectionQuotient M μ hOpen :=
  Quotient.liftOn₂ q r (fun s t => classOf M μ hOpen (finiteAdd M μ hOpen s t))
    (fun s t s' t' hs ht => (classOf_eq_iff M μ hOpen _ _).mpr (aeEqual_add μ hOpen hs ht))

def quotientSMul (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (c : ℂ) (q : SectionQuotient M μ hOpen) : SectionQuotient M μ hOpen :=
  Quotient.liftOn q (fun s => classOf M μ hOpen (finiteSMul M μ hOpen c s))
    (fun s t h => (classOf_eq_iff M μ hOpen _ _).mpr (aeEqual_smul μ hOpen c h))

@[simp] theorem quotientAdd_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    quotientAdd M μ hOpen (classOf M μ hOpen s) (classOf M μ hOpen t) =
      classOf M μ hOpen (finiteAdd M μ hOpen s t) := rfl

@[simp] theorem quotientSMul_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (s : FiniteEnergySection M μ hOpen) :
    quotientSMul M μ hOpen c (classOf M μ hOpen s) =
      classOf M μ hOpen (finiteSMul M μ hOpen c s) := rfl

section Laws

variable (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)

theorem quotientAdd_assoc (q r v : SectionQuotient M μ hOpen) :
    quotientAdd M μ hOpen (quotientAdd M μ hOpen q r) v =
      quotientAdd M μ hOpen q (quotientAdd M μ hOpen r v) := by
  refine Quotient.inductionOn₃ q r v ?_
  intro s t w
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact add_assoc (s.1.value x) (t.1.value x) (w.1.value x)

theorem quotientAdd_comm (q r : SectionQuotient M μ hOpen) :
    quotientAdd M μ hOpen q r = quotientAdd M μ hOpen r q := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact add_comm (s.1.value x) (t.1.value x)

theorem quotientZero_add (q : SectionQuotient M μ hOpen) :
    quotientAdd M μ hOpen (quotientZero M μ hOpen) q = q := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact zero_add (s.1.value x)

theorem quotientAdd_zero (q : SectionQuotient M μ hOpen) :
    quotientAdd M μ hOpen q (quotientZero M μ hOpen) = q := by
  rw [quotientAdd_comm, quotientZero_add]

theorem quotientNeg_add (q : SectionQuotient M μ hOpen) :
    quotientAdd M μ hOpen (quotientSMul M μ hOpen (-1) q) q = quotientZero M μ hOpen := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  change (-1 : ℂ) * s.1.value x + s.1.value x = 0
  ring

theorem quotientSMul_one (q : SectionQuotient M μ hOpen) : quotientSMul M μ hOpen 1 q = q := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact one_smul ℂ (s.1.value x)

theorem quotientSMul_mul (a b : ℂ) (q : SectionQuotient M μ hOpen) :
    quotientSMul M μ hOpen (a * b) q = quotientSMul M μ hOpen a (quotientSMul M μ hOpen b q) := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact mul_smul a b (s.1.value x)

theorem quotientSMul_add (a : ℂ) (q r : SectionQuotient M μ hOpen) :
    quotientSMul M μ hOpen a (quotientAdd M μ hOpen q r) =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen a r) := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact smul_add a (s.1.value x) (t.1.value x)

theorem quotientAdd_smul (a b : ℂ) (q : SectionQuotient M μ hOpen) :
    quotientSMul M μ hOpen (a + b) q =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen b q) := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact add_smul a b (s.1.value x)

theorem quotientSMul_zero (a : ℂ) :
    quotientSMul M μ hOpen a (quotientZero M μ hOpen) = quotientZero M μ hOpen := by
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact smul_zero a

theorem quotientZero_smul (q : SectionQuotient M μ hOpen) :
    quotientSMul M μ hOpen 0 q = quotientZero M μ hOpen := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact zero_smul ℂ (s.1.value x)

/-- Full explicit laws for the named operations; no Mathlib `Module` instance is installed. -/
structure QuotientVectorLaws : Prop where
  add_assoc : ∀ q r v : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen (quotientAdd M μ hOpen q r) v =
      quotientAdd M μ hOpen q (quotientAdd M μ hOpen r v)
  add_comm : ∀ q r : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen q r = quotientAdd M μ hOpen r q
  zero_add : ∀ q : SectionQuotient M μ hOpen, quotientAdd M μ hOpen (quotientZero M μ hOpen) q = q
  add_zero : ∀ q : SectionQuotient M μ hOpen, quotientAdd M μ hOpen q (quotientZero M μ hOpen) = q
  neg_add : ∀ q : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen (quotientSMul M μ hOpen (-1) q) q = quotientZero M μ hOpen
  one_smul : ∀ q : SectionQuotient M μ hOpen, quotientSMul M μ hOpen 1 q = q
  mul_smul : ∀ (a b : ℂ) (q : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen (a * b) q = quotientSMul M μ hOpen a (quotientSMul M μ hOpen b q)
  smul_add : ∀ (a : ℂ) (q r : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen a (quotientAdd M μ hOpen q r) =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen a r)
  add_smul : ∀ (a b : ℂ) (q : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen (a + b) q =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen b q)
  smul_zero : ∀ a : ℂ,
    quotientSMul M μ hOpen a (quotientZero M μ hOpen) = quotientZero M μ hOpen
  zero_smul : ∀ q : SectionQuotient M μ hOpen,
    quotientSMul M μ hOpen 0 q = quotientZero M μ hOpen

theorem quotientVectorLaws : QuotientVectorLaws M μ hOpen where
  add_assoc := quotientAdd_assoc M μ hOpen
  add_comm := quotientAdd_comm M μ hOpen
  zero_add := quotientZero_add M μ hOpen
  add_zero := quotientAdd_zero M μ hOpen
  neg_add := quotientNeg_add M μ hOpen
  one_smul := quotientSMul_one M μ hOpen
  mul_smul := quotientSMul_mul M μ hOpen
  smul_add := quotientSMul_add M μ hOpen
  add_smul := quotientAdd_smul M μ hOpen
  smul_zero := quotientSMul_zero M μ hOpen
  zero_smul := quotientZero_smul M μ hOpen

end Laws

/-- Zero energy detects precisely the zero class, not the pointwise zero section. -/
theorem quotientEnergy_eq_zero_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientEnergy M μ hOpen q = 0 ↔ q = quotientZero M μ hOpen := by
  refine Quotient.inductionOn q ?_
  intro s
  change energy M μ hOpen s.1 = 0 ↔
    classOf M μ hOpen s = classOf M μ hOpen (finiteZero M μ hOpen)
  rw [classOf_eq_iff]
  exact energy_eq_zero_iff M μ hOpen s.1

theorem quotientEnergy_smul (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (q : SectionQuotient M μ hOpen) :
    quotientEnergy M μ hOpen (quotientSMul M μ hOpen c q) =
      ENNReal.ofReal (Complex.normSq c) * quotientEnergy M μ hOpen q := by
  refine Quotient.inductionOn q ?_
  intro s
  exact energy_smul M μ hOpen c s.1

theorem quotientEnergy_add_le (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    quotientEnergy M μ hOpen (quotientAdd M μ hOpen q r) ≤
      2 * (quotientEnergy M μ hOpen q + quotientEnergy M μ hOpen r) := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  exact energy_add_le M μ hOpen s.1 t.1

/-- Gauge commutation is proved through the exact existing continuous-linear fiber maps. -/
theorem section_gauge_zero (G : Gauge C E) (hOpen : D.IsOpenCover) :
    G.bundleSectionEquiv hOpen (sectionZero C hOpen) = sectionZero E hOpen := by
  apply BundleSection.ext_value
  funext x
  simp only [G.bundleSectionEquiv_value, sectionZero_value]
  exact (G.fiberEquiv hOpen x).map_zero

theorem section_gauge_add (G : Gauge C E) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) :
    G.bundleSectionEquiv hOpen (sectionAdd s t) =
      sectionAdd (G.bundleSectionEquiv hOpen s) (G.bundleSectionEquiv hOpen t) := by
  apply BundleSection.ext_value
  funext x
  simp only [G.bundleSectionEquiv_value, sectionAdd_value]
  exact (G.fiberEquiv hOpen x).map_add (s.value x) (t.value x)

theorem section_gauge_smul (G : Gauge C E) (hOpen : D.IsOpenCover)
    (c : ℂ) (s : BundleSection C hOpen) :
    G.bundleSectionEquiv hOpen (sectionSMul c s) = sectionSMul c (G.bundleSectionEquiv hOpen s) := by
  apply BundleSection.ext_value
  funext x
  simp only [G.bundleSectionEquiv_value, sectionSMul_value]
  exact (G.fiberEquiv hOpen x).map_smul c (s.value x)

theorem finiteEnergyEquiv_zero (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    finiteEnergyEquiv G M μ hOpen (finiteZero M μ hOpen) =
      finiteZero (transportMetric G M) μ hOpen :=
  Subtype.ext (section_gauge_zero G hOpen)

theorem finiteEnergyEquiv_add (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    finiteEnergyEquiv G M μ hOpen (finiteAdd M μ hOpen s t) =
      finiteAdd (transportMetric G M) μ hOpen
        (finiteEnergyEquiv G M μ hOpen s) (finiteEnergyEquiv G M μ hOpen t) :=
  Subtype.ext (section_gauge_add G hOpen s.1 t.1)

theorem finiteEnergyEquiv_smul (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (c : ℂ) (s : FiniteEnergySection M μ hOpen) :
    finiteEnergyEquiv G M μ hOpen (finiteSMul M μ hOpen c s) =
      finiteSMul (transportMetric G M) μ hOpen c (finiteEnergyEquiv G M μ hOpen s) :=
  Subtype.ext (section_gauge_smul G hOpen c s.1)

theorem gaugeEquiv_zero (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    gaugeEquiv G M μ hOpen (quotientZero M μ hOpen) =
      quotientZero (transportMetric G M) μ hOpen :=
  congrArg (classOf (transportMetric G M) μ hOpen) (finiteEnergyEquiv_zero G M μ hOpen)

theorem gaugeEquiv_add (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    gaugeEquiv G M μ hOpen (quotientAdd M μ hOpen q r) =
      quotientAdd (transportMetric G M) μ hOpen
        (gaugeEquiv G M μ hOpen q) (gaugeEquiv G M μ hOpen r) := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  exact congrArg (classOf (transportMetric G M) μ hOpen) (finiteEnergyEquiv_add G M μ hOpen s t)

theorem gaugeEquiv_smul (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (c : ℂ) (q : SectionQuotient M μ hOpen) :
    gaugeEquiv G M μ hOpen (quotientSMul M μ hOpen c q) =
      quotientSMul (transportMetric G M) μ hOpen c (gaugeEquiv G M μ hOpen q) := by
  refine Quotient.inductionOn q ?_
  intro s
  exact congrArg (classOf (transportMetric G M) μ hOpen) (finiteEnergyEquiv_smul G M μ hOpen c s)

/-- The inverse laws use the inverse of that same historical quotient equivalence. -/
theorem gaugeEquiv_symm_add (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (q r : SectionQuotient (transportMetric G M) μ hOpen) :
    (gaugeEquiv G M μ hOpen).symm (quotientAdd (transportMetric G M) μ hOpen q r) =
      quotientAdd M μ hOpen ((gaugeEquiv G M μ hOpen).symm q)
        ((gaugeEquiv G M μ hOpen).symm r) := by
  apply (gaugeEquiv G M μ hOpen).injective
  simp only [gaugeEquiv_add, (gaugeEquiv G M μ hOpen).apply_symm_apply]

theorem gaugeEquiv_symm_smul (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (c : ℂ)
    (q : SectionQuotient (transportMetric G M) μ hOpen) :
    (gaugeEquiv G M μ hOpen).symm (quotientSMul (transportMetric G M) μ hOpen c q) =
      quotientSMul M μ hOpen c ((gaugeEquiv G M μ hOpen).symm q) := by
  apply (gaugeEquiv G M μ hOpen).injective
  simp only [gaugeEquiv_smul, (gaugeEquiv G M μ hOpen).apply_symm_apply]

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures

/-- Even finite-energy holomorphic sections under a probability measure have nonadditive energy. -/
theorem energy_not_additive :
    energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (sectionAdd (constantAt 1 zeroPoint).1 (constantAt 1 zeroPoint).1) ≠
      energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt 1 zeroPoint).1 +
        energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt 1 zeroPoint).1 := by
  simp only [energy_dirac]
  change ENNReal.ofReal (1 * Complex.normSq ((1 : ℂ) + 1)) ≠
    ENNReal.ofReal (1 * Complex.normSq (1 : ℂ)) + ENNReal.ofReal (1 * Complex.normSq (1 : ℂ))
  norm_num [Complex.normSq_apply]

/-- Zero scaling cannot reflect finiteness; the original infinite-mass premise stays explicit. -/
theorem zero_scalar_does_not_reflect_finiteness (μ : Measure twoCharts.X.carrier)
    (hμ : μ Set.univ = ∞) :
    energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
        (scalarSection twoCharts twoCharts_isOpen (constantSection twoCharts.X 1)) = ∞ ∧
      energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
        (sectionSMul 0
          (scalarSection twoCharts twoCharts_isOpen (constantSection twoCharts.X 1))) = 0 := by
  refine ⟨unitSection_energy_infinite twoCharts μ twoCharts_isOpen hμ, ?_⟩
  rw [energy_smul]
  simp

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
