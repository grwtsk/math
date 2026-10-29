# Verification target: Theorem Adapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffe1d16ab4744f63502eb0d6f794906fb34b79af",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffe1d16ab4744f63502eb0d6f794906fb34b79af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Codec` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EncodedTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/declarations/encodedtheorem.md) | 5 | `declaration-track:79d18740fe2fc84637cc8ee015e54eb5c16464336c7db88f4b37ad9c8ce5b3f0` |
| 2 | `theorem` | [encodedTheorem_matrix_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/declarations/encodedtheorem-matrix-sound.md) | 11 | `result-track:1ebd5ab76d0dd3c653c31b0de8aabe8b093e2c68bfd27b9960118495e0064ea6` |
| 3 | `structure` | [BinaryLogicMatrixTheoremAdapter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/declarations/binarylogicmatrixtheoremadapter.md) | 15 | `declaration-track:28a8a4fccfdc0f86736ad26e72c7a17b51f4624be45d462e7638696b118d2f21` |
| 4 | `theorem` | [theoremAdapter_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/declarations/theoremadapter-sound.md) | 24 | `result-track:0bafdb73146a3d8d400f6e8e4d482e526444ae3eaa2d5a99f6a36d1b4edeaa5e` |
| 5 | `theorem` | [theoremAdapter_boundary_visible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TheoremAdapter.lean/declarations/theoremadapter-boundary-visible.md) | 31 | `result-track:12b68aa2e4b16177e9a8d6619148690fec5e4fb9057b7bf582ea26c8741ab6d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04d176279d948b8f3c6c32f480cfa34f93bef2c9506d7f04a6167c49bdb96c9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
