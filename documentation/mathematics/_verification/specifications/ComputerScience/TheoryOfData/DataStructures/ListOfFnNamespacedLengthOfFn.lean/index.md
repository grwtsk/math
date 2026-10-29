# Verification target: List Of Fn Namespaced Length Of Fn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92f656984a7167ff75e647e75255c070a09ed3d3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant3898c3f3a73f67610d437d3a112d845ae115a5a3f5d6c25bb736fd2ddc0dfc3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92f656984a7167ff75e647e75255c070a09ed3d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant3898c3f3a73f67610d437d3a112d845ae115a5a3f5d6c25bb736fd2ddc0dfc3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant3898c3f3a73f67610d437d3a112d845ae115a5a3f5d6c25bb736fd2ddc0dfc3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Join` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pairwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/length-offn.md) | 49 | `result-track:64def76d4957e09a2eb8879b9a479ff930ebceacab42ffc2236f55192b643936` |
| 2 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/get-offn.md) | 57 | `result-track:95e3640312c11b86db661c00dde614f3c574b758b0ca7f227f24c18c36690862` |
| 3 | `theorem` | [get?_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/get-offn-source-edition-2.md) | 67 | `result-track:a5ddbf2103399e02df0729551eba75fc4751a440691f41fdcfface5892eaa864` |
| 4 | `theorem` | [nthLe_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/nthle-offn.md) | 79 | `result-track:9612c8618a7de6ab26263ebf9f9021fde6c3e19fdff24f07df3ecdc70639ec25` |
| 5 | `theorem` | [nthLe_ofFn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/nthle-offn-source-edition-2.md) | 86 | `result-track:bcb0432fbe99461d358ae3b2db718b3f3bf9589182b0afb8c8b75602945c4f09` |
| 6 | `theorem` | [map_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/map-offn.md) | 92 | `result-track:26692bed17dbcbcec0e9839d470ff5edd87ca944da4d97bdcdbb1a3f047a00ae` |
| 7 | `theorem` | [ofFn_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-congr.md) | 109 | `result-track:d11b1e68a2b295fdeef77b49b8c8c5d1c4c095565eaedd468e0324635f8af185` |
| 8 | `theorem` | [ofFn_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-zero.md) | 117 | `result-track:c9d97b4d1a15e90b2fe4ca2580f99ea7d9a35d83c549227c31ec20f8ebb7936e` |
| 9 | `theorem` | [ofFn_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-succ.md) | 122 | `result-track:132c4a8847d7a1f6ea6f6969aa2411335f6cc326399b30a1ac58726df2031cc5` |
| 10 | `theorem` | [ofFn_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-succ-source-edition-2.md) | 129 | `result-track:9b7c35c8eb5c719a5ca8014984ebb637729a81755f90af87cf7c5aac941a2fa7` |
| 11 | `theorem` | [ofFn_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-eq-nil-iff.md) | 139 | `result-track:0190d52b8c55f27f620406ba5dcf442eca8966ea65b0b38464333c1e2e9c0535` |
| 12 | `theorem` | [last_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/last-offn.md) | 143 | `result-track:337263f3bbf7df50312c8172988f54879afbc51bbc1cc0d4bf0a123dd95e48f7` |
| 13 | `theorem` | [last_ofFn_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/last-offn-succ.md) | 148 | `result-track:ebf152efb268fd332dd8fa09258e0f1328fc8b93e4b528395ecf69c53f9216cb` |
| 14 | `theorem` | [ofFn_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-add.md) | 155 | `result-track:882bdce6e7837c8466d9b2fcbd640cc6d922340be5ecf5f2c40d9ffbcfc323e7` |
| 15 | `theorem` | [ofFn_fin_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-fin-append.md) | 166 | `result-track:cfa1725e4f0046855027cc6f366f02a3fd49d6d9ecc054316d559edc978775d1` |
| 16 | `theorem` | [ofFn_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-mul-source-edition-2.md) | 172 | `result-track:aad2e116f4e02297a62ea1451b440901f0faa356890754cf8027f4465009d67e` |
| 17 | `theorem` | [ofFn_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-mul.md) | 184 | `result-track:66d2c7ac5ec7493fc8c48edd8fda0ea9d28880992ee6574d60609ced1f11ab01` |
| 18 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-get.md) | 192 | `result-track:3f8371513c8045f315373ea9c82c340c337c551fe2d2012270703deaadfad083` |
| 19 | `theorem` | [ofFn_nthLe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-nthle.md) | 201 | `result-track:27f1e49ee793916a78c09aa852fe79d39ad945661ccbfa6f5dcb6444e239c874` |
| 20 | `theorem` | [mem_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/mem-offn.md) | 207 | `result-track:388173e5b1db7218017b102aa4c9db8e0f5680d26f04aa034b62d95d440b0b3b` |
| 21 | `theorem` | [forall_mem_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/forall-mem-offn-iff.md) | 213 | `result-track:034b368c815e5219d31800238c5d883cc0035a085e999f3f4a34c9661925051b` |
| 22 | `theorem` | [ofFn_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-const.md) | 218 | `result-track:0e338cf83239e7dd76f496acbce860979214255e29635d099cfd2d1d3c37ab7a` |
| 23 | `theorem` | [ofFn_fin_repeat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-fin-repeat.md) | 224 | `result-track:a535a518bd9c80751cc43b09f33d79c2f1a430b5a1237c131bd6fd8482160ac0` |
| 24 | `theorem` | [pairwise_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/pairwise-offn.md) | 231 | `result-track:220c827032c2b5891284f0ad5d205b8e4fca852e9520d8d3c2c577cd5e579f23` |
| 25 | `def` | [equivSigmaTuple](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/equivsigmatuple.md) | 239 | `declaration-track:378ca6767d3ac45e7c02dddd526ef148695b477128576b9a23919cd575d9cc6a` |
| 26 | `def` | [ofFnRec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offnrec.md) | 254 | `declaration-track:07facaf4cc25c58eb7f75a90ae9e9b0fb89534036b8efed87a131e02e6f6093b` |
| 27 | `theorem` | [ofFnRec_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offnrec-offn.md) | 260 | `result-track:93428d144f35c7d3b2994782cc8df349ee82273c84cf20024ae2618ba4ba743f` |
| 28 | `theorem` | [exists_iff_exists_tuple](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/exists-iff-exists-tuple.md) | 271 | `result-track:2dba3377fa84955131a67c86197dfdd88a5948c6c3fbefdfb9d090c5eb01efb6` |
| 29 | `theorem` | [forall_iff_forall_tuple](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/forall-iff-forall-tuple.md) | 276 | `result-track:6c692c04da46ffad2a1214fd9ea75090d9c1a6c7e0acf8de7295488fb6b6f08e` |
| 30 | `theorem` | [ofFn_inj'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-inj.md) | 282 | `result-track:8fced7a478c23215f984436b2bc67629cdab490bc0cf7de86629347a9bf1061e` |
| 31 | `theorem` | [ofFn_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-injective.md) | 288 | `result-track:b034a27837f9466e4fa8ded71a8c4a377333ff8fc3e5f5621d4bf404c55cf216` |
| 32 | `theorem` | [ofFn_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListOfFnNamespacedLengthOfFn.lean/declarations/offn-inj-source-edition-2.md) | 294 | `result-track:d4e9a8f23cc59649a96b16c0142b5c69c1b488c849d0575836deb248ce19ecf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8eac6e4dab47cb669fb61ff23f0862acd99708e747d356bbe314ef72c792df2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant3898c3f3a73f67610d437d3a112d845ae115a5a3f5d6c25bb736fd2ddc0dfc3f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant3898c3f3a73f67610d437d3a112d845ae115a5a3f5d6c25bb736fd2ddc0dfc3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
