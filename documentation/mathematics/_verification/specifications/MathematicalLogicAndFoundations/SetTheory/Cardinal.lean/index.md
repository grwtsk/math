# Verification target: Cardinal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2502e92cf74a1279d89cca8d278628f8edb783b8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2502e92cf74a1279d89cca8d278628f8edb783b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Reconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RevisedCoveringStatement](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/revisedcoveringstatement.md) | 33 | `declaration-track:74fff99928085fe9f2ac4945213913e6c9a44db112313ba1abc127b11c4d5e23` |
| 2 | `theorem` | [downwardClosure_eq_iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/downwardclosure-eq-iunion.md) | 42 | `result-track:73d8ec6ad522edae9834cf1eddaf52a4c5788bc8fc293d1c8fc8ee1409f6bf45` |
| 3 | `theorem` | [mk_downwardClosure_le_sum](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/mk-downwardclosure-le-sum.md) | 53 | `result-track:bfe935382ee6a80ab4bffd55a66fac56087eb605d48bcb4bd661078f6322a589` |
| 4 | `theorem` | [downward_member_small](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/downward-member-small.md) | 59 | `result-track:438bc42515d336cb90c9ca906d1d476dabb9173a83a802e48780e21cd3f0ccae` |
| 5 | `theorem` | [sum_powerset_le_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/sum-powerset-le-mul.md) | 66 | `result-track:d23be04372c321d36708428b8f4caba89b2d9b0c8bfa5a29459815c3e0bf5403` |
| 6 | `theorem` | [mk_downwardClosure_le](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/mk-downwardclosure-le.md) | 75 | `result-track:61d49c8479abe51dffbed093ce459e9f2f4fb68eddda02eca58e4b29d4d9c7fe` |
| 7 | `theorem` | [reconstructed_index_bound](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/reconstructed-index-bound.md) | 85 | `result-track:298fe69f7fe98c27ca1c7689b9c7150a6adf2e377b268f9670ed6ad0b3b0b1ec` |
| 8 | `theorem` | [covering_threshold_enlargement](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/covering-threshold-enlargement.md) | 92 | `result-track:86821e93ab576dbd1c3cb17e126f60ead73f1261cc33f3a38cada52b05c9937a` |
| 9 | `theorem` | [composed_cover_threshold](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/composed-cover-threshold.md) | 99 | `result-track:2aa7bae027265b2e96ee0ad1502bff8da6c811d8e1f1f36e174ce919613b7c2d` |
| 10 | `theorem` | [reconstruct_composed_cover](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/reconstruct-composed-cover.md) | 116 | `result-track:10505da8a1b31d90b28546360b69394925a2dfd1027e91c2c7e01d668376b30a` |
| 11 | `theorem` | [equiv_image_cardinal](../../../../../MathematicalLogicAndFoundations/SetTheory/Cardinal.lean/declarations/equiv-image-cardinal.md) | 127 | `result-track:a1f43addcb2db9b97819cb2375f3977e199d1221296045953e02b80549e9b5d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=984aca2fae834a78da7b749c7e3d77a597b555311e281fa9cf5ac78fba2d93e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant181c991d60cc9f374142c4c7a8a579653f22c0e03ad2929130b5ba3c2883ffa4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
