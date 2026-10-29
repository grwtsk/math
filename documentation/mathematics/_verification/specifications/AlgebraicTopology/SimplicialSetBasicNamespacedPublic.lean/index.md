# Verification target: Simplicial Set Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "417ebae1e6d7240a99b80064fd7535590e8829aa",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6092d74f6fb4af795bdb3ce8249eaa11034d111cf832c0654c9321c3a183177b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `417ebae1e6d7240a99b80064fd7535590e8829aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6092d74f6fb4af795bdb3ce8249eaa11034d111cf832c0654c9321c3a183177b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6092d74f6fb4af795bdb3ce8249eaa11034d111cf832c0654c9321c3a183177b.lean.json)

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
| 1 | `abbrev` | [SSet](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sset.md) | 44 | `declaration-track:39b61ed30d3e2809ef77c1ca44976fdb367a4a5d2671849cb15eae46a8b96060` |
| 2 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/hom-ext-source-edition-2.md) | 50 | `result-track:1f1cf5760bb4095a3a5dd9b455b9075f7e4545f32c8198c0c971d0b0a5dc9f67` |
| 3 | `lemma` | [id_app](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/id-app.md) | 54 | `result-track:77d87cab5603f15bd256c1b24bc57e4ab18257e645f0b78b543c2238306d5ff9` |
| 4 | `lemma` | [comp_app](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-app.md) | 58 | `result-track:57c99e3afdb33af1012141ca270fab7cd5eba2a14f220949f8a05b4bfa4e3a9e` |
| 5 | `def` | [const](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/const.md) | 63 | `declaration-track:8482da452d7df0231024aef7f114ecb53c964dd534d51b04087aa5aaf0732482` |
| 6 | `lemma` | [comp_const](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-const.md) | 72 | `result-track:098f0645bd072d5aec585b9542d5661a6f58311993527b0fb8d096b58d1c3d06` |
| 7 | `lemma` | [const_comp](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/const-comp.md) | 76 | `result-track:6a70d5791fc291f863c56044372806050a8b3023a9980be969b6e2fee0d2e0d7` |
| 8 | `def` | [uliftFunctor](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/uliftfunctor.md) | 81 | `declaration-track:30e456318cf9711c55adff7d207f4e05821114167b1c827154f3f712637576a9` |
| 9 | `abbrev` | [evaluation](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/evaluation.md) | 86 | `declaration-track:c6a3078e145099c4582124f2ce5020e1bdfe12d76e680eb43e3a6bc8263b42fc` |
| 10 | `abbrev` | [Truncated](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/truncated.md) | 90 | `declaration-track:96535e33e0cca50f3c17a304b14c968aeea22caec45351db340664ae5feaf43c` |
| 11 | `def` | [uliftFunctor](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/uliftfunctor-source-edition-2.md) | 96 | `declaration-track:3cf77023bac06739d0ae29300791d04ce75305f9aa1f5c63cb8a78e09da8e71b` |
| 12 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/hom-ext.md) | 100 | `result-track:162328b9a6783a9c9d9f0fa6dcbd9e83416b70d91381a27237b13e2a2d2bba70` |
| 13 | `abbrev` | [trunc](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/trunc.md) | 105 | `declaration-track:65b2f55c9cfc3bf17503af1623a7474157019d03e69d1449562597ee0f450de1` |
| 14 | `lemma` | [id_app](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/id-app-source-edition-2.md) | 110 | `result-track:b5481635eda2389ec5595ede3f55b0587fe9b9662651f8d77a93db2c88bc486d` |
| 15 | `lemma` | [comp_app](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-app-source-edition-2.md) | 115 | `result-track:7cdc41cc4ea803157fc077eca53580f593f769b9a7703a6d5ca776b6d0021af2` |
| 16 | `abbrev` | [truncation](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/truncation.md) | 123 | `declaration-track:2b1d7d84fc85829f9f0c8b0cb8b03f0fa9582a8c236436506b399f56a19af86a` |
| 17 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/truncationcomptrunc.md) | 126 | `declaration-track:e1f983d2e2424804af60c1aa4a050235a4691c7cf8a76892d83adc0a05ed9f32` |
| 18 | `abbrev` | [Truncated.sk](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/truncated-sk.md) | 135 | `declaration-track:4fe11d59ece0f6a62e83a1f2b8bc144359a3cc0f2cc652f5f72eb258d5b1fe71` |
| 19 | `abbrev` | [Truncated.cosk](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/truncated-cosk.md) | 139 | `declaration-track:28ccec446dd9cb2d16c9eeca5a9260f12d1a440adc8458d38d580a1ea0492001` |
| 20 | `abbrev` | [sk](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sk.md) | 143 | `declaration-track:0e6cbbbe77389da91c91b8ab0b566221edcda28c1b0478f3dafbc208825ab5ac` |
| 21 | `abbrev` | [cosk](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/cosk.md) | 146 | `declaration-track:7961eead4ebd1d20bd0cb50017a549f1fa544c843b2593971cbabafcdaa88395` |
| 22 | `def` | [skAdj](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/skadj.md) | 153 | `declaration-track:f8ed5c4f1453767e421b55411ebff6e88e945e0dc3f627c333da258f926894a3` |
| 23 | `def` | [coskAdj](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/coskadj.md) | 157 | `declaration-track:1294375aee084fb6dc31da256f1244f232736edbf8b416b38295d29983b45d68` |
| 24 | `instance` | [cosk_reflective](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/cosk-reflective.md) | 162 | `declaration-track:4a4f3806af735d7fb32b8b6335efb1e330425cc703105d2f706b4967e130f52d` |
| 25 | `instance` | [sk_coreflective](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sk-coreflective.md) | 165 | `declaration-track:d9d32e0053d91378eca4dcfbc73d840b2a42dbd821e25b95ce3dfc3b29ec4360` |
| 26 | `def` | [cosk.fullyFaithful](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/cosk-fullyfaithful.md) | 169 | `declaration-track:48a79b4d75b0f50c814bcb5ad6643ecede6e4489746144f01cf06ea0dc0035a4` |
| 27 | `instance` | [cosk.full](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/cosk-full.md) | 173 | `declaration-track:11b200354eef1a5cd07ce5cacab76be2aa634bf3a92d09e6e88036a646d2dfac` |
| 28 | `instance` | [cosk.faithful](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/cosk-faithful.md) | 176 | `declaration-track:7e1b8fb62117adbb919fd25bd01cb39c2cd063edd93dc528209f4254ede60baf` |
| 29 | `instance` | [coskAdj.reflective](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/coskadj-reflective.md) | 179 | `declaration-track:6f300cbeb310d97cb544b7b4eddd969c703e4c1625fc83389573e5a876ac3897` |
| 30 | `def` | [sk.fullyFaithful](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sk-fullyfaithful.md) | 183 | `declaration-track:b49e980bea3466970a9d2a2605006ca5d913142e5532142405de5bbaf770978d` |
| 31 | `instance` | [sk.full](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sk-full.md) | 186 | `declaration-track:1be62f100334ecba08da1ccc251135683dbf007e8b16a7527d07f60ec68f14b6` |
| 32 | `instance` | [sk.faithful](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/sk-faithful.md) | 188 | `declaration-track:e8cacbba0c8ca7afb6a69be07766e275f2ac8eb7ceedb7c7472ad925666055f0` |
| 33 | `instance` | [skAdj.coreflective](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/skadj-coreflective.md) | 191 | `declaration-track:c939020fc2bbba89c5cba1d0ae355275d11ca0343e6b2e7fc1e8e87d16cd17ef` |
| 34 | `abbrev` | [Augmented](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/augmented.md) | 200 | `declaration-track:0532ba20867e154fc021313046165044ffcdb87a128a1a82d2c0d48017e2a2a5` |
| 35 | `lemma` | [δ_comp_δ_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-apply-source-edition-3.md) | 206 | `result-track:4fba397be63af8d6c8de6c43554479fb9968a2da7aa528cda09d89b15c61d085` |
| 36 | `lemma` | [δ_comp_δ'_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-apply-source-edition-2.md) | 209 | `result-track:4b908f7be060bb643845f325fb654b001846c52781dd7053aeb038b615c0ddd3` |
| 37 | `lemma` | [δ_comp_δ''_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-apply.md) | 214 | `result-track:192f7b2b5c7e6fc6b87c6d14b5e5e491b70f5f2a3a3dd9bd24b31107e17ef2e3` |
| 38 | `lemma` | [δ_comp_δ_self_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-self-apply.md) | 219 | `result-track:2bae134d9aa59c0ffc2d35069d6e785d89727d9201be2334e1fb9d36a1fa58bd` |
| 39 | `lemma` | [δ_comp_δ_self'_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-self-apply-source-edition-3.md) | 222 | `result-track:c499c931aa012a41bedd7c12017307b97841f9a4811a6e0e5987bf4b916c91db` |
| 40 | `lemma` | [δ_comp_σ_of_le_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-of-le-apply.md) | 225 | `result-track:87255ba3476f751b3a6ddab8ed4f36a5662b7f1297bb4607bb4b05a10e1ae4da` |
| 41 | `lemma` | [δ_comp_σ_self_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-self-apply-source-edition-4.md) | 230 | `result-track:d8220824389c3dd200f925413c71265ac61d0d6c3f05174d58db023fa7d04206` |
| 42 | `lemma` | [δ_comp_σ_self'_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-self-apply-source-edition-2.md) | 233 | `result-track:7fc6b74f2f345fb5b7a55b22de017fd0298b064fe18bc0f4c0580e9b49649848` |
| 43 | `lemma` | [δ_comp_σ_succ_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-succ-apply-source-edition-2.md) | 237 | `result-track:703aa56828aa214ff4fbce72beee70677e53be126b4f9d7cbc4f65e44e4f148c` |
| 44 | `lemma` | [δ_comp_σ_succ'_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-succ-apply.md) | 240 | `result-track:5c6042403905653ca1e829045771cb9b6495f7f4a505e30d28ed3d7144ae87a6` |
| 45 | `lemma` | [δ_comp_σ_of_gt_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-of-gt-apply-source-edition-2.md) | 243 | `result-track:d8f7002d53468185a9ebd1e2ee07d37614ce6f9ca093db84c5dff8d07b3bd6eb` |
| 46 | `lemma` | [δ_comp_σ_of_gt'_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-of-gt-apply.md) | 247 | `result-track:366caaa9c41828ba56f69798f2f344a2fc441fa7272cc878d8f271ed4812b576` |
| 47 | `lemma` | [σ_comp_σ_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/comp-apply-source-edition-4.md) | 253 | `result-track:f1e804aa3cd088f4e27543d08e75d262f0c54f3f04fcc513d41d7845374a4625` |
| 48 | `lemma` | [δ_naturality_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/naturality-apply-source-edition-2.md) | 260 | `result-track:99421f2c240f242381043410be82ce2719a433ec276aa56075e65b342687f412` |
| 49 | `lemma` | [σ_naturality_apply](../../../../AlgebraicTopology/SimplicialSetBasicNamespacedPublic.lean/declarations/naturality-apply.md) | 265 | `result-track:873a99e63d52164fb36835965d37221e29a0e63834947dcec4795365c0da5739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d16843a05350034bbb78f898fd0703a9686cd0bbc03a1c2f5824d807a8850cc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6092d74f6fb4af795bdb3ce8249eaa11034d111cf832c0654c9321c3a183177b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6092d74f6fb4af795bdb3ce8249eaa11034d111cf832c0654c9321c3a183177b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
