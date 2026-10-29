# Verification target: Perm Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9089d75f89716e574c300bf8d9d6ae80c3d7901e",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9089d75f89716e574c300bf8d9d6ae80c3d7901e`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Iterate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [permGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/permgroup.md) | 36 | `declaration-track:696a5ffcdfdca44db33a3bf2135606681451debf219f3b3d882836ed6f770eb3` |
| 2 | `theorem` | [default_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/default-eq.md) | 47 | `result-track:a3a65403be4d4dae922909c7d3c6ba918bcab46b8821ac82fb889246ce562d1b` |
| 3 | `def` | [equivUnitsEnd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/equivunitsend.md) | 54 | `declaration-track:a6138966279a2ea72854c640d4956210d208e9fbe7f06eed719fb723057f63b5` |
| 4 | `def` | [Perm Basic Namespaced Source Edition1](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/tohomperm.md) | 69 | `declaration-track:9ecdee6dd7839fa74860e55ec55b7cf1b28233a82f5b9d957cd28eee17f6425b` |
| 5 | `theorem` | [mul_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-apply.md) | 75 | `result-track:54ac32333096c9ad83bdaa7c4dfd584b09b09d6e4d1f942e38ba2a6104023992` |
| 6 | `theorem` | [one_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/one-apply.md) | 79 | `result-track:17599d65869365805a5e985b5da5cbf9ecf088b40ca024d0588fc10b42be8864` |
| 7 | `theorem` | [inv_apply_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-apply-self.md) | 84 | `result-track:0b65fe9711dce648c29097d0e0767b4a5e82d6fbe09b0f6fd02f13c1ef6ba048` |
| 8 | `theorem` | [apply_inv_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/apply-inv-self.md) | 89 | `result-track:f88cfddaf52e8001742659aebdbe98b169c0e31355b8322b44dd65eb51cd6f42` |
| 9 | `theorem` | [one_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/one-def.md) | 93 | `result-track:378717e2940b2b795aefbd93423dc8e968c1fbd326c21a24b9ab0e1cb6f206e8` |
| 10 | `theorem` | [mul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-def.md) | 97 | `result-track:a6f4d86c28601b474dceaaafaa077002897eb257237cb15270ec7bb56be19b15` |
| 11 | `theorem` | [inv_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-def.md) | 101 | `result-track:b4b4ca277e62ce1483c2f53ab0912700cff2ca4c3d33068b7c2d04fc295a37a9` |
| 12 | `lemma` | [coe_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/coe-one.md) | 105 | `result-track:6e735eaf9a2e1b573b6501e28ec2c3bca3ec8884112a75911cd006cf9260e3fe` |
| 13 | `lemma` | [coe_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/coe-mul.md) | 108 | `result-track:d1efafe843b510b3505ac4c7e7f466c8891c325576f04f4ee2a36bf16040ad60` |
| 14 | `lemma` | [coe_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/coe-pow.md) | 111 | `result-track:547b0051a407a4ed329e03aa1feefee5925ae0cb3ed77ccd8e3d7ff313e2922d` |
| 15 | `lemma` | [iterate_eq_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/iterate-eq-pow.md) | 115 | `result-track:8d313678456e62a46e0d54e3285ca43e6aa13d9de9a39f34346ddcbe6686f3e1` |
| 16 | `theorem` | [eq_inv_iff_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/eq-inv-iff-eq.md) | 118 | `result-track:bf1156bbafe24b0a1bbc8608b5ed897960852ea114e69f6deea616e334ef52ce` |
| 17 | `theorem` | [inv_eq_iff_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-eq-iff-eq.md) | 122 | `result-track:b28c0c3fe4197f264943d99940da595c2da5eb0ea6ab37ff29593d620cf01632` |
| 18 | `theorem` | [zpow_apply_comm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-apply-comm.md) | 126 | `result-track:fdd26b5c521bb62369b4dee2145cc664f58049e95d8e0e9ed478a9f7005dc03c` |
| 19 | `lemma` | [image_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/image-inv.md) | 131 | `result-track:151265c1a4338687bd6d19e4caddd9319021ad0b7a189b57b528b580882f8692` |
| 20 | `lemma` | [preimage_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/preimage-inv.md) | 134 | `result-track:08a2f8b45335dce47935073182970730f757b720efafc590b918e08f299aaf4f` |
| 21 | `theorem` | [trans_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/trans-one.md) | 145 | `result-track:8c5d0f326956054a33d7f5ab138a1c2f2d20bc3bab071fed5be826d2080ab183` |
| 22 | `theorem` | [mul_refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-refl.md) | 150 | `result-track:3877dd35a3cc2645dcc16988ef7f0a4c2137913a395bcdf739bca9d729e567e6` |
| 23 | `theorem` | [one_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/one-symm.md) | 155 | `result-track:68cf4cc69a175d977f5e2f7d999f7cab07b6dae27248e513a6e2a03f2bc349fa` |
| 24 | `theorem` | [refl_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/refl-inv.md) | 160 | `result-track:aeb11886c6b6c7f926fd0ac6b9ead88458f644e8b108c157d0b1029e9f9d11de` |
| 25 | `theorem` | [one_trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/one-trans.md) | 165 | `result-track:fa972d865c3945e24230c7ea714e651e14b4da5edc933010a6aa6256bcf2f8d1` |
| 26 | `theorem` | [refl_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/refl-mul.md) | 170 | `result-track:776c8fc8c55ad854fc40eb7f810d021c376c7e69b5b558f4f9195ef5a262ac24` |
| 27 | `theorem` | [inv_trans_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-trans-self.md) | 175 | `result-track:39beeb04039555b4fdd119e0aecba2e4ca503bb9b665d803b7ec922c9858f638` |
| 28 | `theorem` | [mul_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-symm.md) | 180 | `result-track:a2869c72cb47c84751c083001c6bfe44784e9368d1f4ca1f1e083ec209399133` |
| 29 | `theorem` | [self_trans_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/self-trans-inv.md) | 185 | `result-track:46cbabd76486a0cb4f376f1b78275ecb2054286f9cd1e8a43943705b1562155b` |
| 30 | `theorem` | [symm_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/symm-mul.md) | 190 | `result-track:d5d18075374dfd337925722fb4765f05da40bf31cec7c254d7ea0ac7831c6c9e` |
| 31 | `theorem` | [sumCongr_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongr-mul.md) | 198 | `result-track:4b88d386b176130484eb544e8227f46ad2f9c46fe8a55cea3a7e51e13d937ade` |
| 32 | `theorem` | [sumCongr_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongr-inv.md) | 204 | `result-track:d0d4aa5af0c79689a06386fecb620aa429c052a7b86a0107f24b9a9867509523` |
| 33 | `theorem` | [sumCongr_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongr-one.md) | 210 | `result-track:7b03c735c7f074ec99ae43a38267b197b1faabe9e0b8d204015098f68f293bc2` |
| 34 | `def` | [sumCongrHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongrhom.md) | 219 | `declaration-track:fb3119686c208334d23c7b6b0f28918ff6eaaba4598b341e658b0c8f4008abb3` |
| 35 | `theorem` | [sumCongrHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongrhom-injective.md) | 226 | `result-track:349de1cc2e78487302a4e1a3132b8f5cd5921fb6f0e382137daa0b0cc69d7999` |
| 36 | `theorem` | [sumCongr_swap_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongr-swap-one.md) | 235 | `result-track:9891283bbbcc386cd20da054f8ce35315b7bb314cbc5517e1bdca5cd579e0808` |
| 37 | `theorem` | [sumCongr_one_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sumcongr-one-swap.md) | 241 | `result-track:6c6e43140ac2ad89a57e208e271920e7053f4627cd70d21ca4b1ca2ba0262a4e` |
| 38 | `theorem` | [sigmaCongrRight_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sigmacongrright-mul.md) | 250 | `result-track:12d32cb5dace3921db73d412f7c25e75963e6d25adbc0626bbe0940d9074f576` |
| 39 | `theorem` | [sigmaCongrRight_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sigmacongrright-inv.md) | 256 | `result-track:c64a21c828ddb1c1571ed91600292099acb5d86f04719c0a1d7efa5922d3f54e` |
| 40 | `theorem` | [sigmaCongrRight_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sigmacongrright-one.md) | 262 | `result-track:f927f43920b45a53a5024916bce7a9fb5eb9e56157c036a73cbec4512494b373` |
| 41 | `def` | [sigmaCongrRightHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sigmacongrrighthom.md) | 272 | `declaration-track:d96331c77aa54aa1e2386564f117ebfc4ac5306b6f7418e2ca23785c73deae69` |
| 42 | `theorem` | [sigmaCongrRightHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/sigmacongrrighthom-injective.md) | 279 | `result-track:9215cb5fd5e5c763e91053035cec1713513b4026806ee9060657ddb9ac7f5607` |
| 43 | `def` | [subtypeCongrHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypecongrhom.md) | 288 | `declaration-track:18d2f4c1c03e7b7c7c0cf78e7fe4b781f640e9ada6e274111ccbc5ea67c2488a` |
| 44 | `theorem` | [subtypeCongrHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypecongrhom-injective.md) | 296 | `result-track:2fdfa9ee0e158eaa561e1c6a2488e943cf557b65100c18bd865c189c4bafc08d` |
| 45 | `theorem` | [permCongr_eq_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/permcongr-eq-mul.md) | 306 | `result-track:7992ba87b974f04a10589f8e49ee4da3f895c6640e1a43a967ca53904f45e14c` |
| 46 | `theorem` | [extendDomain_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-one.md) | 318 | `result-track:85ab36283a72f8e42d9034bf508c781ad65951e16cf8cfbe19faa71a9f2f50d9` |
| 47 | `theorem` | [extendDomain_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-inv.md) | 323 | `result-track:44bfb8167162f12df5e0810300a27dabb88fb9b408976365c6f7b3b952710b17` |
| 48 | `theorem` | [extendDomain_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-mul.md) | 328 | `result-track:aa32300109ac8f4844c2ecc425b34aa73ef7e45fc5c6e1b7c860cba757482649` |
| 49 | `def` | [extendDomainHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomainhom.md) | 335 | `declaration-track:5550f9b5880f4f05a6995e08ad75f1db55d515d5d69fbce944c31b4e0a37dda2` |
| 50 | `theorem` | [extendDomainHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomainhom-injective.md) | 342 | `result-track:256dcef028062e633db66bf137bb672605a467a23c6d1e625201031d1d71e114` |
| 51 | `theorem` | [extendDomain_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-eq-one-iff.md) | 349 | `result-track:633c0464d6c4bbb30d708483b4333269cc82c765f70322c4961fa0c0938650a9` |
| 52 | `lemma` | [extendDomain_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-pow.md) | 354 | `result-track:977abfaab62ebda71124b3f339633a6b51f9f4ed4525c561bbac30bf69ab36d3` |
| 53 | `lemma` | [extendDomain_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/extenddomain-zpow.md) | 358 | `result-track:f6fa6e8b5cde877f9dcf4cfe1bd3dd0f0659b8077d84dda57ca3fb0a332f9770` |
| 54 | `def` | [subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm.md) | 369 | `declaration-track:5d6bc10849250d89938ec120e924a633cd09d24edfb9cd0bc742ddbbe63f8f12` |
| 55 | `theorem` | [subtypePerm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-apply.md) | 377 | `result-track:3f0192e331a864c8a70557994a1c7c1e116339c36788cebe668753d423274abb` |
| 56 | `theorem` | [subtypePerm_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-one.md) | 383 | `result-track:97dfe47c6324acf941500babfb851b36003dbfe57875a1e1fe1023c96ae4f407` |
| 57 | `theorem` | [subtypePerm_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-mul.md) | 388 | `result-track:9d32b7f16a411d559ad2a35aba4f49811db23b87ae26ddada623d0a336f7b406` |
| 58 | `theorem` | [inv_aux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-aux.md) | 394 | `result-track:84033cebb2bd5e83effa3d2f86fa351c91d1faaec91376162412942c5cba2bf0` |
| 59 | `theorem` | [subtypePerm_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-inv.md) | 398 | `result-track:2f7e56da84ec29432dac8f18f85b0fa78661c8aa3c280da281cc85d3316a638b` |
| 60 | `theorem` | [inv_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-subtypeperm.md) | 405 | `result-track:180230d02d09e63f577c6b1bae961bb958671aa9fbe6298c5e9819be61bd5bc6` |
| 61 | `theorem` | [pow_aux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/pow-aux.md) | 410 | `result-track:e649ab6f6375494767fbbd92af53f765d00f0f3318c2637fc5ea68305ba0f903` |
| 62 | `theorem` | [subtypePerm_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-pow.md) | 415 | `result-track:b43d9e485a5fcc793972252e68e4ccb9d6f7aca51db90b104f074582ad89406c` |
| 63 | `theorem` | [zpow_aux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-aux.md) | 422 | `result-track:55b47d91cb177ebbb51946a60cd36cc680168139c8de23630681c07d4cd82459` |
| 64 | `theorem` | [subtypePerm_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-zpow.md) | 429 | `result-track:a0b6d5a60409c21aef746080fc3fa96672ef79dfb975aea912a8b775930ad61e` |
| 65 | `def` | [ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/ofsubtype.md) | 440 | `declaration-track:92934fede40eac576d9a1b91a734ef1872e00aa2f19154f169dc22d47b794c0d` |
| 66 | `theorem` | [ofSubtype_subtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/ofsubtype-subtypeperm.md) | 446 | `result-track:9c15882ca5780f66eaa1fd1f82b7309ef97d32205a7d3bab8c99cbf98fd9d26a` |
| 67 | `theorem` | [ofSubtype_apply_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/ofsubtype-apply-of-mem.md) | 458 | `result-track:eb2937af0d4ec337fadc37455d7dea50187fe19c4fe6c3907748ddc78e18d482` |
| 68 | `theorem` | [ofSubtype_apply_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/ofsubtype-apply-coe.md) | 463 | `result-track:f11372d388d1992a1b2fab716645d06b6901b090534e783b5bf327f044d00ff3` |
| 69 | `theorem` | [ofSubtype_apply_of_not_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/ofsubtype-apply-of-not-mem.md) | 467 | `result-track:93b8582c296c40e3e4d4643b327c32f1254886fc0968dbe1b6dba3fb013246f9` |
| 70 | `theorem` | [mem_iff_ofSubtype_apply_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mem-iff-ofsubtype-apply-mem.md) | 471 | `result-track:93780b4b66b6ecacca50d0f97cfa6c75ab2e787fb2e3eba0c93c2be248911072` |
| 71 | `theorem` | [subtypePerm_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeperm-ofsubtype.md) | 479 | `result-track:c223ceacc278f39a55a2be169787a438b25cecdc03c2be0af9fe5c141319974b` |
| 72 | `def` | [subtypeEquivSubtypePerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeequivsubtypeperm.md) | 487 | `declaration-track:f741b60cb87309cc259f6eb1e4da6473f1db8dac1c995b8c9670ba4b33d181fb` |
| 73 | `theorem` | [subtypeEquivSubtypePerm_apply_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeequivsubtypeperm-apply-of-mem.md) | 501 | `result-track:2f12c441c82f5a0d9100eb1fe03e0fae5434811e08fb306c8607de60f094da29` |
| 74 | `theorem` | [subtypeEquivSubtypePerm_apply_of_not_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/subtypeequivsubtypeperm-apply-of-not-mem.md) | 507 | `result-track:a743cfebc1ff8d64b155b3a21207ea1762f7cf606b78549d9fd8ebd8de7f985a` |
| 75 | `theorem` | [swap_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-inv.md) | 522 | `result-track:e88aaa1c0a4dd4c0c33376a8f7858d086e87a059bcf24b32d6017ed4e2842774` |
| 76 | `theorem` | [swap_mul_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-self.md) | 527 | `result-track:61ebb0a0aa8f7541702a240be0d41c9ee0df49030acfeb632c58337706bf75de` |
| 77 | `theorem` | [swap_mul_eq_mul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-eq-mul-swap.md) | 531 | `result-track:c69ea0dd761b9ee45bdf29c99dd84ee7be396bc99e22edd4e5710a78a3d8bf7e` |
| 78 | `theorem` | [mul_swap_eq_swap_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-swap-eq-swap-mul.md) | 538 | `result-track:af32fc3dd5c8f91c86d411a525955646885ba91a3ad0a20bed24f4c076f37cfb` |
| 79 | `theorem` | [swap_apply_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-apply-apply.md) | 542 | `result-track:58cef058403235a64b9fbdedff16608b17264ca0a7438407fb1467c7b5f1b7ce` |
| 80 | `theorem` | [swap_mul_self_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-self-mul.md) | 551 | `result-track:35b98d03a49e7e3630b41aed9759ab99775d21a029f3c62e36c291cb4908799d` |
| 81 | `theorem` | [mul_swap_mul_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-swap-mul-self.md) | 560 | `result-track:1887f9a48af6e54989bcdfa0694959c8053b7d05d61ef68bd0bbd007a3f65e36` |
| 82 | `theorem` | [swap_mul_involutive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-involutive.md) | 566 | `result-track:369344cfee0c283d01cddfe765900d1d5dd28c2fe2a46b115b7408604e3f4fa0` |
| 83 | `theorem` | [mul_swap_involutive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-swap-involutive.md) | 572 | `result-track:9952f3725bb9bfb4de99b8a78613b14f1b6f77a813cd0bad02909a1c56c2c612` |
| 84 | `theorem` | [swap_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-eq-one-iff.md) | 577 | `result-track:083f87162938d65696e4e81b428a41d8526897d75a46f0a2e9426220c59b7cd9` |
| 85 | `theorem` | [swap_mul_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-eq-iff.md) | 581 | `result-track:22f02ff424950cd5a66956ee7f61247e5bd1843c14d20eed1194c053bd383a43` |
| 86 | `theorem` | [mul_swap_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mul-swap-eq-iff.md) | 590 | `result-track:0a48f2ba0cfe05bebc3301c9063dbf4104b2d1bc9f7f0e334c1aa9412b601d88` |
| 87 | `theorem` | [swap_mul_swap_mul_swap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/swap-mul-swap-mul-swap.md) | 599 | `result-track:b07799117a704f4cdc703524c3b3a56b9a41ad6f853843cdc17db202a6941130` |
| 88 | `lemma` | [addLeft_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/addleft-zero.md) | 612 | `result-track:18803558f698e2b81a33e146a466c397385dc3aca13cfb3047aa06123357f954` |
| 89 | `lemma` | [addRight_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/addright-zero.md) | 615 | `result-track:aece395f7017abaa5e7e9259ba629b2ab384c12133571d7022dd92b38c73c81b` |
| 90 | `lemma` | [addLeft_add](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/addleft-add.md) | 618 | `result-track:0ff7765934ed40c6b3b769cdf22fe5dd65dc83ce1d24b115325e04305fccceaa` |
| 91 | `lemma` | [addRight_add](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/addright-add.md) | 622 | `result-track:baa1b055183f376a57eba11d6b5d2857fdc4260f9c1654d83ef0490fe7048d6b` |
| 92 | `lemma` | [inv_addLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-addleft.md) | 626 | `result-track:55468dc7e16edb5f1069444a670c031a6f0bd42b6228e781b6ad4531cda90697` |
| 93 | `lemma` | [inv_addRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-addright.md) | 629 | `result-track:d25dfb3ed1aa266eab2fda99d08215110823118ccce72b42bcc691c920a52b58` |
| 94 | `lemma` | [pow_addLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/pow-addleft.md) | 632 | `result-track:a406f0db5cd35f05e3a3e1b3261a64c173a4eca4f265cb48fa40a4d6ac0416ec` |
| 95 | `lemma` | [pow_addRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/pow-addright.md) | 636 | `result-track:006f120f4000634b29b888e042449d7199aba7734f42fb8f291970fdaa658c98` |
| 96 | `lemma` | [zpow_addLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-addleft.md) | 640 | `result-track:917361f23058aad5dab0fa2663cbda89a042ee293d989b46e9ccb3e8e16c8ec7` |
| 97 | `lemma` | [zpow_addRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-addright.md) | 644 | `result-track:bd62e86910a102e8f3305c2ebacb5edc592524871b1fec08b2aba1c4b19f09ef` |
| 98 | `lemma` | [mulLeft_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mulleft-one.md) | 655 | `result-track:06a5d60cf689bffda6ae72d33afbbc24a4ddd87fcf189cb15aad43bf048444e2` |
| 99 | `lemma` | [mulRight_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mulright-one.md) | 659 | `result-track:ce05c74390e25fef9be23d37a9495b88e88ea646187edebeed1bc142fffd3f3a` |
| 100 | `lemma` | [mulLeft_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mulleft-mul.md) | 663 | `result-track:59ae4522038a76eb664922a36a76d07234408895422f48379b84ffbf00526719` |
| 101 | `lemma` | [mulRight_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mulright-mul.md) | 668 | `result-track:55d9149ca64d6ec00de479202e50a2e5dcbe5ebbdaa73bdf29473eedbfb4e44d` |
| 102 | `lemma` | [inv_mulLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-mulleft.md) | 673 | `result-track:d9fcf0eb6180ae949b91e3abef7ee95ad29a8a2fbc32c0462034b7f96a5cf68c` |
| 103 | `lemma` | [inv_mulRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/inv-mulright.md) | 677 | `result-track:bb4ab23eb0c5f5d748e37ec1583799fb0985762f922681828a90c92477523668` |
| 104 | `lemma` | [pow_mulLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/pow-mulleft.md) | 681 | `result-track:143d254aa29f4ae4dbd431f81009826a52b23a9cf8798e1ffb7802a59b5c3e76` |
| 105 | `lemma` | [pow_mulRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/pow-mulright.md) | 686 | `result-track:fe6fd08f2270b5f4b6f88095101600e032ff4b4b0d91b6c8a99a8451147cbaae` |
| 106 | `lemma` | [zpow_mulLeft](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-mulleft.md) | 691 | `result-track:6c659020ce310766739aa25b9c77c1d31a9c668871f1040809ef7f107079ea86` |
| 107 | `lemma` | [zpow_mulRight](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/zpow-mulright.md) | 696 | `result-track:b7e06f7b0b645368462970ee824a0d4a26f54d6ad65460ecef3df0c634b17fe3` |
| 108 | `lemma` | [BijOn.perm_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/bijon-perm-inv.md) | 709 | `result-track:85e83c9a1114337605b567a5fdcf8add2281372657b767559195dc26c1edff50` |
| 109 | `lemma` | [MapsTo.perm_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/mapsto-perm-pow.md) | 712 | `result-track:abeccae9d3599953d553ff8992330ffd09611fff1f9605c76df5f910a8e8320f` |
| 110 | `lemma` | [SurjOn.perm_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/surjon-perm-pow.md) | 715 | `result-track:401a8845aa01b1de29f84c0f92a8ccb85f572e23658b403eefd4c047ca576d2a` |
| 111 | `lemma` | [BijOn.perm_pow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/bijon-perm-pow.md) | 718 | `result-track:fae33a4eb93d3d5ee941349cf66bc92e007a79e6ba9266354e4c717123e00a23` |
| 112 | `lemma` | [BijOn.perm_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermBasicNamespacedSourceEdition1.lean/declarations/bijon-perm-zpow.md) | 722 | `result-track:660bbabc6b5e8fd3ebb6282a798a5deaa6714f827f3eae838296e8c24141dc90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4889fc17393ecb1db012d95a507217f016f63b22bcb932d3462b06f0501d9830 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
