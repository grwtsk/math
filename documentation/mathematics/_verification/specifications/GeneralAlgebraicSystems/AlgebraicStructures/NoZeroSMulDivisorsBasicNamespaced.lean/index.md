# Verification target: No Zero SMul Divisors Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "157d298aad6c988e1017f4ee50b7a0b830b832db",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `157d298aad6c988e1017f4ee50b7a0b830b832db`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.noZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/nat-nozerosmuldivisors.md) | 35 | `result-track:d532c6ddc54b3e0254a20247b9751e8b63203e56c525feee78909e41bb66789d` |
| 2 | `theorem` | [two_nsmul_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/two-nsmul-eq-zero.md) | 40 | `result-track:8a097cc00caadfbf145b91cce9478999823f2b756fe9fa4853e6386410ea5ac3` |
| 3 | `theorem` | [CharZero.of_module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/charzero-of-module.md) | 53 | `result-track:a81f3429df01d33d341762d1bf4d2a40635a93cc06629aba0062383ed20aaf13` |
| 4 | `theorem` | [smul_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/smul-right-injective.md) | 67 | `result-track:24a1216518737129a494919325a16203213639788a3946421149a73ccb52a97f` |
| 5 | `theorem` | [smul_right_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/smul-right-inj.md) | 71 | `result-track:d917349bd5e3c2d003c9355d92961eeedcffa94683ff67fe520b0e4c57ae8232` |
| 6 | `theorem` | [self_eq_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/self-eq-neg.md) | 79 | `result-track:6cf0210d841ac8023e78c2ab95256ff4cdb187167e84551d9c0eede5b3cf40f8` |
| 7 | `theorem` | [neg_eq_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/neg-eq-self.md) | 84 | `result-track:777e23193f9e24b5cadca696c2a3301b5bc1a2d6e432ada84ec53775f1679d21` |
| 8 | `theorem` | [self_ne_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/self-ne-neg.md) | 89 | `result-track:c0d1198343fd971e3f31c392362ff8fffea9b278b4a4ce9ae4feadb40c03708c` |
| 9 | `theorem` | [neg_ne_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/neg-ne-self.md) | 94 | `result-track:7dd73475038e6e1cbab98b99726743f0ab6aa6e294ee8b8684964ec214de8f6b` |
| 10 | `theorem` | [smul_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/smul-left-injective.md) | 112 | `result-track:7ea6be206fbc8e9e4610971a664c23dd859d94e83a82986e745a1383129439ee` |
| 11 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/instance.md) | 124 | `declaration-track:114d81cd758fd888b3c335981d883916201acf38a4893cb537be483378117934` |
| 12 | `theorem` | [NoZeroSMulDivisors.int_of_charZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/nozerosmuldivisors-int-of-charzero.md) | 129 | `result-track:c3ac8673a2d630dfba933408595668df13feeaa8260c014b432221050e597cfd` |
| 13 | `theorem` | [CharZero.of_noZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/charzero-of-nozerosmuldivisors.md) | 136 | `result-track:151f0a167f93a7c7537b367edf97066f586aa1274c5e31a822677714be73da7a` |
| 14 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 142 | `declaration-track:f3bcf533c7dbc79aed7b3f5b7dddff771eb6339128f1a1478259c8adfab9d1f6` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NoZeroSMulDivisorsBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:a959556e163721b9a72968facc6e4466f4a23b0ac6c120c061bc3f83ae5d853d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6d4ef1d7c749f800438865bd4341978829fe004c3266ef2bb6db8ebaf844019 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
