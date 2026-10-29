/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This finite logical supplier is not admitted to the GRWTSK root without
pinned elaboration, fresh kernel replay, and transitive axiom auditing.
-/
import Mathlib.Logic.Function.Basic

/-!
# Factorization through an observable and its exact information-loss obstruction

A target that factors through an observable must be constant on every
observable fiber. Two points with equal observations and unequal targets
refute such a factorization. Adding the missing target measurement separates
the particular pair; it need not make the augmented observation injective
globally.

These are type-generic logical lemmas, not results about Kakeya tubes,
Freiman--Ruzsa, Dirichlet L-functions, graph colorings, or RH.
-/

set_option autoImplicit false

universe u v w

namespace GRWTSK.Logic.InformationLoss

/-- Source-preserving reconstruction of a target through an observable.
An arbitrary decoder is mathematical data, not a certificate of an existing
algorithm, computability, or norm control. -/
def FactorsThrough {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) : Prop :=
  ∃ decode : Y → Z, readout = decode ∘ profile

/-- A factorized readout is constant on each fiber of the profile. -/
theorem eq_of_factorsThrough
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (hfactor : FactorsThrough profile readout)
    {x y : X} (hsame : profile x = profile y) :
    readout x = readout y := by
  rcases hfactor with ⟨decode, hdecode⟩
  simpa only [hdecode, Function.comp_apply] using congrArg decode hsame

/-- An exact profile collision whose target values differ is a terminal
obstruction to any decoder through this particular profile. -/
theorem not_factorsThrough_of_collision
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (x y : X)
    (hsame : profile x = profile y)
    (hdifferent : readout x ≠ readout y) :
    ¬ FactorsThrough profile readout := by
  intro hfactor
  exact hdifferent (eq_of_factorsThrough profile readout hfactor hsame)

/-- An additional measurement explicitly retains the old observable and
the supplied target. This is a pair-valued map, not a global reconstruction
theorem from the old profile. -/
def augmentedProfile
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) : X → Y × Z :=
  fun x => (profile x, readout x)

/-- A separating measurement distinguishes the selected pair after the
profile is augmented, even if the original profile collides on that pair. -/
theorem augmentedProfile_separates
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z)
    (x y : X)
    (hdifferent : readout x ≠ readout y) :
    augmentedProfile profile readout x ≠
      augmentedProfile profile readout y := by
  intro heq
  exact hdifferent (congrArg Prod.snd heq)

end GRWTSK.Logic.InformationLoss
