# Verification target: Notation Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b6a74f13cf766a4df7762ef1557bf42e140bd0c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantdd279fb55ac3404f69b878055e0df12f0cb993cca55363e02dcfe28a288d7187.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b6a74f13cf766a4df7762ef1557bf42e140bd0c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantdd279fb55ac3404f69b878055e0df12f0cb993cca55363e02dcfe28a288d7187.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantdd279fb55ac3404f69b878055e0df12f0cb993cca55363e02dcfe28a288d7187.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Lemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HVAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/hvadd.md) | 48 | `declaration-track:d9052a293d3e9c303110886c3ccdde059663ca2dcb5d97060fb238c2f7d3253f` |
| 2 | `class` | [HSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/hsmul.md) | 65 | `declaration-track:cc216bd6b48d2cd227ed8b2b2e53bc2917fa9ca76ebcce9d2bf2666a1831a853` |
| 3 | `class` | [VAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/vadd.md) | 75 | `declaration-track:3865b5b6558f48f0093101624d87c1cc22363b16a6943be2f7c0eb14b90c0c2c` |
| 4 | `class` | [VSub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/vsub.md) | 81 | `declaration-track:3cfef2ed9cc3a0533b9964c66284850c3aac3034e2dcb335d3b04e6864e1647a` |
| 5 | `class` | [SMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/smul.md) | 88 | `declaration-track:03e49ed2e5cc7c8247226444c9ef501a75e5cc1adeaf1664bb9280ad10dfd8e0` |
| 6 | `macro_rules` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/macro-rules.md) | 130 | `declaration-track:5b9ee6c018cc26e6ec56091e0a2281acf1b3bfebe7296b18fefb417471c9df4c` |
| 7 | `instance` | [instHSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/insthsmul.md) | 139 | `declaration-track:a03a8aad4e512e88900d1ab0ab95df32fb49dcb0e0643ed0842bfe8cadedba1b` |
| 8 | `theorem` | [SMul.smul_eq_hSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/smul-smul-eq-hsmul.md) | 143 | `result-track:73fa49d7f25653f960f1cb7b2672d4c2625999a024e5eb3e9ead1d9527e8f1b2` |
| 9 | `class` | [Inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/inv.md) | 151 | `declaration-track:0fa6b0efd10db38fdf1870c143da94093c62b4bf64f0f7a40296bcf6d6614aa6` |
| 10 | `lemma` | [mul_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/mul-dite.md) | 165 | `result-track:fd2adb25ab4e7c8037f5a057b79363008dc269a01707b5f57b7609016bd971fe` |
| 11 | `lemma` | [mul_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/mul-ite.md) | 169 | `result-track:cea928d27df651aea2e5c67f8b1728b5e351295d875310a039456b628ea6ff9f` |
| 12 | `lemma` | [dite_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/dite-mul.md) | 172 | `result-track:26ee825cf5621ed7d9afa0737812972d8b9bb72ffb45aa2f463cab447da53b3f` |
| 13 | `lemma` | [ite_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/ite-mul.md) | 176 | `result-track:3f8db74ec990a75d448a8c16378fa25a17ef4b9636d6c4ea6daa41f39f837bd0` |
| 14 | `lemma` | [dite_mul_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/dite-mul-dite.md) | 186 | `result-track:7d24461444e4787a8685030ff1a289cc2d220a1ec589e8b7d37a8924a700eda0` |
| 15 | `lemma` | [ite_mul_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/ite-mul-ite.md) | 191 | `result-track:ad575bb08e4af73002a051c6b6a248887a18ff7d590811e9cb2ec54a1c58a070` |
| 16 | `lemma` | [div_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/div-dite.md) | 200 | `result-track:280f63faf360895d49028245a9cb6c94194b0afa6b7b6f690e43dcf2e188b312` |
| 17 | `lemma` | [div_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/div-ite.md) | 204 | `result-track:6eba307fc4632b7f50717533e056b057c7c149d70a66f38843096c16bbb5576f` |
| 18 | `lemma` | [dite_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/dite-div.md) | 207 | `result-track:e78d8748aa673fe8bfc6e9113ad0ca1bd837b0ac26de9d89e2c055ade7753fc7` |
| 19 | `lemma` | [ite_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/ite-div.md) | 211 | `result-track:5c03a0925afa3ac30fafa741419a2cf71425846b11e2e4c8315f189b1ca35bc5` |
| 20 | `lemma` | [dite_div_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/dite-div-dite.md) | 214 | `result-track:fb042ee2f662e92b9edab94054a1b80ab13ec6ef2f4faf707bb51fae70fc64fe` |
| 21 | `lemma` | [ite_div_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/ite-div-ite.md) | 219 | `result-track:8b390338c4499f19476431bfdb67d21d9a3308d6598ef2e3e02e78d19981c3aa` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 227 | `declaration-track:69c6585dd8594583874427a7024585ef16f854fe2e28c571c8fcef27a77cc9d6` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/instance.md) | 228 | `declaration-track:0d0397300f60630a1ccf2f085fad3b3cd6d151908f1b8c26fc853018abd1afea` |
| 24 | `theorem` | [Subsingleton.eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationDefsNamespaced.lean/declarations/subsingleton-eq-one.md) | 231 | `result-track:865528dcb18dc75965c7c5149604d5ee6e52e2e2d7ca482a527cc0b5379b303d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24299ebf2b95ba0ae44f3a3f55c4ab91e8d408ff5813f544af1c3e5ca07a7be1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantdd279fb55ac3404f69b878055e0df12f0cb993cca55363e02dcfe28a288d7187.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantdd279fb55ac3404f69b878055e0df12f0cb993cca55363e02dcfe28a288d7187.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
