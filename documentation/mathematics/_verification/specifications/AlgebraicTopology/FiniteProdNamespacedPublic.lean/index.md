# Verification target: Finite Prod Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbd3b23ce8bb20d54ed9b5da6546a5b81f1732bf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbd3b23ce8bb20d54ed9b5da6546a5b81f1732bf`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean.json)

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
| 1 | `lemma` | [iSup_subcomplexOfSimplex_prod_eq_top](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/isup-subcomplexofsimplex-prod-eq-top.md) | 42 | `result-track:54b3fb9ffd1b481d4947103af53941543ae5400e2b3a0ea18ff72f2a92626f8b` |
| 2 | `lemma` | [Subcomplex.ofSimplexProd_eq_range](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/subcomplex-ofsimplexprod-eq-range.md) | 55 | `result-track:bbe3e64297974f5728ff6e15956c7374fee377b904ebf8f5406bc575fd054768` |
| 3 | `lemma` | [hasDimensionLT_prod](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/hasdimensionlt-prod.md) | 61 | `result-track:4624b3930a71a2b14e912e00b8f63b737fca63b20cf2016f769ea6995ceb2765` |
| 4 | `lemma` | [hasDimensionLE_prod](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/hasdimensionle-prod.md) | 74 | `result-track:993265b5630c33454247d995eb31a660bd9dea59128c621941eb3ecf83426af9` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/instance.md) | 80 | `declaration-track:061b6b123825d1f04da64d5bcd4020db0d2b372d8a33f1649087426cd0e8d88a` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 84 | `declaration-track:57a292a613584861c15cc5c0cce52c87b58c44e0ad2dd06bc1e8cb451c9c2ba2` |
| 7 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 88 | `declaration-track:b064385616da38a9d7b1e7584f2e5cbbc769269ca8fded1025afaf1e04a6c2a3` |
| 8 | `lemma` | [finite_of_isPullback](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/finite-of-ispullback.md) | 94 | `result-track:b5a420b0905a0493b76f4990b612f21addb957996a7ecbbaead33e614250a575` |
| 9 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FiniteProdNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:928eb49088cd8e26b1820e43ad636aa4f1475a278f6644b72a7585508e396737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1afa2bb553813e9ec9ebf81a1a18c8e2399092b101f1dca95c788314caf6296 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
