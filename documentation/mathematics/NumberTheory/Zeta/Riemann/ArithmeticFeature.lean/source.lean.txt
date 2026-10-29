/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source-faithful arithmetic feature maps

This module isolates the exact, noncircular part of an arithmetic source map.  A source
record names its identity and revision and exposes separate prime-power, Archimedean,
pole, trivial-zero, nontrivial-zero, endpoint, and tail channels.  The canonical
extraction map copies every field without projection or omission, and every downstream
map constructed by `factorThrough` is definitionally factored through that extraction.

This proves source-faithful feature transport.  It does not construct an elliptic/theta
interpolation, prove that a downstream positive form equals the zeta Weil form, or show
that any comparison error vanishes.
-/

namespace GRWTSK.RiemannHypothesis

/-- Complete named arithmetic inputs at one fixed source identity and revision. -/
structure ArithmeticSource (T R : Type*) where
  sourceId : String
  revision : String
  primePower : T → R
  archimedean : T → R
  pole : T → R
  trivialZero : T → R
  nontrivialZero : T → R
  endpoint : T → R
  tail : T → R

/-- The complete feature record extracted from one test object. -/
structure ArithmeticFeature (R : Type*) where
  sourceId : String
  revision : String
  primePower : R
  archimedean : R
  pole : R
  trivialZero : R
  nontrivialZero : R
  endpoint : R
  tail : R

namespace ArithmeticSource

/-- Canonical complete extraction; every source channel and both identity fields are copied. -/
def extract {T R : Type*} (source : ArithmeticSource T R) (f : T) : ArithmeticFeature R where
  sourceId := source.sourceId
  revision := source.revision
  primePower := source.primePower f
  archimedean := source.archimedean f
  pole := source.pole f
  trivialZero := source.trivialZero f
  nontrivialZero := source.nontrivialZero f
  endpoint := source.endpoint f
  tail := source.tail f

@[simp] theorem extract_sourceId {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).sourceId = source.sourceId := rfl

@[simp] theorem extract_revision {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).revision = source.revision := rfl

@[simp] theorem extract_primePower {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).primePower = source.primePower f := rfl

@[simp] theorem extract_archimedean {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).archimedean = source.archimedean f := rfl

@[simp] theorem extract_pole {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).pole = source.pole f := rfl

@[simp] theorem extract_trivialZero {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).trivialZero = source.trivialZero f := rfl

@[simp] theorem extract_nontrivialZero {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).nontrivialZero = source.nontrivialZero f := rfl

@[simp] theorem extract_endpoint {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).endpoint = source.endpoint f := rfl

@[simp] theorem extract_tail {T R : Type*}
    (source : ArithmeticSource T R) (f : T) :
    (source.extract f).tail = source.tail f := rfl

end ArithmeticSource

/-- Exact source faithfulness means equality with the complete canonical extraction. -/
def SourceFaithful {T R : Type*}
    (source : ArithmeticSource T R) (featureMap : T → ArithmeticFeature R) : Prop :=
  ∀ f, featureMap f = source.extract f

/-- The canonical extraction is source-faithful without any analytic premise. -/
theorem extract_sourceFaithful {T R : Type*} (source : ArithmeticSource T R) :
    SourceFaithful source source.extract := by
  intro f
  rfl

/-- A downstream map together with its exact source factorization. -/
structure SourceFaithfulArithmeticMap
    (T R H : Type*) (source : ArithmeticSource T R) where
  featureMap : T → ArithmeticFeature R
  featureFaithful : SourceFaithful source featureMap
  downstream : ArithmeticFeature R → H
  map : T → H
  factorization : ∀ f, map f = downstream (featureMap f)

/-- Any declared downstream transformation has a canonical source-faithful factorization.
This constructor certifies provenance and completeness of the input tuple, not correctness
of an independently proposed analytic or geometric downstream transformation. -/
def ArithmeticSource.factorThrough {T R H : Type*}
    (source : ArithmeticSource T R) (downstream : ArithmeticFeature R → H) :
    SourceFaithfulArithmeticMap T R H source where
  featureMap := source.extract
  featureFaithful := extract_sourceFaithful source
  downstream := downstream
  map := fun f => downstream (source.extract f)
  factorization := by
    intro f
    rfl

/-- Every canonical factorization uses the exact source feature record. -/
theorem factorThrough_featureMap_eq_extract {T R H : Type*}
    (source : ArithmeticSource T R) (downstream : ArithmeticFeature R → H) (f : T) :
    (source.factorThrough downstream).featureMap f = source.extract f := rfl

/-- Every canonical factorization's terminal map is exactly the declared downstream map
applied to the complete source extraction. -/
theorem factorThrough_map_eq {T R H : Type*}
    (source : ArithmeticSource T R) (downstream : ArithmeticFeature R → H) (f : T) :
    (source.factorThrough downstream).map f = downstream (source.extract f) := rfl

end GRWTSK.RiemannHypothesis
