# Verification target: Positive Linear Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90d773fc810f6ebc951e84d38d7730cd90cb755",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90d773fc810f6ebc951e84d38d7730cd90cb755`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Monoid` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveLinearMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/positivelinearmap.md) | 36 | `declaration-track:3141f74d2480216f6c021b31bfa9bbe77277904e987eb679e564a883379200b8` |
| 2 | `def` | [toPositiveLinearMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/topositivelinearmap.md) | 54 | `declaration-track:4c9871cdc50215870ad48709ddf98e3f32100e1beea461dc7cd649901a8a36f3` |
| 3 | `instance` | [instCoeToLinearMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/instcoetolinearmap.md) | 58 | `declaration-track:6a6ec2d5518ee69b493e308a60e6fb1fe5097c3156507ee6bd8f910393122a48` |
| 4 | `lemma` | [Positive Linear Map Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/oflinear.md) | 63 | `result-track:7293097ee06ec894d50ae4c00f6e45bb2176288e00f3f88d23b1e431f93de47e` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:7fd5f7422c128ac28204d41d65e069215cbe315e8c58062f349e6ed232ccce1e` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/instance.md) | 92 | `declaration-track:0549896d7ba5e5d983c063c651f4692c02eb03f9bffa3c5d6686b9ad83dba0f5` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/instance-source-edition-3.md) | 96 | `declaration-track:9f119fbb06fadd8a5ab220852c867a1fa0c00842fa72f365578da726b9b7dfc9` |
| 8 | `lemma` | [map_smul_of_tower](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/map-smul-of-tower.md) | 100 | `result-track:474380f13ee4589336cd6bc1e2dc364994fc4f9de18bd876a662758d6709a02a` |
| 9 | `lemma` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/map-nonneg.md) | 106 | `result-track:f3ff0432426452c882727235735e6cac228bf22e2233f38d2b3cd36dc5e0e05a` |
| 10 | `def` | [mk₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveLinearMapNamespaced.lean/declarations/mk.md) | 120 | `declaration-track:c3fc934b81c46d815cb68fe9c668afaab50ff733270937733036383bcbe15f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe69844912ebd8512840c7336bc7c4523dd04bf738d6007465d3599a9ea5abda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveLinearMap/Variant51da7a9fa2cf32713f514649d8d9e021c7e0236da917f1e5fb1891da9e6400a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
