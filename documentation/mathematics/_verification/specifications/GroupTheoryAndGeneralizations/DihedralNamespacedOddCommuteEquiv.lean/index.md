# Verification target: Dihedral Namespaced Odd Commute Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79983d111f0939b128086733f6468722148e9ed",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79983d111f0939b128086733f6468722148e9ed`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/dihedralgroup.md) | 34 | `declaration-track:36e702ffe214f5c1cd3ec0d9782fab7e3847b0dec1232b811f782e37f74b4212` |
| 2 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/mul.md) | 46 | `declaration-track:1e3c4727699a6e6c7bb95fbd721b1ece1e87bcd6ec1216d6cb61fbc0029f4343` |
| 3 | `def` | [one](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/one.md) | 54 | `declaration-track:362a620c87fa2c292431202bbd3e243a66773ca76bc9b1dd0b0e66dd517ed3ca` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/instance-source-edition-5.md) | 57 | `declaration-track:fb5623bfc4b3fef85745147fad89a8369702e0c3199763d37fe5b96477c29e55` |
| 5 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/inv.md) | 62 | `declaration-track:7e4e2203856782963e6551268ced1d50e21b763112f056679ebaecaac03a8caf` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:5408e1dfa44b7543ef87ca4d42fd17ef0673a144a92720321728e54091cc6838` |
| 7 | `theorem` | [r_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/r-mul-r.md) | 87 | `result-track:eb53e361bd4fc0d4cde78c2913ef94bb7e42e56cecf9e29503f2cb3f48f3b16e` |
| 8 | `theorem` | [r_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/r-mul-sr.md) | 92 | `result-track:000836a852f18355d792c8f1be3bdcc8c66117af2c878b6c32e839db9bb676c3` |
| 9 | `theorem` | [sr_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/sr-mul-r.md) | 97 | `result-track:8bd3143ccd3ed42f7fbc6fecbffd4e400713983822a8aa1d2c1ad4ea397f9155` |
| 10 | `theorem` | [sr_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/sr-mul-sr.md) | 102 | `result-track:c8570eeddd9bdeba7d5db498251d32d036d857aa0c630011020b67346fcacbf4` |
| 11 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/one-def.md) | 106 | `result-track:82de29fb93b5bac4ca0b1d3e82d9bb59a470b1e41d0e2715cafb22279882764f` |
| 12 | `def` | [fintypeHelper](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/fintypehelper.md) | 110 | `declaration-track:a6c95b3c844118c138abeab844c60033ba90c274791e50535e0e98f4d4b7a821` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/instance-source-edition-3.md) | 122 | `declaration-track:9e8f426e7b51dbc90b0ee158102c8aa2a84c26fefbdfe2c21a1a3d678d148563` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/instance-source-edition-4.md) | 125 | `declaration-track:b32d14a40c7718ed3c0ecb1a85578a3cbc5203a6017906e2016ea13ff46efff6` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/instance.md) | 128 | `declaration-track:289a9767bd465baafff46b72b8a4c4aaeb956fadf91b5c627d99918d8e90a776` |
| 16 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/card.md) | 133 | `result-track:7b079477e18a22f13fc651076a23737f1df2cfec1298a6edc4f55791755cf8a3` |
| 17 | `theorem` | [nat_card](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/nat-card.md) | 137 | `result-track:121d943653b03361bbe2ff304143996e1e3f79b67d3fb5b90381c8bbb908af7f` |
| 18 | `theorem` | [r_one_pow](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/r-one-pow.md) | 143 | `result-track:0efb8deed42a2b8a24715e4abc8010c7f4c8fd310cbbc42de80773863c1a47fe` |
| 19 | `theorem` | [r_one_pow_n](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/r-one-pow-n.md) | 154 | `result-track:e01ac8089d3bb1ae546d61e4b3b13d3c7cdbe60c78b6f2bde3e63c0aaabedbb6` |
| 20 | `theorem` | [sr_mul_self](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/sr-mul-self.md) | 161 | `result-track:5f5c2e72c234ff83573125d6809db6a0f04bcda53ba7fcf369d9a11ee227e07f` |
| 21 | `theorem` | [orderOf_sr](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/orderof-sr.md) | 167 | `result-track:225242ed329f68c86cb9a70f696fbcee6a43dc1ccabaf737d84b1eca93a7dc41` |
| 22 | `theorem` | [orderOf_r_one](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/orderof-r-one.md) | 178 | `result-track:d264bb0c51af2d4c296c4aec7e5c815e13d9b9a4afebd48592c16a20c278bfdd` |
| 23 | `theorem` | [orderOf_r](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/orderof-r.md) | 197 | `result-track:4eee78465141a6677c8e708fcd3f58dd6e96097dabcdec405213c4e4ac58ea87` |
| 24 | `theorem` | [exponent](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/exponent.md) | 202 | `result-track:a5f38306920ccf0575e78c2cdc84cc30fa323acd6425c6fa31c250334f9e5102` |
| 25 | `def` | [OddCommuteEquiv](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/oddcommuteequiv.md) | 223 | `declaration-track:a63af6b5175778cee84da5093542a6a235e17aafb9658779e93f8469f51c8bbf` |
| 26 | `lemma` | [card_commute_odd](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/card-commute-odd.md) | 256 | `result-track:3890d47d544570489deca96152d3f8df5e4864a8f5252ba11829ed44ed424e45` |
| 27 | `lemma` | [card_conjClasses_odd](../../../../GroupTheoryAndGeneralizations/DihedralNamespacedOddCommuteEquiv.lean/declarations/card-conjclasses-odd.md) | 262 | `result-track:e56a73c4988574186441fdbd3e81c309b40bc6c681d9e41b5f16592c5d399b2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93dc14a5317dceb0a3a2d8e43fa05976f558eda99fa40d92d3c6bd46933b7a53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Dihedral/Variant912abd31f645cb7a82f7d9b1066257a59039b4ed238bf67be1c91ba9c6297cb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
