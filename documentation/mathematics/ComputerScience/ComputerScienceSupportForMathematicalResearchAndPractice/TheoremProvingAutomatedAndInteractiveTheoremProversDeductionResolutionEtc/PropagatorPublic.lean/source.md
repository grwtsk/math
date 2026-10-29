# Propagator Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1435a61c64d5b65d9cb4011075165e0219b742a7` · SHA-256 `092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Tactics
import Init.Meta.Defs

public section

namespace Lean.Parser

/-- A user-defined propagator for the `grind` tactic. -/
-- TODO: not implemented yet
syntax (docComment)? "grind_propagator " (Tactic.simpPre <|> Tactic.simpPost) ident " (" ident ")" " := " term : command

/-- A builtin propagator for the `grind` tactic. -/
syntax (docComment)? "builtin_grind_propagator " ident (Tactic.simpPre <|> Tactic.simpPost) ident " := " term : command

/-- Auxiliary attribute for builtin `grind` propagators. -/
syntax (name := grindPropagatorBuiltinAttr) "builtin_grind_propagator" (Tactic.simpPre <|> Tactic.simpPost) ident : attr

macro_rules
  | `($[$doc?:docComment]? builtin_grind_propagator $propagatorName:ident $direction $op:ident := $body) => do
    let propagatorType := `Lean.Meta.Grind.Propagator
    `($[$doc?:docComment]? def $propagatorName:ident : $(mkIdent propagatorType) := $body
      attribute [builtin_grind_propagator $direction $op] $propagatorName)

end Lean.Parser
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4b6e7c98cae7df4ed5ba4f6093e97747f25eac3656ad17573cc4b4d852b228f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagator/Variant092b626e1ec2c7b15ecb208263e50c2c5b1fe57a170a34d3776d041993931c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
