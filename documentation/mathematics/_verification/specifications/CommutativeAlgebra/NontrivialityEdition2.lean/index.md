# Verification target: Nontriviality Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e31d183aa1e4390c73e97f0b2640c2eb8bba8fbb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e31d183aa1e4390c73e97f0b2640c2eb8bba8fbb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Nontriviality` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/test-sorry.md) | 5 | `declaration-track:3ff9a1a557d588c4ae00ca758e680b0389a45358f039e20c88020b7919bf8451` |
| 2 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-9.md) | 10 | `declaration-track:d78b4063d6eca102e4dab0a66b20566227be10966a211038e06f3e6b48e78148` |
| 3 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-10.md) | 18 | `declaration-track:ec717429fa91a561969dc3f048ca3e28d45191963acd69ba622ae3797e6352f5` |
| 4 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-11.md) | 25 | `declaration-track:efb6dd81e088c44ab4c379e234db0e369a18fe72079b0b3d6f3ddeab3dffc710` |
| 5 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-3.md) | 30 | `declaration-track:41ccdd360c6d94860beede012ab216a807bef0936548a46ce6d9c05b02df91c9` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-5.md) | 35 | `declaration-track:a39af4631a94cd335d5c29580bc15db4e14bc9565a22524d84c19f35b8e4e614` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-4.md) | 39 | `declaration-track:88b6502c95f06b75bffea05ceb315b02c0a91c85c3912ac1c34c21db93e626cd` |
| 8 | `def` | [EmptyOrUniv](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/emptyoruniv.md) | 47 | `declaration-track:fa7ffa706ec401663b82bb4f4bdb408f28b734fa0be743f228feb0df70554ebe` |
| 9 | `theorem` | [Subsingleton.set_empty_or_univ](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/subsingleton-set-empty-or-univ-source-edition-2.md) | 50 | `result-track:ee71355a930710190ed726c8508cca41c78260822a8c9752941a2aaedf7440d2` |
| 10 | `theorem` | [Subsingleton.set_empty_or_univ'](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/subsingleton-set-empty-or-univ.md) | 53 | `result-track:dcee6bc167d9dd5aacd2bbfe3e82dc4d4674f20935943bf8d41f7b2b3bd1e107` |
| 11 | `theorem` | [Set.empty_union](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/set-empty-union.md) | 56 | `result-track:f3b71e4957bd83b300a5756fd5fd3ac34dc068b10b723b7522be5b1a94baebc0` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-7.md) | 58 | `declaration-track:cc332d9439975727863919be086321015edc8038b570c10105c31c3f5a2751f2` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-12.md) | 67 | `declaration-track:ff242549edce5c34a65d02fdc77f90e854cbe54059f5ac8bfc949a730c297491` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-8.md) | 77 | `declaration-track:d03f05ee1e599da9612d2d36528737238db523ce6612c8dbfe24ac400c50dd03` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example.md) | 85 | `declaration-track:1a7a89a8d6d3afb859e5f16c4184240168b0df98730e665f0e2ad3e45463a6c4` |
| 16 | `class` | [Foo](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/foo.md) | 90 | `declaration-track:86a8ca77bc87226d269822e8ab1f85568634affe89d43cec0dfdae5cce9019c7` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:976b18b0a2fabb562f1611da3c1ee762a8c30d75417e2a131087f39634837c24` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-2.md) | 93 | `declaration-track:2299f4850db0dc893739cc997b49446c42a2ecdd81bb0ab91978d4d81045de7e` |
| 19 | `def` | [R](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/r.md) | 96 | `declaration-track:a3369ce99814863620b04c81e6ad6ad0a4055b166af785f9146ae69a68ca4793` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/instance.md) | 97 | `declaration-track:702ed01d1e3a2f63220e880a69ce45e77e067bee07bca54a8b6773afb739b55f` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NontrivialityEdition2.lean/declarations/example-source-edition-6.md) | 99 | `declaration-track:b84462b24f17c6b807f3a675a483bfa9b297fe90dd4d930a0881412c642ae6ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0583b4d47febeee39c536b6bcaf2b9d34ccebcdfa7281691ac53843d7778bfc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nontriviality/Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
