# Verification target: Shrink Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd26079fab52fda50515c4371df7381a587c400b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Shrink/Variante17f7aad450dc04db070ad1bef206f3800dfaaf80f7a2295f0b485d00c7345ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd26079fab52fda50515c4371df7381a587c400b`.

Source path: `GRWTSK/Algebra/GroupTheory/Shrink/Variante17f7aad450dc04db070ad1bef206f3800dfaaf80f7a2295f0b485d00c7345ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Shrink/Variante17f7aad450dc04db070ad1bef206f3800dfaaf80f7a2295f0b485d00c7345ed.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 30 | `declaration-track:4d8d7a7a47672aceee03f1144548775120273d027defd2e2029498b66a1b0e76` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 31 | `declaration-track:1b332611456f95f08d788a45136d8de4c61471ee6da34c8db9e86498cdbf51af` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 32 | `declaration-track:fd7c151f2d3b33ae44a4d001dad95b75312b1f96190830c3dce68401c1dadcd6` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 33 | `declaration-track:a44864ea1be72fd79ce02cc40ecee84b3afc5f36d19f21468ec54cfbb012f6f1` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 34 | `declaration-track:d81c115d6611034d0a915f10f1516b0bebaa70392a381fb1c78b11ea074e3ffe` |
| 6 | `lemma` | [equivShrink_symm_one](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-symm-one.md) | 39 | `result-track:1aa78c0109025c4d01a5717f773e4a99e9c853894d850f1bff23a826c057e370` |
| 7 | `lemma` | [equivShrink_symm_mul](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-symm-mul.md) | 43 | `result-track:5d8ad98c5c3a20dc38e8ec7e3702f1c7839d8dfb9e18133b16ff5112999c79ff` |
| 8 | `lemma` | [equivShrink_mul](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-mul.md) | 48 | `result-track:a2fdb4ecbf17880d93ad93d3b18449d29811216c5bc97f3a0e71368cb4a03ffb` |
| 9 | `lemma` | [equivShrink_symm_smul](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-symm-smul.md) | 53 | `result-track:ea54ba1cbbecbc647cc1021f8ff99f0f16f1bd2c083bc6083c3f0bd7c53581ae` |
| 10 | `lemma` | [equivShrink_smul](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-smul.md) | 58 | `result-track:759fae0b1376081c156187cd9cf0171af7ef726e33f486b337d4fc7cc424904a` |
| 11 | `lemma` | [equivShrink_symm_div](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-symm-div.md) | 62 | `result-track:0f6429ae096290db91a2834af5b00935db21a41cf245dd3099ae4a8539261eeb` |
| 12 | `lemma` | [equivShrink_div](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-div.md) | 67 | `result-track:918415c5f0c35f60a095bb7a188ed495da5aa9cb7baac0aaf12c7253f5bb88ff` |
| 13 | `lemma` | [equivShrink_symm_inv](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-symm-inv.md) | 72 | `result-track:8f7722c284f82401685d2266dca3e0f8cd867fe7abd944543857562d468797cc` |
| 14 | `lemma` | [equivShrink_inv](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/equivshrink-inv.md) | 77 | `result-track:4e900be9a12b983faa6e2fbe08c6d27b69de234d0e40ba168c3e36cdccf69b35` |
| 15 | `def` | [mulEquiv](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/mulequiv.md) | 84 | `declaration-track:700260ef62d7876235956bf56f416742ea4670b1e8d67b846ba3dbdf46093356` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:663de10af8210e4618371091bbbe3f084b86a5306230d43ea93c2331aab2b7a9` |
| 17 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 90 | `declaration-track:aa271e3bcab55a21fbe24ae8fe84e7c28a693e6d4a61333782c5de12b2a8e16c` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:3e6456f1d46f449b2f77c710e8555f885579e4a330ca7ba41cd5ff116715a01b` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 97 | `declaration-track:bfc5ec93e6258bfd5b44fd7bd7c1875856cfeaf906adf743fbb161427510d4dd` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 101 | `declaration-track:44b3647018127ae07c4d73855e66cf522645a076dbc3e00492d9eee6d2d31645` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 104 | `declaration-track:2cf6d321f7bf5ec083fbf5a77b578296fc2030f24ee759675e4e820993ea33fe` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance.md) | 107 | `declaration-track:0e4806f11c9c06775e0ff71c17bd376c638384b4d00be4bebb70fe38338f45cc` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 110 | `declaration-track:6b630f374ac90b22c7212828f6c488a0ec6fed65445eeecb155beec015bb4d6c` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 113 | `declaration-track:acaa58eccc7bfac6a48c2de14624efd8d01828698b7a1a10b5b167bef2ad8c40` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 116 | `declaration-track:92850dea5afb2fc48db74dad23dbe5f4e2e77bb7435b24c73b2c73d08db70745` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 119 | `declaration-track:d3f0a53810a33b77f192e1d80b13a0f008ee77452436ece60ee6d548963bbfc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c68aeb65445102b53df01f798a9fb84f3c59a1fd04de16360e4326dab36fa425 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Shrink/Variante17f7aad450dc04db070ad1bef206f3800dfaaf80f7a2295f0b485d00c7345ed.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Shrink/Variante17f7aad450dc04db070ad1bef206f3800dfaaf80f7a2295f0b485d00c7345ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
