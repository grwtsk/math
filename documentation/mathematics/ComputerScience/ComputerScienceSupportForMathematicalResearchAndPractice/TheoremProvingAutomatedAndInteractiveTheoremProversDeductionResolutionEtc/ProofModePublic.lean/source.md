# Proof Mode Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a729fd36642bc6461a7723ad75246d8ba1945e29` · SHA-256 `60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.MGoal
public import Lean.Elab.Tactic.Do.ProofMode.Delab
public import Lean.Elab.Tactic.Do.ProofMode.Basic
public import Lean.Elab.Tactic.Do.ProofMode.Clear
public import Lean.Elab.Tactic.Do.ProofMode.Intro
public import Lean.Elab.Tactic.Do.ProofMode.Revert
public import Lean.Elab.Tactic.Do.ProofMode.Exact
public import Lean.Elab.Tactic.Do.ProofMode.Assumption
public import Lean.Elab.Tactic.Do.ProofMode.Pure
public import Lean.Elab.Tactic.Do.ProofMode.Frame
public import Lean.Elab.Tactic.Do.ProofMode.LeftRight
public import Lean.Elab.Tactic.Do.ProofMode.Constructor
public import Lean.Elab.Tactic.Do.ProofMode.RenameI
public import Lean.Elab.Tactic.Do.ProofMode.Specialize
public import Lean.Elab.Tactic.Do.ProofMode.Cases
public import Lean.Elab.Tactic.Do.ProofMode.Exfalso
public import Lean.Elab.Tactic.Do.ProofMode.Have
public import Lean.Elab.Tactic.Do.ProofMode.Refine
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4b95073619e6097aaccc5e4fc8ee392be4b2ff6f30fba635763fabccaa7fe6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofMode/Variant60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
