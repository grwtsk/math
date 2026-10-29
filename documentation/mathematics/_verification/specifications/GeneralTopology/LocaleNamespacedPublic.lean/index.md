# Verification target: Locale Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46c9a93c342dcdf2f297d705c5962c9bb60a70cc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Locale/Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocaleNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocaleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46c9a93c342dcdf2f297d705c5962c9bb60a70cc`.

Source path: `GRWTSK/Topology/GeneralTopology/Locale/Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Locale/Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Locale](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/locale.md) | 34 | `declaration-track:38b6d5f4cd42ad341da43a7c26c899bfc11b15a2ac259e46419a2ae857b38619` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:adddac50f4a03989fc038e6eefd6c5f38a381d654a51446b7e9df2e768831812` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 42 | `declaration-track:e953bf51fd497620639bb1374fe325b993eb7ba650e8ffa277b9cb94ea9f8234` |
| 4 | `def` | [of](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/of.md) | 46 | `declaration-track:73e2a3670582ef7ae0cd7214cce639fb89ad63529fa1ba6a65a940fd8840565f` |
| 5 | `def` | [delabOf](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/delabof.md) | 52 | `declaration-track:3119cf8d3971d3893be285f06566a5fa86c527aa0713d3b9967c7d054edb982a` |
| 6 | `theorem` | [coe_of](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/coe-of.md) | 55 | `result-track:4c0e79e9ff189d429f49048bf5c7d7dae99fd27087d958fdf3ca6d193296b975` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/instance.md) | 58 | `declaration-track:aac257ce052aa9c81e0e52a918093432af735b9f5bcede0a3f1a9ab9b741cd9f` |
| 8 | `def` | [topToLocale](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/toptolocale.md) | 66 | `declaration-track:ff3b6628c55ffeaf62167cfe5854ffb86316ef7e7ad6e3e4fc4eb4f3b0c1db86` |
| 9 | `instance` | [CompHausToLocale.faithful](../../../../GeneralTopology/LocaleNamespacedPublic.lean/declarations/comphaustolocale-faithful.md) | 70 | `declaration-track:b6877820a581bf113c302ea1341e768a1d52fcfe8de699921c74015d6b194c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=100132edadcb688d29ae03f56f65e8a34451e01ae5089657a8e45e0822d16a04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Locale/Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Locale/Variant29a051508439d3baef11bca234e257a8765ab6c34e41d96326115b3844e61555.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
