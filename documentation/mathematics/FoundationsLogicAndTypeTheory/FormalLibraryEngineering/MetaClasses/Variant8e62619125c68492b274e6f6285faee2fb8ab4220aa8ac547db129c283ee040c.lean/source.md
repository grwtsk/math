# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaClasses.Variant8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd6a8392465b627b57862fed4f9ed82aa0c8b371` · SHA-256 `8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Data.NameMap.Basic

open Lean Syntax Parser Command

namespace Lake

public structure ConfigProj (σ : Type u) (α : Type v) where
  get (cfg : σ) : α
  set (val : α) (cfg : σ) : σ
  modify (f : α → α) (cfg : σ) : σ
  mkDefault : σ → α

public class ConfigField (σ : Type u) (name : Name) (α : outParam $ Type v) extends ConfigProj σ α

public abbrev mkFieldDefault (name : Name) [field : ConfigField σ name α] (cfg : σ) : α :=
  field.mkDefault cfg

public class ConfigParent (σ : Type u) (ρ : semiOutParam $ Type v) extends ConfigProj σ ρ

public structure ConfigFieldInfo where
  /-- The name of the field (possibly an alias). -/
  name : Name
  /-- The real name of the field in the configuration structure. -/
  realName : Name
  /-- Whether `name == realName` and the field is not a parent projection. -/
  canonical : Bool := false
  /-- Whether the field is a parent projection. -/
  parent : Bool := false

public class ConfigFields (σ : Type u) where
  fields : Array ConfigFieldInfo

public class ConfigInfo (name : Name) where
  fields : Array ConfigFieldInfo
  fieldMap : NameMap ConfigFieldInfo :=
    fields.foldl (init := ∅) fun m i => m.insert i.name i
  arity : Nat

public instance [parent : ConfigParent σ ρ] [field : ConfigField ρ name α] : ConfigField σ name α where
  mkDefault s := field.mkDefault (parent.get s)
  get s := field.get (parent.get s)
  set a := parent.modify (field.set a)
  modify f := parent.modify (field.modify f)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3edf0b95d406c19629c8a9787f60d34e37d8fdcbfb4feee618c822e65e905130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaClasses/Variant8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
