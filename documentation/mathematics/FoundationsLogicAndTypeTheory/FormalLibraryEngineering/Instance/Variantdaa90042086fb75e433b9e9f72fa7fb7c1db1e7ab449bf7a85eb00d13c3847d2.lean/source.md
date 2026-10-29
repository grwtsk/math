# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instance.Variantdaa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f7f13294e86fb0bf7fe0d7507425690c60226a` · SHA-256 `daa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddSound

@[expose] public section

/-!
This module couples the default LRAT implementation to the `Formula` typeclass.
-/

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

namespace DefaultFormula

instance {n : Nat} : Formula (PosFin n) (DefaultClause n) (DefaultFormula n) where
  toList := toList
  ReadyForRupAdd := ReadyForRupAdd
  ReadyForRatAdd := ReadyForRatAdd
  ofArray := ofArray
  readyForRupAdd_ofArray := readyForRupAdd_ofArray
  readyForRatAdd_ofArray := readyForRatAdd_ofArray
  insert := insert
  insert_iff := insert_iff
  readyForRupAdd_insert := readyForRupAdd_insert
  readyForRatAdd_insert := readyForRatAdd_insert
  delete := delete
  readyForRupAdd_delete := readyForRupAdd_delete
  readyForRatAdd_delete := readyForRatAdd_delete
  delete_subset := delete_subset
  formulaEntails_def := formulaEntails_def
  performRupAdd := performRupAdd
  rupAdd_result := rupAdd_result
  rupAdd_sound := rupAdd_sound
  performRatAdd := performRatAdd
  ratAdd_result := ratAdd_result
  ratAdd_sound := ratAdd_sound

end DefaultFormula

end Internal
end LRAT
end Std.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fee5860a7d98f1067c90681cc89c13b87803c6ff8c5139e356066b6d05b62c9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instance/Variantdaa90042086fb75e433b9e9f72fa7fb7c1db1e7ab449bf7a85eb00d13c3847d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
