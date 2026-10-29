# Basic Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bdde4e0426532d3c8d7feabe87dab5d51d4a979` · SHA-256 `2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds.Core
import LeanCert.Validity.Bounds.WithInv
import LeanCert.Validity.Bounds.Smart
import LeanCert.Validity.Bounds.Bridge

/-!
# Bounds Module Index

This module re-exports all components of the bounds verification infrastructure.

## Submodules

- `Core`: Basic boolean checkers and golden theorems for bound verification
- `WithInv`: Support for expressions with inverse-like operations (inv, log, atan, etc.)
- `Smart`: Monotonicity-aware bounds using derivative information
- `Bridge`: Set.Icc bridge theorems and subdivision combinators

## Usage

Import this module to get access to all bound verification functionality:

```lean
import LeanCert.Validity.Bounds.Basic
```
-/
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7dd0a3bdc795a3c51277234c06f8d04cb0e9f9b7f9201c3da16948dd03b3b05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
