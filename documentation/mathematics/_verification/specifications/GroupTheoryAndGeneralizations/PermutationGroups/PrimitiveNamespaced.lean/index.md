# Verification target: Primitive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eccbdca641932e923e82e97b525acbf631b2c282",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eccbdca641932e923e82e97b525acbf631b2c282`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Blocks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Transitive` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Primitive Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rootaddactio-source-edition-2.md) | 86 | `declaration-track:9e83fd7b672d566f5d94aee38269be4e56af617c3b3bb080b331aa1638c60434` |
| 2 | `class` | [IsPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive.md) | 94 | `declaration-track:97270590d538438e4c3e1200c4296f673f558be5bb2cd90be824592c00b7d1e9` |
| 3 | `class` | [Primitive Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rootaddactio.md) | 103 | `declaration-track:457b72a0f031a73bbdae5812f96ed39835d94f568b214a10158b414b6edd7192` |
| 4 | `class` | [IsQuasiPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/isquasipreprimitive.md) | 112 | `declaration-track:fd630dcdbea44bc72edf13ca5939092bb054e8b03193ef32efb70cd66f3004c4` |
| 5 | `theorem` | [IsBlock.subsingleton_or_eq_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/isblock-subsingleton-or-eq-univ.md) | 119 | `result-track:8804e479d13bb30f1bf82b0aac0b6d4d50609601ece8c3f6569915a97d90c674` |
| 6 | `theorem` | [IsPreprimitive.of_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-of-subsingleton.md) | 125 | `result-track:7fa438f20d3188c05edb77f942846ed67c3ab34e64a11cd7997ea6b9bb591f60` |
| 7 | `theorem` | [IsPreprimitive.of_isTrivialBlock_base](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-of-istrivialblock-base.md) | 144 | `result-track:b310e8fe9342fc20888be002d12d97e080ca37a4f11c7ee698282b6339619692` |
| 8 | `theorem` | [IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-of-istrivialblock-of-notmem-fixedpoints.md) | 161 | `result-track:8be422eb151d762520f995db9b0151cd865c1f75c0bc24a83439bb27207e172e` |
| 9 | `theorem` | [IsPreprimitive.mk'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-mk.md) | 194 | `result-track:2a3de97f08c9a2d1d9304f1e76f9eb170f970f1e5f49369f50023c9db37b0d22` |
| 10 | `theorem` | [IsPreprimitive.of_surjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-of-surjective.md) | 211 | `result-track:1f4a7414543c953abcbd6ed30c1dbaec632cb2498ef33545a774b34156920a6c` |
| 11 | `theorem` | [isPreprimitive_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-congr.md) | 220 | `result-track:96a58ebc91b560866d96bcea7ac30fb813fca39161ba51a79d20f9974076615c` |
| 12 | `theorem` | [isSimpleOrder_blockMem_iff_isPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/issimpleorder-blockmem-iff-ispreprimitive.md) | 246 | `result-track:b2be1fa75dfb436c2ab23a31a814a096f36ded240da4bc0761fd90880e934100` |
| 13 | `theorem` | [isCoatom_stabilizer_iff_preprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/iscoatom-stabilizer-iff-preprimitive.md) | 270 | `result-track:3771d60fc5ce88edb594ef16c58fd1385a02e6d62842f43036d1e8410e8f244c` |
| 14 | `theorem` | [IsPreprimitive.isCoatom_stabilizer_of_isPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/ispreprimitive-iscoatom-stabilizer-of-ispreprimitive.md) | 278 | `result-track:a4ce4cfeff8a96cb301a4cf668d0b4b55d9e8b2ddc09cb19939e81e42ab6881a` |
| 15 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/instance.md) | 294 | `declaration-track:1d39d4c69f72b8bc447409f26a46f5e0fdd2674be982798ee55b26b59e8d157a` |
| 16 | `theorem` | [of_prime_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/of-prime-card.md) | 320 | `result-track:23aa5449b56750ed3930e26785945900db1df87ab8611ca2e7e851507bb68ab4` |
| 17 | `theorem` | [of_card_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/of-card-lt.md) | 331 | `result-track:dcccb51d8175006d8aba416d8d398a3d9434e44b46603fa5ea70c0abdbd6fe2b` |
| 18 | `theorem` | [exists_mem_smul_and_notMem_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PrimitiveNamespaced.lean/declarations/exists-mem-smul-and-notmem-smul.md) | 379 | `result-track:9dc46c3b28a6676621f47a42a3dce078809563411c024ddff930b198fbee2013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23485d4a42180826f69b3a94dd9bee887dfa120c49255aa11f01f2f89669c8e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
