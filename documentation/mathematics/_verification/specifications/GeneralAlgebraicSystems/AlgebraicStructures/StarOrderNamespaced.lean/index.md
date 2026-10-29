# Verification target: Star Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38da555b3bc86e0917587ac5c9ce142311b16ae5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38da555b3bc86e0917587ac5c9ce142311b16ae5`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StarOrderedRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/starorderedring.md) | 57 | `declaration-track:2f352f6fd0231b7b17d5c6f380c2b3bfd809da35033af6f829df99755c4de3f5` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:7558aa83b9cc65888a5963b2cec98aeba90d59f7daed0cddf53cc61c7679dc64` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:78b23e25f269b8d413a16cfc367e011dc2866ab9a7dd2fe6b4c92607d687a168` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/instance.md) | 84 | `declaration-track:6645fd953bf773b442c9f7853d7c17d9782df12e0bc2f393f8721bac79e3d59e` |
| 5 | `def` | [ofLeIff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/ofleiff.md) | 101 | `declaration-track:c6b012e527c03cc04bcd1f0256bc30b8210e4721d80913282358771a5ad68935` |
| 6 | `def` | [ofNonnegIff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/ofnonnegiff-source-edition-2.md) | 122 | `declaration-track:d2e739eb5bfc6fccba177ce634e148556c558026258341bb15e4294a4dbf116d` |
| 7 | `def` | [ofNonnegIff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/ofnonnegiff.md) | 140 | `declaration-track:b928156c5a98be128cc77c7fc8aa5c29b6b348f3615494fba894721ba1cbb65b` |
| 8 | `theorem` | [nonneg_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/nonneg-iff.md) | 148 | `result-track:0a0d1eb6f7834e4a0181df9ccd2e0d323c0d215a3100f8500e01005286a31f2d` |
| 9 | `theorem` | [star_mul_self_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/star-mul-self-nonneg.md) | 159 | `result-track:03d25b8b88547c5fafd1f99b683542bfb7563349a203c75d16e94bf41e95ec56` |
| 10 | `theorem` | [star_mul_self_nonneg'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/star-mul-self-nonneg-source-edition-2.md) | 163 | `result-track:b20f708c13a82834cdf113879e5297f906c1ed0ff758a5d2876d03f8fbbbee5d` |
| 11 | `theorem` | [conjugate_nonneg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/conjugate-nonneg-source-edition-2.md) | 167 | `result-track:8901a9fd9e67fb0a4ca3a59849020ae9a8eea8a3d5cab242bdc33a399bf33625` |
| 12 | `theorem` | [conjugate_nonneg'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/conjugate-nonneg.md) | 180 | `result-track:0e68ec2844aee2cfe200c1e21b64545522e1bb7ed0bba52dc7af7e50195f3200` |
| 13 | `theorem` | [conjugate_le_conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/conjugate-le-conjugate-source-edition-2.md) | 184 | `result-track:e386372f3cdd142a9267add1b30d53255b02d1c1d0b43dbb6dc76ef46a8bc19a` |
| 14 | `theorem` | [conjugate_le_conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarOrderNamespaced.lean/declarations/conjugate-le-conjugate.md) | 192 | `result-track:a76267a7e7e1a0d5cea70f16c4015a5de0b00271b276c296502c7d6d4a099223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33e554ed668c740c256abe49d40d7e3a37d7d9b8c54eb4a9d32ac4c9c2bd63df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
