# Verification target: Locally Injective Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ab43e2f066966d043e0aaccddba93682324e09",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ab43e2f066966d043e0aaccddba93682324e09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728.lean.json)

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
| 1 | `def` | [equalizerSieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/equalizersieve.md) | 46 | `declaration-track:5c51a31c53c7cfb440fe8eb24bb50fce7f1169a39e741bcaff260829b6407ea6` |
| 2 | `lemma` | [equalizerSieve_self_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/equalizersieve-self-eq-top.md) | 53 | `result-track:690b3db29ca6f04f5e8d29b9742be7267e085c0d8ecbdbe086e6f361787d15db` |
| 3 | `lemma` | [equalizerSieve_eq_top_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/equalizersieve-eq-top-iff.md) | 57 | `result-track:3be0948bee5b8672ad6aad59d49ea21bda06e9e9a43121bcaa8b997df20f258d` |
| 4 | `class` | [IsLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-source-edition-2.md) | 71 | `declaration-track:9d96d2404264ebbcf05d601571147e113a67b424cea3579b9b3dc61a6785961a` |
| 5 | `lemma` | [equalizerSieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/equalizersieve-mem.md) | 75 | `result-track:6faa7a255fb76c70abb97e2955490432b458525b90123ea056f9364056cf3176` |
| 6 | `lemma` | [isLocallyInjective_of_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-of-injective.md) | 80 | `result-track:bd6df423aa20dd052ac6abc4b46f93c640829c1af11a88b4a1106dc61b827591` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:e3891c43ba46486f144c37c9720d0108f545a5a666d719d495406168eec715cd` |
| 8 | `instance` | [isLocallyInjective_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-forget-source-edition-2.md) | 94 | `declaration-track:be70d88e8b2bf6900dc8be1f392bb6e76221235e85669249d53e888d4e5f8403` |
| 9 | `lemma` | [isLocallyInjective_forget_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-forget-iff.md) | 98 | `result-track:3b573234d68f73fe354a3830d90d0501ada0108bc363102f8cfb1c4c536ad011` |
| 10 | `lemma` | [isLocallyInjective_iff_equalizerSieve_mem_imp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-iff-equalizersieve-mem-imp.md) | 106 | `result-track:abc5bda535e598a6b7fee4d6bf42f45257f0fe19176af39c738a3535c488ab32` |
| 11 | `lemma` | [equalizerSieve_mem_of_equalizerSieve_app_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/equalizersieve-mem-of-equalizersieve-app-mem.md) | 125 | `result-track:3c1db290073eb37c653a94aa30fa3b7f6cf476e6d8081071361581e11dc1a3f9` |
| 12 | `instance` | [isLocallyInjective_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-comp.md) | 131 | `declaration-track:fe6bf0b770dcfe2af5179bbbb95568e25476aae6458ce1c9e0b6a7b07bb20b6d` |
| 13 | `lemma` | [isLocallyInjective_of_isLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-of-islocallyinjective.md) | 137 | `result-track:b7416317d649d3692c63e35a9a266c01bb2a32c22f17cbc4a997e7897ad9bd69` |
| 14 | `lemma` | [isLocallyInjective_of_isLocallyInjective_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-of-islocallyinjective-fac.md) | 143 | `result-track:3c77237556a15579352044258d00a84905658f09dcf69bb68edb9db958c98d8e` |
| 15 | `lemma` | [isLocallyInjective_iff_of_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-iff-of-fac.md) | 148 | `result-track:91d739be4602023bd560849fea18c5bc4bbb180a119ed6dca7a3a270e6a083df` |
| 16 | `lemma` | [isLocallyInjective_comp_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-comp-iff.md) | 159 | `result-track:1f8f35667aac0da49bc11e80d54db6961a3a827599809433e7c55935e834d900` |
| 17 | `lemma` | [isLocallyInjective_iff_injective_of_separated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-iff-injective-of-separated.md) | 163 | `result-track:060225f741645a25927718f22c93c677cec707e499fe99e897b169d16522672a` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/instance-source-edition-2.md) | 171 | `declaration-track:c5305bed4af91d26c4460e0348f0f78fbf6443fc5920b0a84d069dc334240dc5` |
| 19 | `instance` | [isLocallyInjective_toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-toplus.md) | 181 | `declaration-track:63103f1c7c19a1ad1ed7c8a804f035994b618b2a30df0442d4033c88664a0d19` |
| 20 | `instance` | [isLocallyInjective_toSheafify](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-tosheafify-source-edition-2.md) | 189 | `declaration-track:5f11efa710fb27b801d1cbd6649027abad43c4b0ebce6b569c0cf20aafc68791` |
| 21 | `instance` | [isLocallyInjective_toSheafify'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-tosheafify.md) | 195 | `declaration-track:1335c18e146b92d775727c6a9f737d13a2db31404d0df293e1a0b77ac031d404` |
| 22 | `abbrev` | [IsLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective.md) | 217 | `declaration-track:61ab4a34678def33a1e6db08a070b604ed092cdaa70a051611ab8c57bd19d725` |
| 23 | `lemma` | [isLocallyInjective_sheafToPresheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-sheaftopresheaf-map-iff.md) | 219 | `result-track:6c52286d2be9b0a5d5f810d366f70b7aa47b4a0813e5bcfa546769fcfcb11610` |
| 24 | `instance` | [isLocallyInjective_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-of-iso.md) | 222 | `declaration-track:29d6815e5fc5720c9faa3d35abbecc761882f099af8d1aec08b94ff722979449` |
| 25 | `lemma` | [mono_of_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/mono-of-injective.md) | 226 | `result-track:110beac50cf8469f36e6eb8f8a6d87e7b1801606607128cc994ed7b2c6982efd` |
| 26 | `instance` | [isLocallyInjective_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-forget.md) | 233 | `declaration-track:b9fe2bbc79f0c25dd16ce23a80654d2a22fd246ec59df96b7d9f65cc34329e37` |
| 27 | `lemma` | [isLocallyInjective_iff_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/islocallyinjective-iff-injective.md) | 237 | `result-track:82b69ac2ff15314469a76b83ee30fb6bad9969e617ff22ee65e14cc8749122ae` |
| 28 | `lemma` | [mono_of_isLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/mono-of-islocallyinjective.md) | 244 | `result-track:1c8df0bb4329fd7e88812dfce718652982603dd577a0c0eb53c1440633176b53` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyInjectivePublic.lean/declarations/instance.md) | 250 | `declaration-track:b3cb4c854718b931692b1ff08bf9fb200b37c6b2b84121a998057f03bab4e39f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a176e9b67dbb2dba32fb2c40f5743f5b3c69639040ff9e0fd100aa7d42448d7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantcef3deebb285b45abae9be3a35a464cfd1ff6bbc3e974c9ea4bfcf306a4e0728.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
