# Verification target: Simplex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cc7acd37c292a2cb8fda401c598dc997a85dca7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Simplex/Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SimplexNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SimplexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cc7acd37c292a2cb8fda401c598dc997a85dca7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Simplex/Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Simplex/Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimplexPoint](../../../../Combinatorics/SimplexNamespaced.lean/declarations/simplexpoint.md) | 27 | `declaration-track:05ecaa8816281843b1857199f7e1d6a2e6e37445023d78a3f9667b0e7fd359d4` |
| 2 | `instance` | [instCoeFunSimplexPoint](../../../../Combinatorics/SimplexNamespaced.lean/declarations/instcoefunsimplexpoint.md) | 36 | `declaration-track:d5d4c2c155b01d1b0f0d617d107139c211b2bc59e0aa8f9c9a682d6c318a2279` |
| 3 | `theorem` | [ext](../../../../Combinatorics/SimplexNamespaced.lean/declarations/ext-source-edition-2.md) | 40 | `result-track:f54f3caa5f152c4963564c222368eb59f159ec54465d2b9a9f4182c6b8ade453` |
| 4 | `def` | [reindex](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex-source-edition-2.md) | 51 | `declaration-track:4c062976a29fa5b8e04d0f32280555a5e76aeefc88b6ba5e40c7ba0b098aaf6b` |
| 5 | `theorem` | [reindex_apply](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex-apply.md) | 59 | `result-track:4bac638ddd7a9345a15c37a30527aee1baf18dd04a99e401fa13202fbcc0ff33` |
| 6 | `theorem` | [reindex_refl](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex-refl.md) | 64 | `result-track:40b5e4260062498d847d653cd30f5ba67d2f6eb4ac3ed084f003b031065862fe` |
| 7 | `theorem` | [reindex_trans](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex-trans.md) | 70 | `result-track:3c85c5b53d560a510299414a5cd24c425687b86d74faac3404435bbd12922534` |
| 8 | `def` | [barycentric](../../../../Combinatorics/SimplexNamespaced.lean/declarations/barycentric.md) | 77 | `declaration-track:3cba4db9fec7e405d2aee833694b268b77f50083e41a5c9805e0e71e1e451124` |
| 9 | `theorem` | [barycentric_apply](../../../../Combinatorics/SimplexNamespaced.lean/declarations/barycentric-apply.md) | 94 | `result-track:e971bd414328ec5e16de82d477301f689fd124e0bd07ba53e3f2090d635f8766` |
| 10 | `def` | [merge](../../../../Combinatorics/SimplexNamespaced.lean/declarations/merge.md) | 102 | `declaration-track:bf6709e148bcde1104f9afb58e84a49dd690804489a4868efb757b1ef7b41582` |
| 11 | `theorem` | [merge_apply](../../../../Combinatorics/SimplexNamespaced.lean/declarations/merge-apply.md) | 118 | `result-track:4ccdbff0eadbeb5383023a37620210087dd57cdd9b5114911c43eebc6d7e1c04` |
| 12 | `def` | [hierarchical](../../../../Combinatorics/SimplexNamespaced.lean/declarations/hierarchical.md) | 124 | `declaration-track:eb9827a5a64b7a855eebc355ab5241cf4b2b78b0fbd6d92ec325c50018051ed8` |
| 13 | `theorem` | [hierarchical_apply](../../../../Combinatorics/SimplexNamespaced.lean/declarations/hierarchical-apply.md) | 143 | `result-track:f21fb7fd23ce4dec68c428bc02841e6e7f2f3091e06594b1d9fa7d8b14785980` |
| 14 | `structure` | [InteriorSimplexPoint](../../../../Combinatorics/SimplexNamespaced.lean/declarations/interiorsimplexpoint.md) | 153 | `declaration-track:044eb54c18f638bb31948fefddf7d9af21ebc5c541861dfd15b88a2b30ee62a7` |
| 15 | `instance` | [instCoeFunInteriorSimplexPoint](../../../../Combinatorics/SimplexNamespaced.lean/declarations/instcoefuninteriorsimplexpoint.md) | 161 | `declaration-track:86e18a76246700308bcd2804f975a120d7287773c634e4eabed47ebc431c3a24` |
| 16 | `theorem` | [ext](../../../../Combinatorics/SimplexNamespaced.lean/declarations/ext.md) | 166 | `result-track:9d014e41d3a62bfec5487d9525f07929f654cc932b7d6a7e54e2a46e085c5673` |
| 17 | `def` | [reindex](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex.md) | 178 | `declaration-track:1088318abd31e5923625adbae548ce2ed4a274c052f10bb7702eb19033906620` |
| 18 | `theorem` | [reindex_apply](../../../../Combinatorics/SimplexNamespaced.lean/declarations/reindex-apply-source-edition-2.md) | 184 | `result-track:6d92179bcd588e1890467eb5e2cff2a70c2d33323d8a8aa639f4c7151800541e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab8866bd3f501a13b5a76f770656d5eb44cf9d7d40ecb5d6b0d407493283f4b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Simplex/Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Simplex/Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
