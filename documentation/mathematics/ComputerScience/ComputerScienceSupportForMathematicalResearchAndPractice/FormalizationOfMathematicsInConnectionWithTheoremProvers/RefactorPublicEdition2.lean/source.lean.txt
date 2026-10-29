module

public import Surface.Refactor.Wire
public import Surface.Refactor.PrimeLatticePlan
public import Surface.Refactor.PrimeLatticeScheduler
public import Surface.Refactor.Syntax
public import Surface.Refactor.Surgery
public import Surface.Refactor.TheoremEnvelope
public import Surface.Refactor.TransportAdapter
public import Surface.Refactor.NetworkSurgeryPatch

/-!
# Surface verified refactor kernel

Canonical, proof-safe protocol types for Rust-owned local refactoring.  Model,
numerical, scheduler, and receipt data never replace Lean kernel acceptance.
-/
