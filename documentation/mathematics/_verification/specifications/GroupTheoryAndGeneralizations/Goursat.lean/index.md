# Verification target: Goursat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9815f89f18f448127513848e53a31dfb2ae9f41c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Goursat/Variantff95311ea331d1360188a2723b780162439b7f47b6dffb7d32be9242d115aa23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Goursat.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Goursat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9815f89f18f448127513848e53a31dfb2ae9f41c`.

Source path: `GRWTSK/Algebra/GroupTheory/Goursat/Variantff95311ea331d1360188a2723b780162439b7f47b6dffb7d32be9242d115aa23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Goursat/Variantff95311ea331d1360188a2723b780162439b7f47b6dffb7d32be9242d115aa23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Graph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goursatFst](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/goursatfst.md) | 39 | `declaration-track:f9c84384cb72aece6f5593329f15891b8c228f266001207434c7df98079d5363` |
| 2 | `def` | [goursatSnd](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/goursatsnd.md) | 52 | `declaration-track:58f8b7a0f0eddd4ab98d84e83a7255d35e4f7eea3f16bf1cdda8b9e479ba4836` |
| 3 | `lemma` | [mem_goursatFst](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/mem-goursatfst.md) | 56 | `result-track:bca4e9f6ea8ec4eda15bea8de60ce7307c2b28d2a3aca29cd5d97b3f5fd29bbe` |
| 4 | `lemma` | [mem_goursatSnd](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/mem-goursatsnd.md) | 59 | `result-track:e736deab02027c98d1de3e9ccf91741461d4a21c4c53c9ec1cd2cdbe371a29ab` |
| 5 | `lemma` | [normal_goursatFst](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/normal-goursatfst.md) | 62 | `result-track:9c688ed68320e008127c52ff599148f9060b9ceff340a6df8b89d2f0bcd81d38` |
| 6 | `lemma` | [normal_goursatSnd](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/normal-goursatsnd.md) | 65 | `result-track:3ff2f4ad86b6ecb0b905d9b1f6b6a2a46786c21a90871e444865708418a244d1` |
| 7 | `lemma` | [mk_goursatFst_eq_iff_mk_goursatSnd_eq](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/mk-goursatfst-eq-iff-mk-goursatsnd-eq.md) | 69 | `result-track:7ee32a5b1f6516d6df870fc04645c83675e2dad263e08cd22d437e86ecf5dce8` |
| 8 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/goursatfst-prod-goursatsnd-le.md) | 81 | `result-track:c70599f1326aad2f3af6d88725f931f32240d208500a306cb50a6bb9219b1a22` |
| 9 | `lemma` | [goursat_surjective](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/goursat-surjective.md) | 100 | `result-track:9d12d9b572542b67ea1860c9b31db4d92f81ca3cdd031a6866fdffe1c89496aa` |
| 10 | `lemma` | [goursat](../../../../GroupTheoryAndGeneralizations/Goursat.lean/declarations/goursat.md) | 124 | `result-track:b95dba8c53b9b7fc591396cfc9dd02bbb6098cc8d023448cbb578aace42ce9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db86ada45ab07481f02ff08c078fc1c92862dc088ac7df65ce551751a0e93af0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Goursat/Variantff95311ea331d1360188a2723b780162439b7f47b6dffb7d32be9242d115aa23.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Goursat/Variantff95311ea331d1360188a2723b780162439b7f47b6dffb7d32be9242d115aa23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
