# Verification target: Coherent Iso Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bbe76f2c07b0241387d0431a454e3d2c6ab0acf",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Varianta75ff68f4d37343ee875fc3893b42b5e5c752caa58741962e4a5bb6ab56f3809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bbe76f2c07b0241387d0431a454e3d2c6ab0acf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Varianta75ff68f4d37343ee875fc3893b42b5e5c752caa58741962e4a5bb6ab56f3809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Varianta75ff68f4d37343ee875fc3893b42b5e5c752caa58741962e4a5bb6ab56f3809.lean.json)

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
| 1 | `abbrev` | [WalkingIso](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/walkingiso.md) | 47 | `declaration-track:e94adad66e463a7b49f216b3d489413503777d6ee606bf7f336a6e8ffc5b122b` |
| 2 | `def` | [equivBool](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/equivbool.md) | 52 | `declaration-track:f8f4caf1492162c922e3e58405e28e7d10835cb88b6c8e3ca5a93272f2044bdd` |
| 3 | `def` | [zero](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/zero.md) | 59 | `declaration-track:75faf5cb5de96b726f8ca6fbbc2bc02fd9993c173dde8d8096af73f7c0f60798` |
| 4 | `def` | [one](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/one.md) | 62 | `declaration-track:bd3bb63db655cbe81c1dd77cad660c9316b9c11b4bb6a7b828f271fafebd7ff4` |
| 5 | `def` | [iso](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/iso.md) | 65 | `declaration-track:938d6afadfe2bac774f624403ddf4bc4a1455253824c4babd4537130953bb3e8` |
| 6 | `lemma` | [eq_iso_hom](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/eq-iso-hom.md) | 67 | `result-track:aa3aaf9234461265592f67957e5726caae3449a87e9d540f8405859a2d7d3602` |
| 7 | `lemma` | [eq_iso_inv](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/eq-iso-inv.md) | 69 | `result-track:22f20e85994de9145717b7f807ed5eb7772683b855e199398b3aa9307644383a` |
| 8 | `def` | [toIso](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/toiso.md) | 73 | `declaration-track:f72f75bf75e0bac47801239bb744ed8f0a3449b4bdd824a4e0e7cd78e4a5993f` |
| 9 | `def` | [rec](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/rec.md) | 82 | `declaration-track:be142915395e9599ba091faa204783898c2bf5b0a40539f80abe099ee46520bb` |
| 10 | `lemma` | [rec_zero](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/rec-zero.md) | 86 | `result-track:c8fc52ac086fe2e346e55261d1012710eba1c63db589d19701f563a78a2508c8` |
| 11 | `lemma` | [rec_one](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/rec-one.md) | 87 | `result-track:ae86f12b7fd418d53bed80e0d1b3f8a90ed31792e9d927cae0a9e8c973a79a83` |
| 12 | `def` | [fromIso](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso.md) | 94 | `declaration-track:8930371b73bd5c8a9ff74db4fd9df3844f7054cdf796a5934dff8b5b12fd81ea` |
| 13 | `lemma` | [fromIso_zero](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-zero.md) | 105 | `result-track:63a7936e42fed9da5fb03981fcdfba1dddadf3c0f206fde2ecbd27026353a218` |
| 14 | `lemma` | [fromIso_one](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-one.md) | 108 | `result-track:df323d98e82c95ab25568699e9afb698f0db9ed1d8845a1b5ea1f161622d04ae` |
| 15 | `lemma` | [fromIso_map_zero_zero](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-map-zero-zero.md) | 111 | `result-track:57c1fe531365550822bd205a07a3f3949fb3e67e9c30af9ba9b4c571245fdd47` |
| 16 | `lemma` | [fromIso_hom](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-hom.md) | 114 | `result-track:8e3f0c704073e5e5b59524aad44cf6c01a6bf20b7fbe4c6f6ce580836794c9f7` |
| 17 | `lemma` | [fromIso_inv](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-inv.md) | 117 | `result-track:b2105a2280a74d552c0ebe820d305e300ef7e0ccd275957c6aa179cc8d30b03c` |
| 18 | `lemma` | [fromIso_map_one_one](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/fromiso-map-one-one.md) | 120 | `result-track:acd30f57b4493b02f3fbe8667477999a7100eb914a36c1d67f85d064407705ce` |
| 19 | `def` | [equiv](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/equiv.md) | 127 | `declaration-track:57db2b07c663d9cc032298cb15454081c1acd97e18408c1a7f31f7d2ed01f5ac` |
| 20 | `abbrev` | [coherentIso](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/coherentiso.md) | 150 | `declaration-track:ec2ce0d99a583f0ad0942cac26fd374d0c08910959c8bf961a5292c53b534a5a` |
| 21 | `def` | [x₀](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/x-source-edition-2.md) | 155 | `declaration-track:fedbdf244fa6e0959a67ee6a3fb72eb09c5c90cfa30bff0005d53913f8258b93` |
| 22 | `def` | [x₁](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/x.md) | 159 | `declaration-track:da06917902b171e04822ae918ecd8991537508893134dcc94c4da334aeb21b4f` |
| 23 | `def` | [hom](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/hom.md) | 163 | `declaration-track:a3a8ad854ecad391714e15b28e350253b2c1137fc9524a7b83d3a344b6c5ae97` |
| 24 | `def` | [inv](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/inv.md) | 169 | `declaration-track:10b8897da01dfd850d1c11a1c2c808909cefb0b350696b6a6a50487bb41fb4cb` |
| 25 | `def` | [homInvId](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/hominvid.md) | 175 | `declaration-track:40316c4eca4f592bfbccd16260165d895e02f8c4d5b294013e49bf5656154494` |
| 26 | `def` | [invHomId](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/invhomid.md) | 182 | `declaration-track:7d216a6d7f0e5e21adfee326559123b85b8adf1a3a3aa8529dbdace03a7f7f03` |
| 27 | `def` | [invStructHom](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/invstructhom.md) | 190 | `declaration-track:eaf0ff57c9ec697ea5e74846abe7c83364f9f38a64337a8d293656c78d19caf8` |
| 28 | `abbrev` | [invStructOfEqMapHom](../../../../AlgebraicTopology/CoherentIsoNamespacedPublic.lean/declarations/invstructofeqmaphom.md) | 197 | `declaration-track:146539728b8883dd2c07740f407ecedb44352bb2965ccc4d60fb75dc61d91787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2b8fc2c22b078b505f0e842bb2479291d5eeaaf28511d0a2478f46f9764da05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Varianta75ff68f4d37343ee875fc3893b42b5e5c752caa58741962e4a5bb6ab56f3809.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentIso/Varianta75ff68f4d37343ee875fc3893b42b5e5c752caa58741962e4a5bb6ab56f3809.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
