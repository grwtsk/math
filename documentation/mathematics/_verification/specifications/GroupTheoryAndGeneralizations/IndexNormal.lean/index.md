# Verification target: Index Normal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "710ba1d8d91301645bf4f237baa61dc2402234d0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IndexNormal.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IndexNormal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `710ba1d8d91301645bf4f237baa61dc2402234d0`.

Source path: `GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Factorial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normal_of_index_eq_one](../../../../GroupTheoryAndGeneralizations/IndexNormal.lean/declarations/normal-of-index-eq-one.md) | 29 | `result-track:b10f2be4a5994d458380f4fb185274f1745db548fdd343e11227e96e511383d4` |
| 2 | `theorem` | [normal_of_index_eq_two](../../../../GroupTheoryAndGeneralizations/IndexNormal.lean/declarations/normal-of-index-eq-two.md) | 35 | `result-track:3876b3a91352e45b72035b4462a78ad6600006799534ed5b070461bff881f990` |
| 3 | `theorem` | [normal_of_index_eq_minFac_card](../../../../GroupTheoryAndGeneralizations/IndexNormal.lean/declarations/normal-of-index-eq-minfac-card.md) | 41 | `result-track:018f807d2afde835f5e5104684ebac5075b6847c889549e73bda2e609cd48c7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db41e76b0e4b74677a772b4bf3ba3d6b7ca6a22ca369d1e77571deca098ff1aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
