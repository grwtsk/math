# Verification target: Add Torsor Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e2b485401e45ee8a40b06d439109bf26973418b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e2b485401e45ee8a40b06d439109bf26973418b`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singleton_vsub_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/singleton-vsub-self.md) | 35 | `result-track:889c625e40bb71bcfc48dde273bf6db7987aa8df196a13f016124a7d00ca598e` |
| 2 | `theorem` | [vsub_left_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-left-cancel.md) | 42 | `result-track:c21a11690d900fbd633b45fb34349d747ff2a9f239101dbc68a60cecee7acd09` |
| 3 | `theorem` | [vsub_left_cancel_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-left-cancel-iff.md) | 48 | `result-track:a3e534a8ebc85a7007d6bd657e5dcc27ec72ae2413e471a36ccfc0f0c09224f3` |
| 4 | `theorem` | [vsub_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-left-injective.md) | 52 | `result-track:116c0b18836790d1d8f0b14baa466c328373fe77bd301d9f365830039a3a315e` |
| 5 | `theorem` | [vsub_right_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-right-cancel.md) | 57 | `result-track:58bc6ce3e1e5fac8f04ea83750323262899a7ea23db1007017556a9063da3c9a` |
| 6 | `theorem` | [vsub_right_cancel_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-right-cancel-iff.md) | 64 | `result-track:5147be030fab9812075294522e6effb9796e358b8e7554058b9ed52f6a0f1702` |
| 7 | `theorem` | [vsub_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-right-injective.md) | 69 | `result-track:02eaccb729f82ac194948e64a127834d3185ca2040852808589e3742eaf99934` |
| 8 | `theorem` | [vsub_sub_vsub_cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-sub-vsub-cancel-left.md) | 80 | `result-track:38d4fb96896cd69c6501f8a34e9b2fcc0699e5d1a5a804665c342d9f76cf96d6` |
| 9 | `theorem` | [vadd_vsub_vadd_cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vadd-vsub-vadd-cancel-left.md) | 84 | `result-track:d9df71174bc6b70480159f73647cef52aee2c3380c82e5d83d7ca7c57250093f` |
| 10 | `theorem` | [vsub_vadd_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-vadd-comm.md) | 87 | `result-track:64e5b60045a19c7af0ac881e28ef27aefcdef237f6abc57a99b31f21e3a1f78f` |
| 11 | `theorem` | [vadd_eq_vadd_iff_sub_eq_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vadd-eq-vadd-iff-sub-eq-vsub.md) | 91 | `result-track:98c4e2a7bef5023ef0356f8523f1d2c7e3a8dff354d2cf189a1fcd9282aa5c96` |
| 12 | `theorem` | [vsub_sub_vsub_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vsub-sub-vsub-comm.md) | 95 | `result-track:3fa27cfb4f447ba71c4bf25f0931fc1a2042f2dad55a4f03e6852096f666157f` |
| 13 | `lemma` | [vadd_set_vsub_vadd_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/vadd-set-vsub-vadd-set.md) | 100 | `result-track:87a46a91aa42c71d8fe0dac0c28668f1397e596e07d3418b41b63141e11f5143` |
| 14 | `instance` | [instAddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/instaddtorsor-source-edition-2.md) | 111 | `declaration-track:8299ee22ba5c138d259643e4fb093938e0241ad674c90a2e668bebdd285919c1` |
| 15 | `theorem` | [fst_vadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/fst-vadd.md) | 120 | `result-track:ebea959e39de720ee68c77ea9be1ebbd11b5f44097f9af09d7fb09aa4f809ef0` |
| 16 | `theorem` | [snd_vadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/snd-vadd.md) | 124 | `result-track:693269e4c9f1d0caa1428f45979c4c67722494bc70787dbdc4f771f9bbdef8b6` |
| 17 | `theorem` | [mk_vadd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/mk-vadd-mk.md) | 128 | `result-track:749213862548227eaeb6ff8e3fcf217c9339630d07dffeb70e0d1ceafabd5cd6` |
| 18 | `theorem` | [fst_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/fst-vsub.md) | 132 | `result-track:02afd8b14fdd0cdac3574884f2e66be9f23f62d9e545648a8e13f87d51d6e81f` |
| 19 | `theorem` | [snd_vsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/snd-vsub.md) | 136 | `result-track:c82421a016508f75f489415a869ed54c959c5611abb41d1944f7969aa188a729` |
| 20 | `theorem` | [mk_vsub_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/mk-vsub-mk.md) | 140 | `result-track:e94e9e35af0835d18adc188bf3db213a3d5b6afd27b585ac3d0aa6c843fb2b0e` |
| 21 | `instance` | [instAddTorsor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/instaddtorsor.md) | 155 | `declaration-track:6068e1c7092bc7be245e402ed9354f172c3d204210a559d4d394cc2261536f30` |
| 22 | `theorem` | [constVAdd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/constvadd-zero.md) | 170 | `result-track:76be69f3558da8e0ed44aededbd75451f0d668118dd517be21d9cbc9cf34755c` |
| 23 | `theorem` | [constVAdd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/constvadd-add.md) | 176 | `result-track:d7cd3d1f6ab7a4164c8bd154318c4852df2469d8a59ee7321220f48f615a3da3` |
| 24 | `def` | [constVAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/constvaddhom.md) | 180 | `declaration-track:af09b929aaf18cd285d29dd8dfdfe4b928e81194c22d2f77e2a1a1f4f831519f` |
| 25 | `theorem` | [left_vsub_pointReflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/left-vsub-pointreflection.md) | 190 | `result-track:8e79c698fc16ec217bc766875ab262e5bd0e97771e0078f8fcc29a392e41cbfe` |
| 26 | `theorem` | [right_vsub_pointReflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/right-vsub-pointreflection.md) | 194 | `result-track:0defa1ffacd888b949355c5d8cf431e053fb9dada39b9df766ed0b5c5779ae5e` |
| 27 | `theorem` | [pointReflection_fixed_iff_of_injective_two_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/pointreflection-fixed-iff-of-injective-two-nsmul.md) | 199 | `result-track:ccaa0a7f9efcab83331e1a1131b580d37835b53b4af996c0d6667b118ec2c0c3` |
| 28 | `theorem` | [injective_pointReflection_left_of_injective_two_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddTorsorBasicNamespaced.lean/declarations/injective-pointreflection-left-of-injective-two-nsmul.md) | 207 | `result-track:c2afe4c277f2ccd69a93a764abc1ed085056a79efb24d394e3c6caeb8c00abbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=362aea1d0ceb24e076ec8c02313d087f459061fec3d3f9355eab74a09fcc3273 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantb0f5c76a731d3002b328097c0213360598e983b45d3f164f47904bc3f10f88f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
