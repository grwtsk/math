# Verification target: Proper Action Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c34a482cfd6b3439bead60cfde47c446842a781a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c34a482cfd6b3439bead60cfde47c446842a781a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean.json)

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
| 1 | `class` | [ProperVAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propervadd.md) | 55 | `declaration-track:be5eb8257444d2f98f9f6b2a6c58b06910487ed26e010f93ad40cc941d3bc114` |
| 2 | `class` | [ProperSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul.md) | 64 | `declaration-track:d3ab68b7ac800b7c52a97392c5722fc0ba20c76ffd049a64a539af0f870dd3c7` |
| 3 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/instance.md) | 78 | `declaration-track:238cfe10f34dffb28268d5e13ca84371996bd8a6ee6252541916b83d36244c66` |
| 4 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto.md) | 88 | `result-track:9eb09d7b88173d78a0be37dc71cb13db43d7395926b73fe34b5be346a1d3f7b0` |
| 5 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto_t2](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto-t2.md) | 109 | `result-track:820279c18a813c9a3eff39280b016635bc7387e38006fd9bf4eccc82b946ce11` |
| 6 | `instance` | [t2Space_quotient_mulAction_of_properSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/t2space-quotient-mulaction-of-propersmul.md) | 122 | `declaration-track:7eff58bd090511b92362f992f71448f2614006571947b8e0743c52c741d058ee` |
| 7 | `theorem` | [t2Space_of_properSMul_of_t1Group](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/t2space-of-propersmul-of-t1group.md) | 140 | `result-track:4b14113626acc9149f3eb38a597d02aee3e0d26c20763169d55e5f9c1cc1a1a6` |
| 8 | `theorem` | [properSMul_of_isClosedEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul-of-isclosedembedding.md) | 161 | `result-track:255e3209e779eb3f148bb28bf407ccf088eaecad15f45c1feb48e640cecdde1b` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 174 | `declaration-track:7de0992cd1790fdbdd3c797fee8e7c511ba5f155bcb19f48e1e8a3dc6c7995f6` |
| 10 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 180 | `declaration-track:6cd4ca3d6ea430a881b1ca0dbfd66b9d46d80838e9ac7fdca427687b5bc799de` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 193 | `declaration-track:b2d62c8bd630e252d5ef1145c71a428d734eead00eb68792b6d773fdf142fb57` |
| 12 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 208 | `declaration-track:f4cbb26fa60d6eef967d551444a09207e98bf0515a58611bebf260b6576044d0` |
| 13 | `instance` | [QuotientGroup.instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/quotientgroup-instt2space.md) | 214 | `declaration-track:c2de5262dae9fcce4e3b734c6a6288f8dfb6681a960b1d35911be82cc73a830d` |
| 14 | `lemma` | [ProperSMul.isProperMap_smul_pair_set](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul-ispropermap-smul-pair-set.md) | 223 | `result-track:d8f26cae1fcb460081464505801858bd3367b7013d4e51c51be46778e1ab5333` |
| 15 | `theorem` | [IsClosed.smul_right_of_isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/isclosed-smul-right-of-iscompact.md) | 249 | `result-track:8f989b2b8d8c706a802c23a24ef589d2c8844d64aadcc2aa2c77efff2ba8ccf8` |
| 16 | `lemma` | [ProperSMul.isCompact_setOfPred_inter_nonempty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/propersmul-iscompact-setofpred-inter-nonempty.md) | 278 | `result-track:e8f716782d5d1cecb0a4c41a4e207b7f1dc7393c1774d3aefd59ce20dc261076` |
| 17 | `lemma` | [MulAction.properSMul_of_proper_orbitMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ProperActionBasicNamespacedPublic.lean/declarations/mulaction-propersmul-of-proper-orbitmap.md) | 300 | `result-track:3e74c81b7a09cf02f7eb196a7417ec5e9139c8194d77fa79311310fb1bed8218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a543b1ac6bc0ebc698d190b3c38df8621d2d22b1c0fcf51399869b47d0e0aad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
