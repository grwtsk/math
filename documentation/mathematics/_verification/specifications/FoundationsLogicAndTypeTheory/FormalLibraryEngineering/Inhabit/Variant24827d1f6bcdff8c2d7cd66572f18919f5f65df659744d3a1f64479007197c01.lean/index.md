# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inhabit.Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed8909be666c20c20d4ca1dd8790b8f4d8231f8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed8909be666c20c20d4ca1dd8790b8f4d8231f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.ElabTerm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonempty_to_inhabited](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/declarations/nonempty-to-inhabited--6f31cdfab6187d79bfdc38d4.md) | 19 | `declaration-track:6f31cdfab6187d79bfdc38d4872188066779ee7b903100bca2a94a210045f904` |
| 2 | `def` | [nonempty_prop_to_inhabited](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/declarations/nonempty-prop-to-inhabited--696f5d4e72db5a6714898b52.md) | 24 | `declaration-track:696f5d4e72db5a6714898b52f253ce89fe9b9ed772e97101b71a1a04f225e430` |
| 3 | `syntax` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/declarations/syntax--f03ef219d6033436d5213a6a.md) | 32 | `declaration-track:f03ef219d6033436d5213a6aa21e24455cf955ad01912ea5395fd4ee2ca386a3` |
| 4 | `def` | [evalInhabit](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/declarations/evalinhabit--88153007dd0a57188792c5f6.md) | 36 | `declaration-track:88153007dd0a57188792c5f69748d2756a0e4c3447131cf25e1a974f704714d6` |
| 5 | `elab_rules` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean/declarations/elab-rules--c2a2ad39dc07c569b221ac8e.md) | 53 | `declaration-track:c2a2ad39dc07c569b221ac8e8451238abf70a87c0c21faf00ce3473a6bf73009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1c4cf58ccf33873877f1beb194e02c38d4dbd583b5e1e2f5ddcb7d8a168a33a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabit/Variant24827d1f6bcdff8c2d7cd66572f18919f5f65df659744d3a1f64479007197c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
