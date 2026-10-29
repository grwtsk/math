# Verification target: Set Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5448e95b3248be252732f28e3c5f3da5dab907f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5448e95b3248be252732f28e3c5f3da5dab907f`.

Source path: `GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_one](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-one.md) | 33 | `result-track:02edb421e1a7cc163e59fcc6fc113dcc4b87a954575238bca813499766ed7303` |
| 2 | `theorem` | [Finite.mul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-mul.md) | 43 | `result-track:d21a3b7fe348f2c42b60ee54644f9ed47c35baf87fba66fb0eddc996c3c07c92` |
| 3 | `instance` | [fintypeMul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/fintypemul.md) | 48 | `declaration-track:c71364671abbdf9964ea601f367457001a5726da119bd5319ea74448cfe29546` |
| 4 | `instance` | [decidableMemMul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/decidablememmul.md) | 58 | `declaration-track:6c47705c7b92b96976f225325b88cbe438e697e84cecef6014122a343dc200df` |
| 5 | `instance` | [decidableMemPow](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/decidablemempow.md) | 62 | `declaration-track:afad3db671ed6435f1c85260a81a1ecc71b3d0b78cb79cadb346e3f88244ea68` |
| 6 | `theorem` | [Finite.smul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-smul.md) | 78 | `result-track:31f8ffc4f8e7e780fb780cec8afe21fce6bf66e8fc3cef6c825cb9f3d70ad544` |
| 7 | `theorem` | [Finite.smul_set](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-smul-set.md) | 88 | `result-track:5bcbbe0735e64edc1b742052cbb94213d66e8fddebd50d98dfcf3d543cd6190d` |
| 8 | `theorem` | [Infinite.of_smul_set](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/infinite-of-smul-set.md) | 92 | `result-track:bc73d286a5944e5d146cf7ce571a851e338d46119a1b9c4c523df77e7f65036d` |
| 9 | `theorem` | [Finite.vsub](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-vsub.md) | 101 | `result-track:43ac459c79b1f3c3ff28d3950efd4a832643cc4c4309cc13af1295c63c704e5c` |
| 10 | `lemma` | [finite_mul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-mul-source-edition-2.md) | 111 | `result-track:e88bed3547569e083e912c01e0d46bee455a88f98c445c98f5a3049ad59de134` |
| 11 | `lemma` | [infinite_mul](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/infinite-mul.md) | 115 | `result-track:fb2b821c54b93342103fa639379e69f681ddd9536388c4c7e5a7cde3637f6515` |
| 12 | `lemma` | [finite_inv](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-inv.md) | 123 | `result-track:87f1796c647bf31e61f0c256292c359f1d27601eeb3ee21c21bd27fe3a20a29d` |
| 13 | `lemma` | [infinite_inv](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/infinite-inv.md) | 126 | `result-track:b72e42d1bf06abf345dac7abcbede4b52c3c28028094bdaca9c20ab3d77641e2` |
| 14 | `lemma` | [Finite.div](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-div.md) | 135 | `result-track:31061cee07b440905be3ae8d134b438d9ef27b075a69b7c15558ccce745c93aa` |
| 15 | `instance` | [fintypeDiv](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/fintypediv.md) | 139 | `declaration-track:cf12988589d7a21ae8cf716b6452ced556a44e0292929925db728e1971745955` |
| 16 | `lemma` | [finite_div](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/finite-div-source-edition-2.md) | 149 | `result-track:40fe32eff42288511e7eebbed8431189f2d4914276bca2c6200651937430623e` |
| 17 | `lemma` | [infinite_div](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/infinite-div.md) | 153 | `result-track:84a55d58608382c510bb453e21d62aa6fd38008a281b2f31da2b232b6ce8850c` |
| 18 | `theorem` | [card_pow_eq_card_pow_card_univ](../../../../GroupTheoryAndGeneralizations/SetFiniteNamespaced.lean/declarations/card-pow-eq-card-pow-card-univ.md) | 167 | `result-track:162e6478b79d4b7aa1a21aff83a857d31b32f6f452dee5d5d87f004c205b474f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52f12c5cd2455bab06d9684de9d356ad1851232f9d35061617e58555231e7212 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean","GRWTSK/_verification/specifications/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
