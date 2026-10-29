# Verification target: Cast Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bc2d36b29921dcfe0b7f89ac917583e6807de07",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bc2d36b29921dcfe0b7f89ac917583e6807de07`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-mono.md) | 46 | `result-track:13e7a2191a6159e36e9d82d918ab23ccf35de244867327164775dc19c189638d` |
| 2 | `lemma` | [cast_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-nonneg.md) | 53 | `result-track:16525e282b373719d14defbd6f7cb49e8c649207689ec9c037ca4bf7fd5a1300` |
| 3 | `lemma` | [cast_nonneg_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-nonneg-iff.md) | 57 | `result-track:45f8c1ca70f9f380a0a337dfb8ac6da5192df36c3421dbdd173374b536eb89e2` |
| 4 | `lemma` | [cast_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-le.md) | 63 | `result-track:2402e4f6d47eb86243603510433e98f5086c6741951a4e4458ad23c1adf007da` |
| 5 | `lemma` | [cast_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-strictmono.md) | 66 | `result-track:1eb30fd2bb720f4c88e8b7ff8a39e71de8f93d7e5a00a156255bc34033ef8b92` |
| 6 | `lemma` | [cast_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-lt.md) | 69 | `result-track:d42dea68f589ed4d425dea08e6aa8c205b689ee7cbdc27c90f3327605a1a4284` |
| 7 | `lemma` | [cast_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-nonpos.md) | 71 | `result-track:186699ed219418514acb7f5b308dd6a4b318ce73fb82bb0d1fcb06ccc3559d09` |
| 8 | `lemma` | [cast_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-pos.md) | 73 | `result-track:242a62cd74a1c7fdaeebe2302d3d14767f267ba3d7a63b299a43e9143a92eb51` |
| 9 | `lemma` | [cast_lt_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-lt-zero.md) | 75 | `result-track:7c4a6177848cc1d33e7e64d3ab1cf070c06ae7e85cb6169d8348a1d8fab9d2bc` |
| 10 | `lemma` | [cast_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-min.md) | 83 | `result-track:032d156e16a215e333e3e6096bc502b97bc724e74af2b0a8b8cb29f8e4defbd4` |
| 11 | `lemma` | [cast_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-max.md) | 86 | `result-track:72b642517ef1ec882f2c07227eb77988fb54a034149797314b52aa94e0e9b45b` |
| 12 | `lemma` | [cast_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-abs.md) | 89 | `result-track:1efd4acb2cefd0a3970f7ddceb7d97d4bd980c0195803d6c49d44db8d765dc87` |
| 13 | `lemma` | [cast_one_le_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-one-le-of-pos.md) | 91 | `result-track:c850dbe4ce6817e14bcd4e70b29b97d4e5105d29d9c3d9c743de07c284d3dacd` |
| 14 | `lemma` | [cast_le_neg_one_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-le-neg-one-of-neg.md) | 93 | `result-track:d7b6f962c456bd9ce03da5333820a244991931e302170f74338b257696ca0219` |
| 15 | `lemma` | [cast_le_neg_one_or_one_le_cast_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/cast-le-neg-one-or-one-le-cast-of-ne-zero.md) | 98 | `result-track:4648a0ec83f38aca284208d8379d8f684cbc1c93877074111ab0a3154cd3130c` |
| 16 | `lemma` | [nneg_mul_add_sq_of_abs_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CastNamespacedPublic.lean/declarations/nneg-mul-add-sq-of-abs-le-one.md) | 101 | `result-track:25b74d09c6c319771b3174d61d25c18e0ee1f57dc44404abc5b7a517d90e5118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65310136dcc1e07a834c4ca70c979cb4c9dae3fd84662562db71ffe481d8f9c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
