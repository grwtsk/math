# Verification target: Iterate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e25c870536d65d843441f9e7fc0cef200cb4af14",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e25c870536d65d843441f9e7fc0cef200cb4af14`.

Source path: `GRWTSK/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hom_coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/hom-coe-pow.md) | 34 | `result-track:cfaeee91c1712e6bfe51435f68a9f0ded4819502034c532b89a6d344c237ef6b` |
| 2 | `theorem` | [iterate_map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-mul.md) | 43 | `result-track:a5530ef11b1d65aa6f1efeb8e9588c5348bec2fd215fe391c69e9925cbabfe83` |
| 3 | `theorem` | [iterate_map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-one-source-edition-2.md) | 55 | `result-track:9b5f505f15a4075b8c9d53527993ac2e8c190868f69e96b8848c3dae870ac760` |
| 4 | `theorem` | [iterate_map_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-inv.md) | 65 | `result-track:40304dd1e0a819f8fc4d74439f3705fb1901ca1acdd00be7940271dac1b3bec7` |
| 5 | `theorem` | [iterate_map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-div.md) | 71 | `result-track:e080384719c68211fb9862b4cb4c8b7fdbe0585ceb49175bc64e276e5044395a` |
| 6 | `theorem` | [iterate_map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-pow.md) | 76 | `result-track:4c9f25f03cbb7663da8507c2a80233ef435ce69ae3bdb18b8e74b7b4a890135f` |
| 7 | `theorem` | [iterate_map_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-zpow.md) | 80 | `result-track:ce0d228ec30ab1ec7c5303c1b9aa789d2650c20f33d293baee5236cde3112b6a` |
| 8 | `theorem` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/coe-pow.md) | 84 | `result-track:824b4e0023c4fe538a1104f4c78e924fac0404fcd814eb74ee413419bf383d01` |
| 9 | `theorem` | [Monoid.End.coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/monoid-end-coe-pow.md) | 90 | `result-track:91f445533d97e1156c3c43f7c35c807fdc01fbd4d06c0937fbe083d10b35d920` |
| 10 | `theorem` | [iterate_map_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-smul.md) | 99 | `result-track:09578c06ffa818b1f5d42002f3eec3ad88adb67eb17020ebd3586a91b7064c7d` |
| 11 | `theorem` | [iterate_map_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-zsmul.md) | 106 | `result-track:68bf7c57497082acc551d1d83e589924736cd975fe34af82a10f157e27b0b8ec` |
| 12 | `theorem` | [AddMonoid.End.coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/addmonoid-end-coe-pow.md) | 114 | `result-track:385c220d4c148627dcf52f83087a47f5c4a89d89127efad143fe6f1de4a8d826` |
| 13 | `theorem` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/coe-pow-source-edition-2.md) | 124 | `result-track:c6b73c2129fc32d5daf10bee0c4055780eb3e259374f66c8c78959e2e4b893a7` |
| 14 | `theorem` | [iterate_map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-one.md) | 128 | `result-track:42e1590956a01eeb2e7baf981e8d3fc0955389b54217dafd1f63824e456f5fd2` |
| 15 | `theorem` | [iterate_map_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-zero.md) | 132 | `result-track:03e91b256dc173b7053aada9a54fb3257957c2e6874294dce1f2ea955ece09ce` |
| 16 | `theorem` | [iterate_map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-pow-source-edition-2.md) | 136 | `result-track:5d48bcc4260c09c89c0fd271eaf174d95fdb3c4dbba9357b8be81c4edbed43a1` |
| 17 | `theorem` | [iterate_map_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-smul-source-edition-2.md) | 140 | `result-track:439f155a8885d59b85f02bd04f41a087a06f000b6a00cfa80feca29f46665570` |
| 18 | `theorem` | [iterate_map_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-sub.md) | 148 | `result-track:540d5e9de53b5ee4e155dc943cfb663ce792aeb46c1911f44473eea9fe4c7430` |
| 19 | `theorem` | [iterate_map_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-neg.md) | 152 | `result-track:15c9a7e8775b1ed03141f94e89904e3620bd061f32efd13eea9978fd4b5f9557` |
| 20 | `theorem` | [iterate_map_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/iterate-map-zsmul-source-edition-2.md) | 156 | `result-track:bfdb783a137e853ae441d05f7ba7428b5d28abf25ea4d6b9fe09b6eaf6833756` |
| 21 | `theorem` | [smul_iterate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/smul-iterate.md) | 168 | `result-track:b45cf2fb75a4c1ab53a36c2dc26df23fae2c1f613c730b239ead4a2b8854c889` |
| 22 | `theorem` | [mul_left_iterate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/mul-left-iterate.md) | 176 | `result-track:2b636ed61da403fe1a44f4718b9c68325d995244e329a5a98bb74cea630d09fd` |
| 23 | `theorem` | [mul_right_iterate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/mul-right-iterate.md) | 182 | `result-track:e1b39fb2c4ad4c91b9fe060870ce3cf536cedb189f7c58082ef6d250cc72f907` |
| 24 | `theorem` | [mul_right_iterate_apply_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/mul-right-iterate-apply-one.md) | 188 | `result-track:0b13e8d29332d9d8ba0b4a79a5670ffc43d77a89597a17863092b44e3bcf04d5` |
| 25 | `theorem` | [pow_iterate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/pow-iterate.md) | 193 | `result-track:7d9f241ccaaf83137131cb388e0bc1ee49ee2a72229f410ea5da5bafc8d291c9` |
| 26 | `theorem` | [zpow_iterate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/zpow-iterate.md) | 209 | `result-track:a8106b9499e6a48b1a2d9e631b27f91c0ff134f3748db9308425d726f7661fc1` |
| 27 | `theorem` | [SemiconjBy.function_semiconj_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/semiconjby-function-semiconj-mul-left.md) | 227 | `result-track:e0341cf78fd5934c57798ab905cdd4cf7e2497fdb34d93fd2e7128b2a799eba3` |
| 28 | `theorem` | [Commute.function_commute_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/commute-function-commute-mul-left.md) | 234 | `result-track:6be5d6db580f0b37a5808a48310f6e229d53709746a128b18caf3c094ce3954f` |
| 29 | `theorem` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/semiconjby-function-semiconj-mul-right-swap.md) | 241 | `result-track:843cb0b9487179dce21ac748d2d93a8a3c9a78cce542a0220da2324e2fa102fe` |
| 30 | `theorem` | [Commute.function_commute_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Iterate.lean/declarations/commute-function-commute-mul-right.md) | 247 | `result-track:cfd927822cc901aac11cbdb9a0e5231a39e261761c6cc6f69663a55af1ca4b01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=793ed89ac6408e7dbaa00b6ab6277a89a0fce3f0bc7089ca13c2e72183a81481 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Iterate/Variant1cf082fa888036eb555a9ecae59d1e6a19f6481ffa4b887ff0898bd4868114ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
