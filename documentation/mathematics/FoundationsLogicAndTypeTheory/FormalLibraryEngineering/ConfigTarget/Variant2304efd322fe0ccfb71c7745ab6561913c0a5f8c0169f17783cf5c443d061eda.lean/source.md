# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigTarget.Variant2304efd322fe0ccfb71c7745ab6561913c0a5f8c0169f17783cf5c443d061eda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b8d79bcb5120b109dde6b49b8ba899f847260e1` · SHA-256 `2304efd322fe0ccfb71c7745ab6561913c0a5f8c0169f17783cf5c443d061eda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Package

open Lean

namespace Lake

/--
A user-configured target -- its package and its configuration.
This is the general structure from which `LeanLib`, `LeanExe`, etc. are derived.
-/
public structure ConfigTarget (kind : Name) where
  /-- The package the target belongs to. -/
  pkg : Package
  /-- The target's name. -/
  name : Name
  /-- The target's user-defined configuration. -/
  config : ConfigType kind pkg.keyName name

public instance : Hashable (ConfigTarget k) := ⟨(hash ·.name)⟩
public instance : BEq (ConfigTarget k) := ⟨(·.name == ·.name)⟩

@[simp] public axiom OpaqueConfigTarget.def {k : Name} : OpaqueConfigTarget k = ConfigTarget k

@[inline] public def PConfigDecl.mkConfigTarget (pkg : Package) (self : PConfigDecl pkg.keyName) : ConfigTarget self.kind :=
  ConfigTarget.mk pkg self.name self.config'

/-- Returns the package targets of the specified kind (as an `Array`). -/
@[inline] public def Package.configTargets (kind : Name) (self : Package) : Array (ConfigTarget kind) :=
  self.targetDecls.foldl (init := #[]) fun a t =>
    let {name := n, kind := k, config, pkg_eq, ..} := t
    if kind_eq : k = kind then
      a.push ⟨self, n, kind_eq ▸ pkg_eq ▸ config⟩
    else
      a

/-- Try to find a package target of the given name and kind. -/
@[inline] public def Package.findConfigTarget? (kind : Name) (name : Name) (self : Package) : Option (ConfigTarget kind) :=
  self.findTargetDecl? name |>.bind fun t =>
    let {name, kind := k, config, pkg_eq, ..} := t
    if kind_eq : k = kind then
      some ⟨self, name, kind_eq ▸ pkg_eq ▸ config⟩
    else
      none
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e0fbc29c874b8bb33a6489c101a600ceb35566e3450b7b3222433594303c5ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigTarget/Variant2304efd322fe0ccfb71c7745ab6561913c0a5f8c0169f17783cf5c443d061eda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
