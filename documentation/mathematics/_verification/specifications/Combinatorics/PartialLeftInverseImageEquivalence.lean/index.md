# Verification target: Partial Left Inverse Image Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "466b8cfd98705da5c25dbc20b6f2b39d7de3bfe7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Variant8136e4b65fdd2b32/PartialLeftInverseImageEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/index.md) · [Full source](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `466b8cfd98705da5c25dbc20b6f2b39d7de3bfe7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Variant8136e4b65fdd2b32/PartialLeftInverseImageEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Variant8136e4b65fdd2b32/PartialLeftInverseImageEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInverseCodec](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/leftinversecodec.md) | 39 | `declaration-track:e2c322e336e97e92e6e5714db5d5719fc3e5426af206d0a0f8c84c4dae9697da` |
| 2 | `theorem` | [encode_injective](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/encode-injective.md) | 49 | `result-track:6f1de609eb51ff79aa560c0328a485c122209a53aa4a601dbd1bf1ef809c6f1a` |
| 3 | `def` | [ValidOutput](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/validoutput.md) | 57 | `declaration-track:fb104a3933e85dfb12cbe97b17568ea17eabe3d499958164f064541217c8e2d7` |
| 4 | `def` | [ValidOutputType](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/validoutputtype.md) | 64 | `declaration-track:181b2cfdd68b152a89c03f313790dc3e35a1de3d3fceb2d456c232c9c474b9dd` |
| 5 | `theorem` | [encode_decode_of_valid](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/encode-decode-of-valid.md) | 69 | `result-track:484e950c3a65278b34cff5856a953861130352fa23577b960b2749c8c2ddc2e3` |
| 6 | `def` | [sourceEquivValidOutput](../../../../Combinatorics/PartialLeftInverseImageEquivalence.lean/declarations/sourceequivvalidoutput.md) | 78 | `declaration-track:eb257744ad87c39088e30e7fe711b961b83b738da477123745c04ee5bcb5f865` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=572f5990ada495851fc2a6bb9d4da83e3afafbe1750866326d6b67a69abffd82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Variant8136e4b65fdd2b32/PartialLeftInverseImageEquivalence.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/SourceComponents/Variant8136e4b65fdd2b32/PartialLeftInverseImageEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
