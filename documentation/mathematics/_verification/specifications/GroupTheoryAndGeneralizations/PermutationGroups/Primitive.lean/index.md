# Verification target: Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46eb6912bd9bb128c88d5d71b0e5779a9558a72`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Blocks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Transitive` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [_root_.AddAction.IsPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/root-addaction-ispreprimitive.md) | 78 | `declaration-track:04409552d1945a19a81c486ea0966fa7ed0608fd6f8c607a98dbb61e7046a362` |
| 2 | `class` | [IsPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive.md) | 86 | `declaration-track:f750bee089ba0e3ba9916f76838a2f28198f184842d1e76185ae1c9e8dbf03d5` |
| 3 | `class` | [_root_.AddAction.IsQuasiPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/root-addaction-isquasipreprimitive.md) | 95 | `declaration-track:3653762f73e4b3f3cb66e986b5538f2c88fc829c10e595fc16a8c639ec50df0c` |
| 4 | `class` | [IsQuasiPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/isquasipreprimitive.md) | 104 | `declaration-track:ed7e0680442df4982dbcab9e5c6315701519fc05cd91302a1acc7bb2742651fa` |
| 5 | `theorem` | [IsBlock.subsingleton_or_eq_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/isblock-subsingleton-or-eq-univ.md) | 111 | `result-track:581ccc645e6275f29f8572e901e119eb44718a0093127d130a0a727d1437e068` |
| 6 | `theorem` | [IsPreprimitive.of_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-of-subsingleton.md) | 117 | `result-track:7bb3ded5866eaaa14c36931511cfffee9bc8f3d0c4cd502d6c179bfad209cb0f` |
| 7 | `theorem` | [IsPreprimitive.of_isTrivialBlock_base](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-of-istrivialblock-base.md) | 136 | `result-track:d9181637e12990cd00c42006f7fe1f599d363ada7a8d0aedb88359601f2a6917` |
| 8 | `theorem` | [IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-of-istrivialblock-of-notmem-fixedpoints.md) | 153 | `result-track:199ed29fa42b6bca5003cb3cd58215758de35718539bf05724901b2a3f6fc06e` |
| 9 | `theorem` | [IsPreprimitive.mk'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-mk.md) | 186 | `result-track:437f3a3bcae548ca8f8e2d6386426a8c11fb5bf8a633fa637176adabf36e81ee` |
| 10 | `theorem` | [IsPreprimitive.of_surjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-of-surjective.md) | 203 | `result-track:e0ad0066e6712985365916768620fcb13b6db5b8645ee922a9881d0afd9ab57e` |
| 11 | `theorem` | [isPreprimitive_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-congr.md) | 212 | `result-track:768f0c905c2ddad73002f4b6e7d491da64c95f866240305b8827da16347344e8` |
| 12 | `theorem` | [isSimpleOrder_blockMem_iff_isPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/issimpleorder-blockmem-iff-ispreprimitive.md) | 238 | `result-track:4256f7f276528508ade77c44d9e7d2155ac0d14734a4836037b9a112773ad2ee` |
| 13 | `theorem` | [isCoatom_stabilizer_iff_preprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/iscoatom-stabilizer-iff-preprimitive.md) | 262 | `result-track:a2e9a0cab05122ec679997c525d795e04bca811b341cd77364f0380e5b560ed9` |
| 14 | `theorem` | [IsPreprimitive.isCoatom_stabilizer_of_isPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/ispreprimitive-iscoatom-stabilizer-of-ispreprimitive.md) | 270 | `result-track:8b7ebdb6d26dcd36028efa9b45583435cff30b83cdf74ef38fa8ad6d73a69a3f` |
| 15 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/instance.md) | 286 | `declaration-track:a86c1e0922cfe152d2a14fe78f3a29a43939c3e4d7b7f23c247bef0d49ab795f` |
| 16 | `theorem` | [of_prime_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/of-prime-card.md) | 312 | `result-track:7671c3bd59d02d3502b95287b5ff3a1f19af87ef72cd468dd5089431dacae093` |
| 17 | `theorem` | [of_card_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/of-card-lt.md) | 323 | `result-track:d5385db38416fec71852b53ec2418d156c2150b316089045efe1ca1937f8243a` |
| 18 | `theorem` | [exists_mem_smul_and_notMem_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Primitive.lean/declarations/exists-mem-smul-and-notmem-smul.md) | 371 | `result-track:0fd69ec5beb56cfa1dcd6c8bf4a71d263e185b7764f9e8ccc890578974831cd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2721d36f454a5f72efdb30ef95fae3555c9a4f15888c51ae41c383dfda3eac52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
