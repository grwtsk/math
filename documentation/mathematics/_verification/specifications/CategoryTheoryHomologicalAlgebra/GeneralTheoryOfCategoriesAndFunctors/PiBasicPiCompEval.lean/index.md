# Verification target: Pi Basic Pi Comp Eval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc5b0636ae003fc8ce55df972aba98e24c0440f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbc19c9a2720c6ac5073047d9997ef53520613f5fb58b8a7a49ea5d46b699993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc5b0636ae003fc8ce55df972aba98e24c0440f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbc19c9a2720c6ac5073047d9997ef53520613f5fb58b8a7a49ea5d46b699993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbc19c9a2720c6ac5073047d9997ef53520613f5fb58b8a7a49ea5d46b699993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-8.md) | 27 | `declaration-track:fbdc38e9c1ad2569c16fd05d5b609135f1ef4a7b3bed0c6eb73d3c600cb7d170` |
| 2 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/id-apply.md) | 35 | `result-track:1ec83379ab982a1486785a643cf410a23de18b185d72ae9fe5fbd3808190809b` |
| 3 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/comp-apply.md) | 39 | `result-track:95f02e53995acd0504f19e0924abc4035f32ea371df6dc43d599b303aad96fcb` |
| 4 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/ext.md) | 44 | `result-track:4700a1f598c901342007684660ce82f25d5e368cb1d1bc4c4ccbbffaebe412f7` |
| 5 | `def` | [eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/eval.md) | 51 | `declaration-track:aa11aae01285a278a0f54e1ae191ea7b538209057d2e557cdf631d3045de7db6` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:5176fa32d944d8c5e83a60f08244ceec287d08aabd3cb0d60cf334e57ec6e9cb` |
| 7 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/comap.md) | 69 | `declaration-track:41a5aa8597c5adcd1ae5ce7ad4ad9c8525a68847e3d8f469194e4eaa75129fe4` |
| 8 | `def` | [comapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/comapid.md) | 79 | `declaration-track:4b294503a79083149cbc7ed95dec29efc9a2adcabfe70c95c30189c3c9bfde2e` |
| 9 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/example.md) | 83 | `declaration-track:3dd6cc2803115d72e20a037558058258de2fb0917480282e581d6c7338a1556b` |
| 10 | `def` | [comapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/comapcomp.md) | 93 | `declaration-track:8fbca546e7acd0e24b1d33a1359d5f308c32efa94ecc9ce357d5386fc57cbbf8` |
| 11 | `def` | [comapEvalIsoEval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/comapevalisoeval.md) | 103 | `declaration-track:40ca6bf03409afa8ed18bd8b96a8e8b4933387af4607ef3df5de8488d49416f9` |
| 12 | `instance` | [sumElimCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/sumelimcategory.md) | 113 | `declaration-track:6b3f9e7a576100eaa95560ba489496afed448c326975f96685c84f4b7c3f1710` |
| 13 | `def` | [sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/sum.md) | 128 | `declaration-track:dd9159c09ef56abaa00c4247612ff611c31ce9a0c261c9ee008a458f297f5ecc` |
| 14 | `def` | [isoApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/isoapp.md) | 151 | `declaration-track:3ae3f60d98906b8fb2d102c58a4747e43fd39b651b1359d94dcb477524dd65fc` |
| 15 | `theorem` | [isoApp_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/isoapp-refl.md) | 156 | `result-track:6c45eedfbd5004824eee6a61e5a7063f54ca7d6279d76cbc59704dfcc752d106` |
| 16 | `theorem` | [isoApp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/isoapp-symm.md) | 160 | `result-track:6388ef5a06b0c518fb154fdfcdabe8a0ce6f356c6c951d4ff82fa636bea53876` |
| 17 | `theorem` | [isoApp_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/isoapp-trans.md) | 164 | `result-track:ae3ea5d799e9f867212645834364199bbc5fb935423c9054d5ec2a5f7dcabfe5` |
| 18 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-3.md) | 178 | `declaration-track:3ca81dad6d1dee75af3bddc65884443014136c4e3b7b4a3e0c1b6992ad12b8b1` |
| 19 | `def` | [pi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-5.md) | 185 | `declaration-track:89686936d283927ca6a832982ac776e9ca82aecd4d2b53ca64c233dfaa59b5d9` |
| 20 | `def` | [pi'CompEval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-compeval.md) | 191 | `declaration-track:c1c21dce051ddc0e85db057d9cf204ce04396d5b8e230fca3f457b1ba1b288e5` |
| 21 | `theorem` | [eqToHom_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/eqtohom-proj.md) | 198 | `result-track:9dfb92a1d9eb9b695590300c835fa0a8747b6ddbd94b42c648b70b57be91aff3` |
| 22 | `theorem` | [pi'_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-eval.md) | 208 | `result-track:b7d902d0d9bcec51b57231e5a20a860f81a80f8137ff8af08570aa29c9cc8354` |
| 23 | `theorem` | [pi_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-ext.md) | 216 | `result-track:3e01f9c99199975b2f8ae7f8e5c93ee7139c5c492099cf4e9d2e9cfadaba4e05` |
| 24 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-2.md) | 242 | `declaration-track:2423f06572c44ab522c369b255bfcb7a05ab5111ec60b4ac9a223b6f8440bfd8` |
| 25 | `def` | [pi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi.md) | 248 | `declaration-track:10dbcaa80d72e413fe0da174fb8f2a29c2934225c164c8a7b158eb04d1a4d04f` |
| 26 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-4.md) | 266 | `declaration-track:694afaabcbf7cd382720f43b07fec59a030ecba45f711cc95b226e3aa0c8d294` |
| 27 | `def` | [pi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-7.md) | 273 | `declaration-track:8aa774907d0f4fd4128c85f193fb2e09bdf8c02bec4320e8dad1b899e6b2f732` |
| 28 | `lemma` | [isIso_pi_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/isiso-pi-iff.md) | 282 | `result-track:79919b9047ea099ba18955c1c800a94e7b83b2b647f48201e07243c0458b1645` |
| 29 | `def` | [Pi.eqToEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-eqtoequivalence.md) | 294 | `declaration-track:1b644d64e7b4b9d94eeb001af7f1c3baddfa0a48b00cc10669cb56f3947db4fa` |
| 30 | `def` | [Pi.evalCompEqToEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-evalcompeqtoequivalencefunctor.md) | 299 | `declaration-track:e320a31b0a6b7c5cba5d887c4bd8f9faf168836fb78a2d7184b9fa205fbc00bf` |
| 31 | `def` | [Pi.eqToEquivalenceFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-eqtoequivalencefunctoriso.md) | 306 | `declaration-track:81e3398874c51075da2a50467f92514df3de41c7f9a155e883c1ad49002df91a` |
| 32 | `def` | [Pi.equivalenceOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-equivalenceofequiv.md) | 315 | `declaration-track:e37a26c1656685b7f8db6348eb785441d05b026d513a25d2a76e9c8c39a0c89b` |
| 33 | `def` | [Pi.optionEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-optionequivalence.md) | 332 | `declaration-track:71e28fde838b164ab0384af455f3f7510ed1b3c4a3fe107f1dd413784fe64479` |
| 34 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/pi-source-edition-6.md) | 352 | `declaration-track:89ae1741934e42073cf3732c086a5e3c9e85d2efc3b6e1341b952f5eafa9c141` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PiBasicPiCompEval.lean/declarations/instance.md) | 358 | `declaration-track:087667f756a5669a473e1cec25586916192d779448f587f2c40359509c7eebb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8270aecfdec290e30f328f91d374fe4d16a6ddf778fec0e18fe1397f7488812 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbc19c9a2720c6ac5073047d9997ef53520613f5fb58b8a7a49ea5d46b699993.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbc19c9a2720c6ac5073047d9997ef53520613f5fb58b8a7a49ea5d46b699993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
