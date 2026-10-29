# Verification target: Injective Ext Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe3fcf463ee553da61c4a922aac4825d508e260b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe3fcf463ee553da61c4a922aac4825d508e260b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/instance.md) | 35 | `declaration-track:4361996927d00ad51baf18d450c55e133286154ebf8577fda90ee06bf4e948a8` |
| 2 | `def` | [extEquivCohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass.md) | 40 | `declaration-track:efc4dbca9342a939dc008611c08d9d829ac3a14e95e9a845552d0f66344e9fd5` |
| 3 | `lemma` | [extEquivCohomologyClass_symm_mk_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-symm-mk-hom.md) | 46 | `result-track:27a357320adf9b8ad02ffda8e2bce7925ed6f46daf0a6d646832d5c0b6364778` |
| 4 | `lemma` | [extEquivCohomologyClass_symm_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-symm-add.md) | 63 | `result-track:ca2eeef3b9cedea519840077c9a88908cd4293e63eac013875fbf2c435f90ec0` |
| 5 | `def` | [extAddEquivCohomologyClass](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extaddequivcohomologyclass.md) | 77 | `declaration-track:c0826df7afe72d5e3f7edfecfe10a180afdc1b3de2bf366d9c281edad5e5dbc0` |
| 6 | `lemma` | [extEquivCohomologyClass_symm_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-symm-sub.md) | 84 | `result-track:354eec14ebdc456a47a46237916974feb5a2105e31bd8ff807d5ef9dff9a506d` |
| 7 | `lemma` | [extEquivCohomologyClass_symm_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-symm-neg.md) | 91 | `result-track:b3c4ab50232eb32bd2cc4a5c52a88641fbb21e26dda25fedef159ff757447ff3` |
| 8 | `lemma` | [extEquivCohomologyClass_symm_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-symm-zero.md) | 98 | `result-track:dda769036fa1b64b70db3d4c31ad9396cae5667dbb0f2dd31d4a741e843b2707` |
| 9 | `lemma` | [extEquivCohomologyClass_add](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-add.md) | 103 | `result-track:088d640d5ef1ccdbd9b7a6bcc88d04700240aec06d31219c663c831c993504ff` |
| 10 | `lemma` | [extEquivCohomologyClass_sub](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-sub.md) | 109 | `result-track:589c4c844139977a321c5a6e5ec91d62a84ea018a462617b171943cafb913167` |
| 11 | `lemma` | [extEquivCohomologyClass_neg](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-neg.md) | 115 | `result-track:b5cadb3312f800e1caf105fdf206a87ace9826dc948cd58778f77dc0a1c6989e` |
| 12 | `lemma` | [extEquivCohomologyClass_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-zero.md) | 122 | `result-track:7ea05bb85b1544a2452032cc77bbba0a89dd000b98b0106dedbf6c2cfc1d75f6` |
| 13 | `def` | [extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk.md) | 129 | `declaration-track:297b93b8e5e35574724b95840e8aacaa89aa02375d881a71b3639313df0a828b` |
| 14 | `lemma` | [extEquivCohomologyClass_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extequivcohomologyclass-extmk.md) | 137 | `result-track:0048b7f227f0305612c78416a507a62f52dc59fa7b377aedf64843fc245686e5` |
| 15 | `lemma` | [add_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/add-extmk.md) | 144 | `result-track:db4bbec7ebbfcea90cd94e3674d69f74421cb39102242c0ff3eb3f2e770730e2` |
| 16 | `lemma` | [sub_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/sub-extmk.md) | 154 | `result-track:ae18072d4f50ad156dbacc64dc48d5420b715411dc8ed3f8cb1333daa5dfc4f1` |
| 17 | `lemma` | [neg_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/neg-extmk.md) | 165 | `result-track:81a405d602c75e1bac9b7c77238f498f8c7b0505f399ab10f3e63694aa34d94d` |
| 18 | `lemma` | [extMk_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk-zero.md) | 175 | `result-track:83f71d1c90b9e33cb2486d2d676870e903a747c545f0e098e31ef458d68a6e5a` |
| 19 | `lemma` | [extMk_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk-hom.md) | 179 | `result-track:84dec90e3eae18757b7363e721b99d4964f61718a9d442668bf8c6d20b587fb9` |
| 20 | `lemma` | [extMk_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk-eq-zero-iff.md) | 192 | `result-track:f8d280b89f0f0c26bda9737d13d9f4e7b8e1ea93d53ee559a38b11520ca95e8e` |
| 21 | `lemma` | [extMk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk-surjective.md) | 206 | `result-track:854b2bbb8929e6e12184e2cfa3e35752a09acbd20173c4579a563ae1bfa242ab` |
| 22 | `lemma` | [mk₀_comp_extMk](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/mk-comp-extmk.md) | 216 | `result-track:0076234624083c90f6261fe0382773cc57d22315a29731303f2d82705cfee0f1` |
| 23 | `lemma` | [extMk_comp_mk₀](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/InjectiveExtPublic.lean/declarations/extmk-comp-mk.md) | 233 | `result-track:77c3f34078338c8438f4f367ffdd005925d95d160e2964ff5da47c32c21d176a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bbbc638e356dc6bb580df8518b8163688555cbd1a1c60b09a1081c5acff6961 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
